package Area

// 描述一个点的位置
type Point struct {
	Dimension uint8      // 该处所在的维度
	Pos       [3]float64 // 该处的坐标
}

// 描述一个直圆柱区域
type CylinderArea struct {
	Dimension uint8   // 直圆柱所在的维度
	CenterX   float64 // 直圆柱俯视图对应圆的圆心的 X 坐标
	CenterZ   float64 // 直圆柱俯视图对应圆的圆心的 Z 坐标
	Radius    float64 // 直圆柱俯视图对应圆的半径
	BeginY    float64 // 直圆柱 Y 轴上的起点
	EndY      float64 // 直圆柱 Y 轴上的终点
}

// 描述一个长方体区域
type CuboidArea struct {
	Dimension uint8   // 长方体所在的维度
	BeginX    float64 // 长方体 X 轴上的起点
	BeginY    float64 // 长方体 Y 轴上的起点
	BeginZ    float64 // 长方体 Z 轴上的起点
	EndX      float64 // 长方体 X 轴上的终点
	EndY      float64 // 长方体 Y 轴上的终点
	EndZ      float64 // 长方体 Z 轴上的终点
}
