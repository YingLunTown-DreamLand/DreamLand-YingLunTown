package Example

import (
	PlayerLocation "AnalyzePlayerLogs/LegacyPlayerLocation"
	"General"
	Area "General/Area"
	"fmt"
	"time"
)

func LegacyPlayerLocation() {
	file, err := PlayerLocation.OpenLogFile("玩家位置")
	fmt.Println(err)
	start_time, _ := time.Parse("2006/01/02 15:04:05", "2006/01/01 00:00:00")
	end_time, _ := time.Parse("2006/01/02 15:04:05", "2024/03/21 15:58:00")
	res, err := file.ParseFullLogs(PlayerLocation.Filter{
		StartTime: &start_time,
		EndTime:   &end_time,
		Area: []General.Area{
			&Area.CircleArea{
				Dimension: 0,
				Center:    [2]float64{40421, 1526},
				Radius:    64,
			},
		},
		ExcludePlayer: []string{"永恒彡希望与光明", "HappyLove666"},
		PlayerName:    nil,
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
