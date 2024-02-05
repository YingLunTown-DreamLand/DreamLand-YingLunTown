package PlayerLocation

import (
	"DB"
	"General"
	"time"

	"github.com/elliotchance/orderedmap/v2"
)

// 描述玩家的名称
type PlayerName string

// 描述日期的时间戳，
// 只精确到日
type Datetime int64

// 描述一段时间内捕获到的多条日志信息
type FullLogs orderedmap.OrderedMap[Datetime, SingleDayLogs]

// 描述一天内捕获到的多个玩家的日志信息
type SingleDayLogs map[PlayerName]SinglePlayerLogs

// 描述单个玩家的多个日志信息
type SinglePlayerLogs struct {
	// 描述最后一次检查时该玩家的坐标及朝向信息
	LastInfoRecord *SingleLog
	// 描述坐标及朝向信息的链式变动日志
	PosChangeDetails []SingleLog
	// 描述 PosChangeDetails 的原有总数。
	// 此字段可能与 len(PosChangeDetails) 相同
	PosChangeDetailsSumCounts uint64
}

// 描述单个日志
type SingleLog struct {
	Time time.Time // 日志捕获时间
	Pos  PosInfo   // 该玩家的坐标信息
}

// 描述单个日志下单个玩家的坐标信息
type PosInfo struct {
	Dimension byte       // 玩家所处的维度
	Position  [3]float32 // 玩家的位置
	YRot      float32    // 玩家的偏航角
}

// 描述用于存储日志的数据库
type LogFile struct {
	// 数据库
	Database *DB.Database
	// 数据库的根存储桶的名称是日期(精确到日)的时间戳，
	// 此结构体用于将这些日期按时间顺序进行排序，
	// 以用作根存储桶上键的有序索引
	RootIndex struct {
		KeyName [][]byte    // 根存储桶的键名
		Time    []time.Time // 根存储桶键名的 Go 形式
	}
}

// 用于筛选日志数据的过滤器，
// 对应参数为空指针时筛选不生效
type Filter struct {
	StartTime     *time.Time     // 只筛选时间在此后的日志(含边界)
	EndTime       *time.Time     // 只筛选时间在此前的日志(含边界)
	Area          []General.Area // 只筛选位置在此区域内的玩家(含边界)
	ExcludePlayer []string       // 排除包含这些玩家的日志
	PlayerName    []string       // 只有当被记录者在此列时日志才会被筛选
}
