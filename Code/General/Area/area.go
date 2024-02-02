package Area

// 检测 pos 是否在 c 所指代的圆形区域内
func (c *CircleArea) CheckPass(pos [2]float64) (pass bool) {
	deltaX := pos[0] - c.Center[0]
	deltaZ := pos[1] - c.Center[1]
	return deltaX*deltaX+deltaZ*deltaZ <= c.Radius*c.Radius
}

// 检测 pos 是否在 r 所指代的矩形区域内
func (r *RectangleArea) CheckPass(pos [2]float64) (pass bool) {
	return r.BeginX <= pos[0] && pos[0] <= r.EndX && r.BeginZ <= pos[1] && pos[1] <= r.EndZ
}
