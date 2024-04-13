package Mapping

import (
	"General/SyncMap"
	"encoding/hex"
	"fmt"
)

// 初始化或重置 map
func (m *Mapping) Reset() {
	m.contents = SyncMap.Map[HexString, struct{}]{}
}

// 将 key 放入 map 中
func (m *Mapping) Put(key []byte) {
	m.contents.Store(HexString(hex.EncodeToString(key)), struct{}{})
}

// 将 key 从 map 移除
func (m *Mapping) Delete(key []byte) {
	m.contents.Delete(HexString(hex.EncodeToString(key)))
}

// 检验 map 中是否有 key
func (m *Mapping) HasKey(key []byte) (has bool) {
	_, has = m.contents.Load(HexString(hex.EncodeToString(key)))
	return
}

// 为 map 中的每一个 key 执行一次 Func 。
// 如果 function 返回错误，
// 则迭代将停止并将错误返回给调用者。
func (m *Mapping) ForEach(
	function func(key []byte) error,
) (err error) {
	m.contents.Range(func(key HexString, value struct{}) bool {
		result, _ := hex.DecodeString(string(key))
		err = function(result)
		return err == nil
	})
	if err != nil {
		return fmt.Errorf("ForEach: %v", err)
	}
	return nil
}
