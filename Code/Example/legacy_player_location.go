package Example

import (
	lpl "AnalyzePlayerLogs/LegacyPlayerLocation"
	"General"
	"General/Area"
	"fmt"
	"time"
)

func LegacyPlayerLocation() {
	file, err := lpl.OpenLogFile("玩家位置")
	fmt.Println(err)
	start_time, _ := time.Parse("2006/01/02 15:04:05", "2006/01/01 00:00:00")
	end_time, _ := time.Parse("2006/01/02 15:04:05", "2025/12/15 00:00:00")
	res, err := file.ParseFullLogs(lpl.Filter{
		StartTime:   &start_time,
		EndTime:     &end_time,
		ExcludeArea: nil,
		Area: []General.Area{
			&Area.RectangleArea{
				Dimension: 0,
				BeginX:    40500,
				BeginZ:    1500,
				EndX:      40563,
				EndZ:      1563,
			},
		},
		ExcludePlayer: []string{"永恒彡希望与光明", "HappyLove666"},
		PlayerName:    []string{},
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
