package LegacyPlayerLocation

import (
	"bufio"
	"fmt"
	"os"
)

// 打开 path 处的日志
func OpenLogFile(path string) (log_file *LogFile, err error) {
	file, err := os.Open(path)
	if err != nil {
		return nil, fmt.Errorf("OpenFile: %v", err)
	}
	if file == nil {
		return nil, fmt.Errorf("OpenFile: Failed to open the target file because nil was get")
	}
	return &LogFile{
		file:    file,
		scanner: bufio.NewScanner(file),
	}, nil
}

// 关闭日志
func (l *LogFile) CloseFile() error {
	if l.file == nil {
		return fmt.Errorf("CloseFile: Log file does not opened")
	}
	err := l.file.Close()
	if err != nil {
		return fmt.Errorf("CloseFile: %v", err)
	}
	l.scanner = nil
	return nil
}

// 阅读下一行的内容
func (l *LogFile) ReadLine() (line string, err error) {
	if l.scanner == nil {
		return "", fmt.Errorf("ReadLine: File has been closed")
	}
	if l.scanner.Scan() {
		return l.scanner.Text(), nil
	}
	if err := l.scanner.Err(); err != nil {
		return "", fmt.Errorf("ReadLine: %v", err)
	}
	return "", nil
}
