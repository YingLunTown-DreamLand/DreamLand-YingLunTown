package General

import (
	area "General/Area"
)

// 描述一个区域
type Area interface {
	// 检查 point 是否在 Area 所描述的区域内
	CheckPass(point area.Point) (pass bool)
}
