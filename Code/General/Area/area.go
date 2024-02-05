package Area

// 检测 point 是否在 c 所指代的圆形区域内
func (c *CircleArea) CheckPass(point Point) (pass bool) {
	deltaX := point.Pos[0] - c.Center[0]
	deltaZ := point.Pos[1] - c.Center[1]
	return c.Dimension == point.Dimension && deltaX*deltaX+deltaZ*deltaZ <= c.Radius*c.Radius
}

// 检测 point 是否在 r 所指代的矩形区域内
func (r *RectangleArea) CheckPass(point Point) (pass bool) {
	matchX := r.BeginX <= point.Pos[0] && point.Pos[0] <= r.EndX
	matchY := r.BeginZ <= point.Pos[1] && point.Pos[1] <= r.EndZ
	return r.Dimension == point.Dimension && matchX && matchY
}
