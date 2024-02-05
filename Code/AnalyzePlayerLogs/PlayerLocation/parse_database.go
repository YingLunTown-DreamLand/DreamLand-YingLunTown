package PlayerLocation

import (
	"DB"
	"General/Area"
	"bytes"
	"encoding/binary"
	"fmt"
	"time"
)

// 从 sub_bucket 中取得对应玩家的多个日志信息。
// 此函数在返回前将会释放子存储桶 sub_bucket 。
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
	defer func() {
		err := sub_bucket.UseDown()
		if err != nil {
			panic(fmt.Sprintf("GetSinglePlayerLogs: %v", err))
		}
	}()
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
	result.PosChangeDetails = make([]SingleLog, result.PosChangeDetailsSumCounts)
	// decode pos_change_details_sum_counts and make index_mapping, pos_change_details
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
		for key, value := range index_mapping {
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
			if filter.Area != nil {
				need_include := false
				for _, value := range filter.Area {
					if value.CheckPass(Area.Point{
						Dimension: pos_info.Dimension,
						Pos: [2]float64{
							float64(pos_info.Position[0]),
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
			result.PosChangeDetails[key] = SingleLog{
				Time: log_create_time,
				Pos:  pos_info,
			}
			// submit the filter result
		}
		// set details
	}
	// decode pos_change_details
	return
	// return
}
