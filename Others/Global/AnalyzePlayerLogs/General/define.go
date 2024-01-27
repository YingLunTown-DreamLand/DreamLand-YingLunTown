package General

// 一个接口实现。
// 所有区域筛选方法均通过此接口实现
type Area interface {
	CheckPass(pos [2]float64) (pass bool)
}

// 用于筛选一个圆形区域
type CircleArea struct {
	Center [2]float64 // 该区域的圆心
	Radius float64    // 该区域的半径
}

// 用于筛选一个矩形区域
type RectangleArea struct {
	BeginX float64 // 该区域 X 轴上的起点
	BeginZ float64 // 该区域 Z 轴上的起点
	EndX   float64 // 该区域 X 轴上的终点
	EndZ   float64 // 该区域 Z 轴上的终点
}
