# `define.mcfunction`
## `Scoreboard`
- `menu:settings`
   - 用于记录常量，且这些常量会决定菜单的设置
- `menu:refreshTime`
   - 用于记录距离菜单下次刷新的时间
   - 本系统的使用者将会被分配分数
   - 此计分板上追踪的计分项的分数不为常量
- `menu:waitingTime`
   - 玩家在确认菜单选项或开启菜单时，会被重置 `xBot` 的朝向，但我们需要给玩家的 `客户端` 一段缓和期以确认朝向变化，此计分板便充当一个倒计时去等待 `客户端` 的确认
   - 当菜单使用者在该计分板上的分数大于 `0` 时，本系统不会受理此菜单使用者的任何请求
   - 此计分板上追踪的计分项的分数不为常量
- `menu:showContext`
   - 用于记录菜单显示内容所对应的编号
   - 本系统的使用者将会被分配分数
   - 此计分板上追踪的计分项的分数不为常量

## `Fakeentity`
- `menu:settings[refreshTime]`
   - 用于记录刷新菜单的频率，单位为 `Tick`
   - 为常量，默认值为 `14`
   - 只能由外部实现修改
- `menu:settings[waitingTime]`
   - 玩家在确认菜单选项或开启菜单时，会被重置 `xBot` 的朝向，但我们需要给玩家的 `客户端` 一段缓和期以确认朝向变化，该计分项所记录的分数便是缓和期的时间长度
   - 为常量，默认值为 `5`
   - 只能由外部实现修改



# `main.mcfunction`



# `initPlayerRequest.mcfunction`
## `Description`
   - 当一个玩家请求开启菜单时会调用当前函数

## `Install`
   - 安装在 `命令区` 且循环执行，但 `红石控制`

## `Start Condition`
   - 命令 `testfor @e[type=minecraft:snowball,c=1]` 成功时

## `Tag`
- `snowballMenu:initPlayerRequest_test`
- `snowballMenu:initPlayerRequest_testPass`
- `snowballMenu:using`
   - 本系统的使用者将会被分配此标签
   - 此标签在菜单被使用时始终存在



# `actionbar/main.mcfunction`
## `Description`
   - 当需要向玩家展示菜单内容时会调用此函数

## `Install`
   - 安装在 `命令区` 且循环执行，但 `红石控制`

## `Start Condition`
   - 命令 `testfor @a[tag=snowballMenu:using,scores={menu:showContext=..2147483647,menu:refreshTime=..0}]` 成功时



# `actionbar/sub.mcfunction`
## `Description`
   - 当需要向玩家展示子菜单内容时会调用此函数

## `Install`
   - 安装在 `命令区` 且跟随本系统的主函数循环执行

## `Scoreboard`
- `AddProtectCount`
   - 一个外部实现，用于记录分数追踪者(玩家)还可以添加多少个 `白名单生物`
   - 此计分板上追踪的计分项的分数不为常量

## `Tag`
- `Global:ProtectEntityFromClean`
   - 一个外部实现，用于标识一个实体是否是 `白名单生物`