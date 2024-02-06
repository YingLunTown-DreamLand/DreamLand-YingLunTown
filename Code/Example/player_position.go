package Example

import (
	pp "AnalyzePlayerLogs/PlayerPosition"
	"fmt"
	"time"
)

func PlayerPosition() {
	file, err := pp.OpenDatabase("PlayerPosition.db")
	fmt.Println(err)
	start_time, _ := time.Parse("2006/01/02 15:04:05", "2006/01/01 00:00:00")
	end_time, _ := time.Parse("2006/01/02 15:04:05", "2024/03/21 15:58:00")
	res, err := file.GetFullLogs(pp.Filter{
		StartTime:     &start_time,
		EndTime:       &end_time,
		Area:          nil,
		ExcludePlayer: nil, // []pp.PlayerName{"永恒彡希望与光明", "HappyLove666"},
		PlayerName:    nil,
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
