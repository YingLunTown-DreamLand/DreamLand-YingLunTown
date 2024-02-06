package PlayerPosition

import (
	"bytes"
	"encoding/binary"
	"fmt"
)

// 将 pos_info 从二进制形式解码
func UnmarshalPosInfo(pos_info []byte) (
	result PosInfo,
	err error,
) {
	if pos_info == nil {
		return
	}
	// prepare
	{
		reader := bytes.NewBuffer(pos_info)
		// get reader
		if err = binary.Read(reader, binary.LittleEndian, &result.Dimension); err != nil {
			err = fmt.Errorf("Unmarshal: %v", err)
			return
		}
		if err = binary.Read(reader, binary.LittleEndian, &result.Position[0]); err != nil {
			err = fmt.Errorf("Unmarshal: %v", err)
			return
		}
		if err = binary.Read(reader, binary.LittleEndian, &result.Position[1]); err != nil {
			err = fmt.Errorf("Unmarshal: %v", err)
			return
		}
		if err = binary.Read(reader, binary.LittleEndian, &result.Position[2]); err != nil {
			err = fmt.Errorf("Unmarshal: %v", err)
			return
		}
		if err = binary.Read(reader, binary.LittleEndian, &result.YRot); err != nil {
			err = fmt.Errorf("Unmarshal: %v", err)
			return
		}
		// unmarshal data
	}
	// get reader and unmarshal
	return
	// return
}

// 将 single_log 从二进制形式解码
func UnmarshalSingleLog(single_log []byte) (
	result *SingleLog,
	err error,
) {
	if single_log == nil {
		return
	}
	result = &SingleLog{}
	// prepare
	if len(single_log) < 16 {
		return nil, fmt.Errorf("UnmarshalSingleLog: Incomplete single_log; single_log = %#v", single_log)
	}
	// check length
	if err = result.Time.UnmarshalBinary(single_log[0:15]); err != nil {
		return nil, fmt.Errorf("UnmarshalSingleLog: %v", err)
	}
	// decode time
	if result.Pos, err = UnmarshalPosInfo(single_log[15:]); err != nil {
		return nil, fmt.Errorf("UnmarshalSingleLog: %v", err)
	}
	// deocde pos info
	return
	// return
}
