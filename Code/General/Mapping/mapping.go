package Mapping

import (
	"encoding/hex"
)

// 初始化或重置 map
func (m *Mapping) Init() {
	m.contents = make(map[HexString]any)
}

// 将 key 放入 map 中
func (m *Mapping) Put(key []byte) {
	m.contents[HexString(hex.EncodeToString(key))] = struct{}{}
}

// 将 key 从 map 移除
func (m *Mapping) Delete(key []byte) {
	delete(m.contents, HexString(hex.EncodeToString(key)))
}

// 检验 map 中是否有 key
func (m *Mapping) HasKey(key []byte) (has bool) {
	return m.contents[HexString(hex.EncodeToString(key))] != nil
}

// 为 map 中的每一个 key 执行一次 Func 。
// 如果 function 返回错误，
// 则迭代将停止并将错误返回给调用者。
func (m *Mapping) ForEach(
	function func(key []byte) error,
) error {
	for key := range m.contents {
		result, _ := hex.DecodeString(string(key))
		err := function(result)
		if err != nil {
			return err
		}
	}
	return nil
}
