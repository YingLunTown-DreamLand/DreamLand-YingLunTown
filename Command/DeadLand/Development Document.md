# `define.mcfunction`
## `Scoreboard`
- `global:memory`
   - 隶属于 `外部实现`
   - 储存各种系统的 `临时变量` 并在下次开启服务器时统一销毁
- `dl:settings`
   - 记录 `DeadLand` 的相关设置
   - 此计分板上追踪的计分项是常量，即只能通过 `外部实现` 修改
- `Class::libdatabase [地皮数据库]`
   - `dl_libdb:landId`
      - 标识 `扫描器` 应当前往的 `地皮`
   - `dl_libdb:posx`
      - 标识 `扫描器` 要前往的 `X` 轴坐标 _[相对于 `libdatabase/requestNewScanner.mcfunction::Line 67` 的 `相对坐标` ]_
   - `dl_libdb:posy`
      - 标识 `扫描器` 当前的 `Y` 轴坐标
   - `dl_libdb:posz`
      - 标识 `扫描器` 要前往的 `Z` 轴坐标 _[相对于 `libdatabase/requestNewScanner.mcfunction::Line 67` 的 `相对坐标` ]_
   - `dl_libdb:reqId`
      - 标识 `扫描器` 的请求 `ID`
      - 它必须是唯一的，且通常为请求发起者的 `UID`
   - `dl_libdb:byte`
      - 标识 `扫描器` 当前读取到的 `uint4`
   - `dl_libdb:process`
      - 标识 `扫描器` 当前读取了多少个 `uint4`
   - `dl_libdb:math`

## `Fakeentity`
- `dl:settings[dl_libdb_size]`
   - 标识 `地皮数据库` 的长度和宽度
   - 单位为 `Block(方块)`
   - 隶属于 `常量`
- `dl:settings[_4096]`
   - 用于读入 `uint8` 时的辅助分数，且应该总为 `4096`
   - 隶属于 `常量`
- `dl:settings[_256]`
   - 用于读入 `uint8` 时的辅助分数，且应该总为 `256`
   - 隶属于 `常量`
- `dl:settings[_16]`
   - 用于读入 `uint8` 时的辅助分数，且应该总为 `16`
   - 隶属于 `常量`



# `main.mcfunction`
## `Description`

## `Install`

## `Start Condition`



# `libdatabase/requestNewScanner.mcfunction`
## `Func`
```go
type entity struct {
	TagList       []string
	ScoreBoardMap map[string]int32
	Pos           [3]float32
	Type          string
}

func readData() entity {
	var A entity = entity{
		TagList: []string{"dl_libdb:reqeustNewScanner"},
		ScoreBoardMap: map[string]int32{
			"dl_libdb:landId": Variable(), // dl_libdb:landId=1..20736; not used at this func
			"dl_libdb:reqId":  Variable(), // dl_libdb:reqId=1..65535; not used at this func
		},
		Type: "minecraft:armor_stand", // have been nerver checked
	}
	// A is input
	A.TagList = []string{
		"dl_libdb:scanner",
		"dl_libdb:scannerReadData",
	}
	A.Pos = [3]float32{
		Variable(),
		-64.0,
		Variable(),
	}
	// change value
	return A
	// return
}
```

## `Description`
- 初始化一个 `扫描器` ，使得其就绪以读取 `数据库` 中的数据

## `Install`
- 安装在 `命令区` 且循环执行，但 `红石控制`

## `Start Condition`
- 命令 `testfor @e[tag=dl_libdb:reqeustNewScanner,c=1]` 成功时

## `Tag`
- `dl_libdb:reqeustNewScanner`
   - 标识等待被初始化的 `扫描器` 列
- `dl_libdb:reqeustNewScanner_apiAccept`
   - 标识正在被 `API::libdatabase.requestNewScanner` 处理的 `扫描器`
   - 同时刻至多允许存在一个这样的 `扫描器`
- `dl_libdb:scannerNeedCeil`
- `dl_libdb:scanner`
   - 标识已就绪的 `扫描器`
- `dl_libdb:scannerReadData`
   - 标识需要读入一个 `uint16` 的 `扫描器`



# `libdatabase/readData.mcfunction`
## `Func`
```go
type entity struct {
	TagList       []string
	ScoreBoardMap map[string]int32
	Pos           [3]float32
	Type          string
}

func readData() entity {
	var A entity = entity{
		TagList: []string{
			"dl_libdb:scanner", // not used at this func
			"dl_libdb:scannerReadData",
		},
		ScoreBoardMap: map[string]int32{
			"dl_libdb:landId": Variable(), // dl_libdb:landId=1..20736; not used at this func
			"dl_libdb:reqId":  Variable(), // dl_libdb:reqId=1..65535; not used at this func
			"dl_libdb:posy":   Variable(), // dl_libdb:posy=1..65536
		},
		Pos: [3]float32{
			Variable(),
			Variable(),
			Variable(),
		},
		Type: "minecraft:armor_stand", // have been nerver checked
	}
	// A is input
	A.TagList = []string{
		"dl_libdb:scanner", // not used at this func
		"dl_libdb:scannerReadDataDown",
	}
	A.ScoreBoardMap["dl_libdb:math"] = Variable() // dl_libdb:math=1..65535
	A.ScoreBoardMap["dl_libdb:posy"]++
	A.Pos[1]++
	// change value
	return A
	// return
}
```

## `Description`
- 让 `扫描器` 读入下一个 `uint16` 的 `整数` ，整个过程会持续至少 `4 ticks` 的时间

## `Install`
- 安装在 `命令区` 且循环执行，但 `红石控制`

## `Start Condition`
- 命令 `testfor @e[tag=dl_libdb:scannerReadData,c=1]` 成功时

## `Tag`
- `dl_libdb:scannerReadDataDown`
   - 标识已读完一个 `uint16` 的 `扫描器`