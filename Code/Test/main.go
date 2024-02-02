package main

import (
	"AnalyzePlayerLogs/PlayerLocation"
	"General/Area"
	"fmt"
	"time"
)

func main() {
	file, err := PlayerLocation.OpenLogFile()
	fmt.Println(err)
	start_time, _ := time.Parse("2006/01/02 15:04:05", "2023/12/01 00:00:00")
	end_time, _ := time.Parse("2006/01/02 15:04:05", "2024/01/21 15:58:00")
	res, err := file.ParseFullLogs(PlayerLocation.Filter{
		StartTime: &start_time,
		EndTime:   &end_time,
		Area: &Area.CircleArea{
			Center: [2]float64{40228, 2320},
			Radius: 64,
		},
		ExcludePlayer: []string{"永恒彡希望与光明"},
		PlayerName:    []string{"冰川超级杀手"},
	})
	fmt.Println(err)
	for _, value := range res {
		fmt.Println(value.Time)
		for _, v := range value.PosInfo {
			fmt.Printf("\t%s at (%v,%v,%v)\n", v.PlayerName, v.PlayerPosition[0], v.PlayerPosition[1], v.PlayerPosition[2])
		}
	}
	err = file.CloseFile()
	fmt.Println(err)
}
