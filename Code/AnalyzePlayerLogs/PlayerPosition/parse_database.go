package PlayerPosition

import (
	"DB"
	"General/Area"
	"bytes"
	"encoding/binary"
	"fmt"
	"time"

	"github.com/elliotchance/orderedmap/v2"
)

// 从 sub_bucket 中取得对应玩家的多个日志信息。
// filter 指代所使用的数据过滤器
func (l *LogFile) GetSinglePlayerLogs(
	sub_bucket *DB.Bucket,
	filter Filter,
) (
	result *SinglePlayerLogs,
	err error,
) {
	var index_mapping [][]byte
	result = &SinglePlayerLogs{}
	if sub_bucket == nil {
		return nil, nil
	}
	// prepare
	last_info_record := sub_bucket.GetDataByKey([]byte("last_info_record"))
	if result.LastInfoRecord, err = UnmarshalSingleLog(last_info_record); err != nil {
		return nil, fmt.Errorf("GetSinglePlayerLogs: %v", err)
	}
	// decode last_info_record
	sum_counts := sub_bucket.GetDataByKey([]byte("pos_change_details_sum_counts"))
	if sum_counts != nil {
		if err = binary.Read(
			bytes.NewBuffer(sum_counts),
			binary.LittleEndian,
			&result.PosChangeDetailsSumCounts,
		); err != nil {
			return nil, fmt.Errorf("GetSinglePlayerLogs: %v", err)
		}
	}
	index_mapping = make([][]byte, result.PosChangeDetailsSumCounts)
	// decode pos_change_details_sum_counts and make index_mapping
	{
		index := sub_bucket.GetSubBucketByName([]byte("pos_change_details_index_mapping"))
		if index == nil {
			return
		}
		// get and check sub bucket
		for i := uint64(0); i < result.PosChangeDetailsSumCounts; i++ {
			buffer := bytes.NewBuffer([]byte{})
			if err = binary.Write(buffer, binary.LittleEndian, i+1); err != nil {
				return nil, fmt.Errorf("GetSinglePlayerLogs: %v", err)
			}
			key := index.GetDataByKey(buffer.Bytes())
			if key == nil {
				index_mapping[i] = make([]byte, 0)
				continue
			}
			index_mapping[i] = key
		}
		// get key name
	}
	// decode pos_change_details_index_mapping
	{
		details := sub_bucket.GetSubBucketByName([]byte("pos_change_details"))
		if details == nil {
			return
		}
		// get and check sub bucket
		for _, value := range index_mapping {
			log_create_time := time.Time{}
			if err = log_create_time.UnmarshalBinary(value); err != nil {
				return nil, fmt.Errorf("GetSinglePlayerLogs: %v", err)
			}
			pos_info, err := UnmarshalPosInfo(details.GetDataByKey(value))
			if err != nil {
				return nil, fmt.Errorf("GetSinglePlayerLogs: %v", err)
			}
			// get log_create_time and pos_info
			if filter.StartTime != nil && filter.EndTime != nil && (!log_create_time.After(
				filter.StartTime.Add(-1)) || !log_create_time.Before(filter.EndTime.Add(1))) {
				continue
			}
			if len(filter.ExcludeArea) > 0 {
				need_exclude := false
				for _, value := range filter.ExcludeArea {
					if value == nil {
						continue
					}
					if value.CheckPass(Area.Point{
						Dimension: pos_info.Dimension,
						Pos: [3]float64{
							float64(pos_info.Position[0]),
							float64(pos_info.Position[1]),
							float64(pos_info.Position[2]),
						},
					}) {
						need_exclude = true
						break
					}
				}
				if need_exclude {
					continue
				}
			}
			if len(filter.Area) > 0 {
				need_include := false
				for _, value := range filter.Area {
					if value == nil {
						continue
					}
					if value.CheckPass(Area.Point{
						Dimension: pos_info.Dimension,
						Pos: [3]float64{
							float64(pos_info.Position[0]),
							float64(pos_info.Position[1]),
							float64(pos_info.Position[2]),
						},
					}) {
						need_include = true
						break
					}
				}
				if !need_include {
					continue
				}
			}
			// check log_create_time and pos_info
			result.PosChangeDetails = append(
				result.PosChangeDetails,
				SingleLog{
					Time: log_create_time,
					Pos:  pos_info,
				},
			)
			// submit the filter result
		}
		// set details
	}
	// decode pos_change_details
	return
	// return
}

// 从 bucket 中取得多个玩家的日志信息。
// filter 指代所使用的数据过滤器。
// 在返回值之前，bucket 将被自动释放。
func (l *LogFile) GetSingleDayLogs(
	bucket *DB.Bucket,
	filter Filter,
) (
	result *SingleDayLogs,
	err error,
) {
	result = &SingleDayLogs{}
	if bucket == nil {
		return nil, nil
	}
	defer func() {
		err := bucket.UseDown()
		if err != nil {
			panic(fmt.Sprintf("GetSingleDayLogs: %v", err))
		}
	}()
	// prepare
	for _, value := range bucket.GetMapping() {
		player_name := PlayerName(value)
		if len(filter.ExcludePlayer) > 0 {
			need_exclude := false
			for _, v := range filter.ExcludePlayer {
				if player_name == v {
					need_exclude = true
					break
				}
			}
			if need_exclude {
				continue
			}
		}
		if len(filter.PlayerName) > 0 {
			need_include := false
			for _, v := range filter.PlayerName {
				if player_name == v {
					need_include = true
					break
				}
			}
			if !need_include {
				continue
			}
		}
		// get and check player name
		bucket_to_player := bucket.GetSubBucketByName(value)
		player_info, err := l.GetSinglePlayerLogs(bucket_to_player, filter)
		if err != nil {
			return nil, fmt.Errorf("GetSingleDayLogs: %v", err)
		}
		if len(player_info.PosChangeDetails) == 0 {
			continue
		}
		(*result)[player_name] = player_info
		// get and set single player logs
	}
	// range all the player and get each single player logs
	return
	// return
}

// 从数据库中取得一段时间内的多条日志信息。
// filter 指代所使用的数据过滤器
func (l *LogFile) GetFullLogs(filter Filter) (
	result FullLogs,
	err error,
) {
	res := orderedmap.NewOrderedMap[Datetime, *SingleDayLogs]()
	if l.database == nil {
		return FullLogs{}, fmt.Errorf("GetFullLogs: l.Database got is nil")
	}
	// prepare
	for key, value := range l.rootIndex.KeyName {
		date_time := l.rootIndex.Time[key]
		if filter.StartTime != nil && filter.EndTime != nil {
			startYear, startMonth, startDay := filter.StartTime.Date()
			endYear, endMonth, endDay := filter.EndTime.Date()
			startDate := time.Date(startYear, startMonth, startDay, 0, 0, 0, 0, time.Local)
			endDate := time.Date(endYear, endMonth, endDay, 0, 0, 0, 0, time.Local).Add(time.Hour * 24)
			if !date_time.After(startDate.Add(-1)) || !date_time.Before(endDate.Add(1)) {
				continue
			}
		}
		// check data time
		bucket_to_single_day := l.database.GetBucketByName(value)
		single_day_logs, err := l.GetSingleDayLogs(bucket_to_single_day, filter)
		if err != nil {
			return FullLogs{}, fmt.Errorf("GetFullLogs: %v", err)
		}
		if single_day_logs == nil || len(*single_day_logs) == 0 {
			continue
		}
		res.Set(Datetime(date_time), single_day_logs)
		// get and set logs for the single day
	}
	// range all the days and get each logs of the day
	return FullLogs{res}, nil
	// return
}
