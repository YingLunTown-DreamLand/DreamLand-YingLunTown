package Example

import (
	pp "AnalyzePlayerLogs/PlayerPosition"
	"fmt"
	"time"
)

func PlayerPosition() {
	file, err := pp.OpenDatabase("PlayerPosition.db")
	fmt.Println(err)
	start_time, _ := time.ParseInLocation("2006/01/02 15:04:05", "2024/07/14 13:25:00", time.Local)
	end_time, _ := time.ParseInLocation("2006/01/02 15:04:05", "2024/07/14 14:00:00", time.Local)
	res, err := file.GetFullLogs(pp.Filter{
		StartTime: &start_time,
		EndTime:   &end_time,
		/*
			Area: []General.Area{
				&Area.CylinderArea{
					Dimension: 0,
					CenterX:   18899,
					CenterZ:   20317,
					Radius:    10,
					BeginY:    -64,
					EndY:      512,
				},
			},
		*/
		ExcludePlayer: []pp.PlayerName{"永恒彡希望与光明", "HappyLove666", "FBot_cef505"},
		PlayerName:    []pp.PlayerName{"两个达步溜"},
	})
	fmt.Println(err)
	for el := res.Front(); el != nil; el = el.Next() {
		fmt.Println(time.Time(el.Key))
		if value := el.Value; value != nil {
			for key, val := range *value {
				fmt.Printf("	%v\n", key)
				fmt.Printf("		PosChangeDetailsSumCounts: %d\n", val.PosChangeDetailsSumCounts)
				if val.LastInfoRecord == nil {
					fmt.Println("		LastInfoRecord: nil")
				} else {
					fmt.Printf(
						"		LastInfoRecord: [%v] Dimension: %d, Position: (%v,%v,%v), YRot: %v\n",
						val.LastInfoRecord.Time,
						val.LastInfoRecord.Pos.Dimension,
						val.LastInfoRecord.Pos.Position[0],
						val.LastInfoRecord.Pos.Position[1],
						val.LastInfoRecord.Pos.Position[2],
						val.LastInfoRecord.Pos.YRot,
					)
				}
				if len(val.PosChangeDetails) > 0 {
					fmt.Println("		PosChangeDetails:")
				}
				for _, v := range val.PosChangeDetails {
					fmt.Printf(
						"			[%v] Dimension: %d, Position: (%v,%v,%v), YRot: %v\n",
						v.Time,
						v.Pos.Dimension,
						v.Pos.Position[0],
						v.Pos.Position[1],
						v.Pos.Position[2],
						v.Pos.YRot,
					)
				}
			}
		}
	}
	err = file.CloseDatabase()
	fmt.Println(err)
}
