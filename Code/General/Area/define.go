package Area

// 描述一个点的位置
type Point struct {
	Dimension uint8      // 该处所在的维度
	Pos       [2]float64 // 该处的坐标
}

// 描述一个圆形区域
type CircleArea struct {
	Dimension uint8      // 该区域所在的维度
	Center    [2]float64 // 该区域的圆心
	Radius    float64    // 该区域的半径
}

// 描述一个矩形区域
type RectangleArea struct {
	Dimension uint8   // 该区域所在的维度
	BeginX    float64 // 该区域 X 轴上的起点
	BeginZ    float64 // 该区域 Z 轴上的起点
	EndX      float64 // 该区域 X 轴上的终点
	EndZ      float64 // 该区域 Z 轴上的终点
}
