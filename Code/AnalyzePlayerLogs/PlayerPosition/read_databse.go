package PlayerPosition

import (
	"DB"
	"bytes"
	"encoding/binary"
	"fmt"
	"os"
	"slices"
	"time"
)

// 打开 path 处的数据库。
// 若数据库不存在，则将返回错误
func OpenDatabase(path string) (log_file *LogFile, err error) {
	states, err := os.Stat(path)
	switch {
	case err != nil:
		if os.IsNotExist(err) {
			return nil, fmt.Errorf("OpenDatabase: %s not found", path)
		}
		return nil, fmt.Errorf("OpenDatabase: %v", err)
	default:
		if states.IsDir() {
			return nil, fmt.Errorf("OpenDatabase: %s is a dir, not a database file", path)
		}
	}
	// 前置检查
	db, err := DB.OpenOrCreateDatabase(path)
	if err != nil {
		return nil, fmt.Errorf("OpenDatabase: %v", err)
	}
	// 打开数据库
	log_file = &LogFile{database: db}
	if err = log_file.InitRootIndex(); err != nil {
		return nil, fmt.Errorf("OpenDatabase: %v", err)
	}
	// 初始化根索引
	return
	// 返回值
}

// 初始化日志文件对于数据库的根索引
func (l *LogFile) InitRootIndex() error {
	origin_mapping := l.database.GetMapping()
	decode_mapping := make([]int64, len(origin_mapping))
	l.rootIndex = struct {
		KeyName [][]byte
		Time    []time.Time
	}{
		KeyName: make([][]byte, len(origin_mapping)),
		Time:    make([]time.Time, len(origin_mapping)),
	}
	// prepare
	for key, value := range origin_mapping {
		if err := binary.Read(
			bytes.NewBuffer(value),
			binary.LittleEndian,
			&decode_mapping[key],
		); err != nil {
			return fmt.Errorf("InitRootIndex: %v", err)
		}
	}
	slices.Sort(decode_mapping)
	// decode and sort
	for key, value := range decode_mapping {
		l.rootIndex.Time[key] = time.Unix(value, 0)
		buffer := bytes.NewBuffer([]byte{})
		err := binary.Write(buffer, binary.LittleEndian, value)
		if err != nil {
			return fmt.Errorf("InitRootIndex: %v", err)
		}
		l.rootIndex.KeyName[key] = buffer.Bytes()
	}
	// unmarshal to time.Time and encode to bytes
	return nil
	// return
}

// 安全地关闭已打开的数据库
func (l *LogFile) CloseDatabase() error {
	if l.database == nil {
		return fmt.Errorf("CloseDatabase: Database does not opened")
	}
	err := l.database.CloseDatabase()
	if err != nil {
		return fmt.Errorf("CloseDatabase: %v", err)
	}
	l.rootIndex = struct {
		KeyName [][]byte
		Time    []time.Time
	}{}
	return nil
}
