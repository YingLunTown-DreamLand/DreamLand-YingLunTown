package Area

// 检测 point 是否在 c 所指代的直圆柱区域内
func (c *CylinderArea) CheckPass(point Point) (pass bool) {
	if matchY := c.BeginY <= point.Pos[1] && point.Pos[1] <= c.EndY; !matchY {
		return false
	}
	deltaX := point.Pos[0] - c.CenterX
	deltaZ := point.Pos[2] - c.CenterZ
	return c.Dimension == point.Dimension && deltaX*deltaX+deltaZ*deltaZ <= c.Radius*c.Radius
}

// 检测 point 是否在 r 所指代的长方体区域内
func (r *CuboidArea) CheckPass(point Point) (pass bool) {
	matchX := r.BeginX <= point.Pos[0] && point.Pos[0] <= r.EndX
	matchY := r.BeginY <= point.Pos[1] && point.Pos[1] <= r.EndY
	matchZ := r.BeginZ <= point.Pos[2] && point.Pos[2] <= r.EndZ
	return r.Dimension == point.Dimension && matchX && matchY && matchZ
}
