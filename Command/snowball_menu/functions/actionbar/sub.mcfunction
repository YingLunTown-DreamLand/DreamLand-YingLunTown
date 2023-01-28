# actionbar/main() -> None

# Description
# 当需要向玩家展示子菜单内容时会调用此函数

# Install
# in the commandblockplace, as a repeating function with main.mcfunction



execute @a[tag=snowballMenu:using,scores={menu:showContext=9}] ~ ~ ~ titleraw @s actionbar {"rawtext":[{"text":"§l§f⑦§b添加范围内生物到白名单生物列中\n§a以下生物可选§f：\n§b"},{"selector":"@e[family=mob,tag=!Global:ProtectEntityFromClean,r=5,c=3,type=!armor_stand]"},{"text":"\n§a您当前还可以添加 §b"},{"score":{"objective":"AddProtectCount","name":"@s"}},{"text":" §a个生物\n到白名单生物列表\n§7抬头到最高点确定添加\n低头至最低点返回上一级内容\n§r\n§r"}]}
# 显示子菜单内容