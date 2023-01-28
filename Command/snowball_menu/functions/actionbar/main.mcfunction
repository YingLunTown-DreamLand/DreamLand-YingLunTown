# actionbar/main() -> None

# Description
# 当需要向玩家展示菜单内容时会调用此函数

# Install
# in the commandblockplace, as a repeating function but controled by redstone block

# Start Condition
# testfor @a[tag=snowballMenu:using,scores={menu:showContext=..2147483647,menu:refreshTime=..0}] == Success



execute @a[tag=snowballMenu:using,scores={menu:showContext=0,menu:refreshTime=..0}] ~ ~ ~ titleraw @s actionbar {"rawtext":[{"text":"§l§e幻§6想§d乡§f · §7雪球菜单\n§f①改变游戏模式为生存模式\n②获取雪球\n③设置当前位置为出生点\n④返回出生点\n⑤保存当前位置\n⑥回到保存位置\n⑦添加范围内生物到白名单生物列中\n§7扔出雪球切换选项\n抬头到最高点确定选项\n低头至最低点退出本菜单\n§r\n§r\n§r\n§r\n§r\n§r"}]}
execute @a[tag=snowballMenu:using,scores={menu:showContext=1,menu:refreshTime=..0}] ~ ~ ~ titleraw @s actionbar {"rawtext":[{"text":"§l§e幻§6想§d乡§f · §7雪球菜单\n§f①§b改变游戏模式为生存模式\n§f②获取雪球\n③设置当前位置为出生点\n④返回出生点\n⑤保存当前位置\n⑥回到保存位置\n⑦添加范围内生物到白名单生物列中\n§7扔出雪球切换选项\n抬头到最高点确定选项\n低头至最低点退出本菜单\n§r\n§r\n§r\n§r\n§r\n§r"}]}
execute @a[tag=snowballMenu:using,scores={menu:showContext=2,menu:refreshTime=..0}] ~ ~ ~ titleraw @s actionbar {"rawtext":[{"text":"§l§e幻§6想§d乡§f · §7雪球菜单\n§f①改变游戏模式为生存模式\n②§b获取雪球\n§f③设置当前位置为出生点\n④返回出生点\n⑤保存当前位置\n⑥回到保存位置\n⑦添加范围内生物到白名单生物列中\n§7扔出雪球切换选项\n抬头到最高点确定选项\n低头至最低点退出本菜单\n§r\n§r\n§r\n§r\n§r\n§r"}]}
execute @a[tag=snowballMenu:using,scores={menu:showContext=3,menu:refreshTime=..0}] ~ ~ ~ titleraw @s actionbar {"rawtext":[{"text":"§l§e幻§6想§d乡§f · §7雪球菜单\n§f①改变游戏模式为生存模式\n②获取雪球\n③§b设置当前位置为出生点\n§f④返回出生点\n⑤保存当前位置\n⑥回到保存位置\n⑦添加范围内生物到白名单生物列中\n§7扔出雪球切换选项\n抬头到最高点确定选项\n低头至最低点退出本菜单\n§r\n§r\n§r\n§r\n§r\n§r"}]}
execute @a[tag=snowballMenu:using,scores={menu:showContext=4,menu:refreshTime=..0}] ~ ~ ~ titleraw @s actionbar {"rawtext":[{"text":"§l§e幻§6想§d乡§f · §7雪球菜单\n§f①改变游戏模式为生存模式\n②获取雪球\n③设置当前位置为出生点\n④§b返回出生点\n§f⑤保存当前位置\n⑥回到保存位置\n⑦添加范围内生物到白名单生物列中\n§7扔出雪球切换选项\n抬头到最高点确定选项\n低头至最低点退出本菜单\n§r\n§r\n§r\n§r\n§r\n§r"}]}
execute @a[tag=snowballMenu:using,scores={menu:showContext=5,menu:refreshTime=..0}] ~ ~ ~ titleraw @s actionbar {"rawtext":[{"text":"§l§e幻§6想§d乡§f · §7雪球菜单\n§f①改变游戏模式为生存模式\n②获取雪球\n③设置当前位置为出生点\n④返回出生点\n⑤§b保存当前位置\n§f⑥回到保存位置\n⑦添加范围内生物到白名单生物列中\n§7扔出雪球切换选项\n抬头到最高点确定选项\n低头至最低点退出本菜单\n§r\n§r\n§r\n§r\n§r\n§r"}]}
execute @a[tag=snowballMenu:using,scores={menu:showContext=6,menu:refreshTime=..0}] ~ ~ ~ titleraw @s actionbar {"rawtext":[{"text":"§l§e幻§6想§d乡§f · §7雪球菜单\n§f①改变游戏模式为生存模式\n②获取雪球\n③设置当前位置为出生点\n④返回出生点\n⑤保存当前位置\n⑥§b回到保存位置\n§f⑦添加范围内生物到白名单生物列中\n§7扔出雪球切换选项\n抬头到最高点确定选项\n低头至最低点退出本菜单\n§r\n§r\n§r\n§r\n§r\n§r"}]}
execute @a[tag=snowballMenu:using,scores={menu:showContext=7,menu:refreshTime=..0}] ~ ~ ~ titleraw @s actionbar {"rawtext":[{"text":"§l§e幻§6想§d乡§f · §7雪球菜单\n§f①改变游戏模式为生存模式\n②获取雪球\n③设置当前位置为出生点\n④返回出生点\n⑤保存当前位置\n⑥回到保存位置\n⑦§b添加范围内生物到白名单生物列中\n§7扔出雪球切换选项\n抬头到最高点确定选项\n低头至最低点退出本菜单\n§r\n§r\n§r\n§r\n§r\n§r"}]}
# 显示菜单内容

execute @a[tag=snowballMenu:using,scores={menu:showContext=..2147483647,menu:refreshTime=..0}] ~ ~ ~ scoreboard players operation @s menu:refreshTime = refreshTime menu:settings
# 善后