package LegacyPlayerLocation

import (
	"General/StringReader"
	"fmt"
	"strconv"
	"time"
)

// 从 reader 解析单个玩家的坐标信息
func (l *LogFile) ParseSinglePosInfo(
	reader *StringReader.StringReader,
) (
	res *SinglePosInfo,
	err error,
) {
	res = &SinglePosInfo{}
	// prepare
	reader.JumpSpace()
	res.PlayerName = reader.ParseString()
	// parse player name
	for i := 0; i < 3; i++ {
		reader.JumpSpace()
		num_origin, _ := reader.ParseNumber(true)
		num, err := strconv.ParseFloat(num_origin, 64)
		if err != nil {
			return nil, fmt.Errorf("ParseSinglePosInfo: Failed to parse number %s in the location %d", num_origin, i)
		}
		res.PlayerPosition[i] = num
	}
	// parse player position
	return
	// return
}

// 从 reader 解析多个玩家的坐标信息
func (l *LogFile) ParsePosInfo(
	reader *StringReader.StringReader,
) (
	res []SinglePosInfo,
	err error,
) {
	for {
		reader.JumpSpace()
		switch reader.Next(false) {
		case "{":
		case "]":
			return
		}
		// test start token
		reader.JumpSpace()
		if !reader.ParseBool() {
			for {
				if current := reader.Next(false); current == "}" {
					break
				}
			}
			continue
		}
		// parse bool
		reader.JumpSpace()
		reader.ParseString()
		// parese messages
		reader.JumpSpace()
		if next_token := reader.Next(false); next_token != "[" {
			return nil, fmt.Errorf("ParsePosInfo: Unexpected token %s was found", next_token)
		}
		single_pos_info, err := l.ParseSinglePosInfo(reader)
		if err != nil {
			return nil, fmt.Errorf("ParsePosInfo: %v", err)
		}
		res = append(res, *single_pos_info)
		// parse single position information
		reader.JumpSpace()
		if character := reader.Sentence(2); character != "]}" {
			return nil, fmt.Errorf("ParsePosInfo: Unexpected character %s was found", character)
		}
		// test end token
	}
}

// 从 str 解析单个日志所捕获到的坐标信息。
// filter 当次解析时所使用的数据过滤器
func (l *LogFile) ParseSingleLog(
	str string,
	filter Filter,
) (
	res *SingleLog,
	err error,
) {
	res = &SingleLog{}
	reader := StringReader.NewStringReader(&str)
	// prepare
	{
		reader.JumpSpace()
		date_time := reader.ParseString()
		reader.JumpSpace()
		exact_time := reader.ParseString()
		res.Time, err = time.Parse("2006/01/02 15:04:05", fmt.Sprintf("%v %v", date_time, exact_time))
		if err != nil {
			return nil, fmt.Errorf("ParseSingleLog: %v", err)
		}
		// parse time
		if filter.StartTime != nil && filter.EndTime != nil && (!res.Time.After(
			filter.StartTime.Add(-1)) || !res.Time.Before(filter.EndTime.Add(1))) {
			return nil, nil
		}
		// check time
	}
	// time
	{
		reader.JumpSpace()
		if next_token := reader.Next(false); next_token != "[" {
			return nil, fmt.Errorf("ParseSingleLog: Unexpected token %s was found", next_token)
		}
		reader.JumpSpace()
		older := reader.Pointer()
		for {
			if reader.Next(false) == "]" {
				reader.SetPtr(reader.Pointer() - 1)
				break
			}
		}
		res.Command = reader.CutSentence(older)
		reader.SetPtr(reader.Pointer() + 1)
	}
	// command
	{
		reader.JumpSpace()
		if reader.Sentence(11) != "=>output:[[" {
			return
		}
		res.PosInfo, err = l.ParsePosInfo(reader)
		if err != nil {
			return nil, fmt.Errorf("ParseSingleLog: %v", err)
		}
		// parse position information
		if len(filter.ExcludePlayer) > 0 {
			pos_info := []SinglePosInfo{}
			for _, value := range res.PosInfo {
				need_exclude := false
				for _, v := range filter.ExcludePlayer {
					if value.PlayerName == v {
						need_exclude = true
						break
					}
				}
				if !need_exclude {
					pos_info = append(pos_info, value)
				}
			}
			if len(pos_info) == 0 {
				return nil, nil
			}
			res.PosInfo = pos_info
		}
		// check player name of position information - first check
		if len(filter.PlayerName) > 0 {
			pos_info := []SinglePosInfo{}
			for _, value := range res.PosInfo {
				need_include := false
				for _, v := range filter.PlayerName {
					if value.PlayerName == v {
						need_include = true
						break
					}
				}
				if need_include {
					pos_info = append(pos_info, value)
				}
			}
			if len(pos_info) == 0 {
				return nil, nil
			}
			res.PosInfo = pos_info
		}
		// check player name of position information - second check
		if filter.Area != nil {
			pos_info := []SinglePosInfo{}
			for _, value := range res.PosInfo {
				if filter.Area.CheckPass([2]float64{value.PlayerPosition[0], value.PlayerPosition[2]}) {
					pos_info = append(pos_info, value)
				}
			}
			if len(pos_info) == 0 {
				return nil, nil
			}
			res.PosInfo = pos_info
		}
		// check player position of position information
	}
	// position information
	reader.JumpSpace()
	if next_token := reader.Next(false); next_token != "]" {
		return nil, fmt.Errorf("ParseSingleLog: Unexpected token %s was found", next_token)
	}
	// test end token
	return
	// return
}

// 从 l 解析整个日志所捕获到的坐标信息。
// filter 当次解析时所使用的数据过滤器
func (l *LogFile) ParseFullLogs(filter Filter) (
	res FullLogs,
	err error,
) {
	for {
		line, err := l.ReadLine()
		if err != nil {
			return nil, fmt.Errorf("ParseFullLogs: %v", err)
		}
		if len(line) == 0 {
			return res, nil
		}
		// get next line
		result, err := l.ParseSingleLog(line, filter)
		if err != nil {
			return nil, fmt.Errorf("ParseFullLogs: %v", err)
		}
		if result != nil {
			res = append(res, *result)
		}
		// parse single log
	}
}
