package Area

// 描述一个区域
type Area interface {
	// 检查 pos 是否在 Area 所描述的区域内
	CheckPass(pos [2]float64) (pass bool)
}
