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
      - 标识 `扫描器` 要前往的 `X` 轴坐标 _[相对于 `libdatabase/requestNewScanner.mcfunction::Line 47` 的 `相对坐标` ]_
   - `dl_libdb:posy`
      - 标识 `扫描器` 当前的 `Y` 轴坐标
   - `dl_libdb:posz`
      - 标识 `扫描器` 要前往的 `Z` 轴坐标 _[相对于 `libdatabase/requestNewScanner.mcfunction::Line 47` 的 `相对坐标` ]_
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
```
libdatabase/requestNewScanner(
   @e[
         tag=dl_libdb:reqeustNewScanner,
         scores={dl_libdb:landId=1..},
         type=armor_stand
   ]
) -> {
   @e[tag=dl_libdb:scanner,type=armor_stand]
   posxMayChanged
   posyMayChangedInto -64.0(float32)
   poszMayChanged
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



# `libdatabase/readData.mcfunction`