package Mapping

// 指代 []byte 的 hex 形式
type HexString string

// 描述一个以 HexString 为键的 Map 。
// 其值应当始终使用空结构体 struct{}
type Mapping struct {
	contents map[HexString]any
}
