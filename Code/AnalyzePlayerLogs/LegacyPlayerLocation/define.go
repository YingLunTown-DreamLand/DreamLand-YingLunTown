package LegacyPlayerLocation

import (
	Area "General"
	"bufio"
	"os"
	"time"
)

// 描述日志文件
type LogFile struct {
	file    *os.File       // 指代已打开的日志文件
	scanner *bufio.Scanner // 用于阅读日志的行扫描器
}

// 描述单个坐标
type Position [3]float64

// 描述单个玩家的坐标信息
type SinglePosInfo struct {
	PlayerName     string   // 该玩家的名称
	PlayerPosition Position // 该玩家的位置
}

// 描述多个日志捕获到的坐标信息
type FullLogs []SingleLog

// 描述单个日志所捕获到的坐标信息
type SingleLog struct {
	Time    time.Time       // 当前日志的产生时间
	Command string          // 产生该日志的所执行的命令
	PosInfo []SinglePosInfo // 日志捕获到的多个玩家的坐标信息
}

// 用于筛选日志数据的过滤器，
// 对应参数为空指针时筛选不生效
type Filter struct {
	StartTime     *time.Time // 只筛选时间在此后的日志(含边界)
	EndTime       *time.Time // 只筛选时间在此前的日志(含边界)
	Area          Area.Area  // 只筛选位置在此区域内的玩家(含边界)
	ExcludePlayer []string   // 排除包含这些玩家的日志
	PlayerName    []string   // 只有当被记录者在此列时日志才会被筛选
}
