execute @a[tag=s_m:user] ~ ~ ~ scoreboard players add @s s_m:time 0
execute @a[tag=s_m:user,scores={s_m:time=0..13,s_m:scores=0..7}] ~ ~ ~ scoreboard players add @s s_m:time 1
#1
execute @a[tag=s_m:user] ~ ~ ~ scoreboard players add @s s_m:scores 0
execute @a[tag=s_m:user] ~ ~ ~ scoreboard players add @s s_m:cd 0
execute @a[tag=s_m:user_mark,rxm=-30,rx=30,scores={s_m:cd=0}] ~ ~ ~ tag @s remove s_m:user_mark
execute @a[tag=s_m:user,scores={s_m:cd=1..}] ~ ~ ~ scoreboard players remove @s s_m:cd 1
#2
execute @a[tag=s_m:user,scores={s_m:scores=0,s_m:time=14..}] ~ ~ ~ titleraw @s actionbar {"rawtext":[{"text":"§l§e幻§6想§d乡§f · §7雪球菜单\n§f①改变游戏模式为生存模式\n②获取雪球\n③设置当前位置为出生点\n④返回出生点\n⑤保存当前位置\n⑥回到保存位置\n⑦添加范围内生物到白名单生物列中\n§7扔出雪球切换选项\n抬头到最高点确定选项\n低头至最低点退出本菜单\n§r\n§r\n§r\n§r\n§r\n§r"}]}
execute @a[tag=s_m:user,scores={s_m:scores=1,s_m:time=14..}] ~ ~ ~ titleraw @s actionbar {"rawtext":[{"text":"§l§e幻§6想§d乡§f · §7雪球菜单\n§f①§b改变游戏模式为生存模式\n§f②获取雪球\n③设置当前位置为出生点\n④返回出生点\n⑤保存当前位置\n⑥回到保存位置\n⑦添加范围内生物到白名单生物列中\n§7扔出雪球切换选项\n抬头到最高点确定选项\n低头至最低点退出本菜单\n§r\n§r\n§r\n§r\n§r\n§r"}]}
execute @a[tag=s_m:user,scores={s_m:scores=2,s_m:time=14..}] ~ ~ ~ titleraw @s actionbar {"rawtext":[{"text":"§l§e幻§6想§d乡§f · §7雪球菜单\n§f①改变游戏模式为生存模式\n②§b获取雪球\n§f③设置当前位置为出生点\n④返回出生点\n⑤保存当前位置\n⑥回到保存位置\n⑦添加范围内生物到白名单生物列中\n§7扔出雪球切换选项\n抬头到最高点确定选项\n低头至最低点退出本菜单\n§r\n§r\n§r\n§r\n§r\n§r"}]}
execute @a[tag=s_m:user,scores={s_m:scores=3,s_m:time=14..}] ~ ~ ~ titleraw @s actionbar {"rawtext":[{"text":"§l§e幻§6想§d乡§f · §7雪球菜单\n§f①改变游戏模式为生存模式\n②获取雪球\n③§b设置当前位置为出生点\n§f④返回出生点\n⑤保存当前位置\n⑥回到保存位置\n⑦添加范围内生物到白名单生物列中\n§7扔出雪球切换选项\n抬头到最高点确定选项\n低头至最低点退出本菜单\n§r\n§r\n§r\n§r\n§r\n§r"}]}
execute @a[tag=s_m:user,scores={s_m:scores=4,s_m:time=14..}] ~ ~ ~ titleraw @s actionbar {"rawtext":[{"text":"§l§e幻§6想§d乡§f · §7雪球菜单\n§f①改变游戏模式为生存模式\n②获取雪球\n③设置当前位置为出生点\n④§b返回出生点\n§f⑤保存当前位置\n⑥回到保存位置\n⑦添加范围内生物到白名单生物列中\n§7扔出雪球切换选项\n抬头到最高点确定选项\n低头至最低点退出本菜单\n§r\n§r\n§r\n§r\n§r\n§r"}]}
execute @a[tag=s_m:user,scores={s_m:scores=5,s_m:time=14..}] ~ ~ ~ titleraw @s actionbar {"rawtext":[{"text":"§l§e幻§6想§d乡§f · §7雪球菜单\n§f①改变游戏模式为生存模式\n②获取雪球\n③设置当前位置为出生点\n④返回出生点\n⑤§b保存当前位置\n§f⑥回到保存位置\n⑦添加范围内生物到白名单生物列中\n§7扔出雪球切换选项\n抬头到最高点确定选项\n低头至最低点退出本菜单\n§r\n§r\n§r\n§r\n§r\n§r"}]}
execute @a[tag=s_m:user,scores={s_m:scores=6,s_m:time=14..}] ~ ~ ~ titleraw @s actionbar {"rawtext":[{"text":"§l§e幻§6想§d乡§f · §7雪球菜单\n§f①改变游戏模式为生存模式\n②获取雪球\n③设置当前位置为出生点\n④返回出生点\n⑤保存当前位置\n⑥§b回到保存位置\n§f⑦添加范围内生物到白名单生物列中\n§7扔出雪球切换选项\n抬头到最高点确定选项\n低头至最低点退出本菜单\n§r\n§r\n§r\n§r\n§r\n§r"}]}
execute @a[tag=s_m:user,scores={s_m:scores=7,s_m:time=14..}] ~ ~ ~ titleraw @s actionbar {"rawtext":[{"text":"§l§e幻§6想§d乡§f · §7雪球菜单\n§f①改变游戏模式为生存模式\n②获取雪球\n③设置当前位置为出生点\n④返回出生点\n⑤保存当前位置\n⑥回到保存位置\n⑦§b添加范围内生物到白名单生物列中\n§7扔出雪球切换选项\n抬头到最高点确定选项\n低头至最低点退出本菜单\n§r\n§r\n§r\n§r\n§r\n§r"}]}
execute @a[tag=s_m:user,scores={s_m:scores=9}] ~ ~ ~ titleraw @s actionbar {"rawtext":[{"text":"§l§f⑦§b添加范围内生物到白名单生物列中\n§a以下生物可选§f：\n§b"},{"selector":"@e[family=mob,tag=!bmdsw,r=5,c=3,type=!armor_stand]"},{"text":"\n§a您当前还可以添加 §b"},{"score":{"objective":"bmdsw_added","name":"@s"}},{"text":" §a个生物\n到白名单生物列表\n§7抬头到最高点确定添加\n低头至最低点返回上一级内容\n§r\n§r"}]}
#3
execute @a[tag=s_m:user,scores={s_m:scores=9,白名单=!1}] ~ ~ ~ tellraw @s {"rawtext":[{"text":"§c您不具有继续访问此级菜单的权限，因此您已被自动回退到上一级菜单"}]}
execute @a[tag=s_m:user,scores={s_m:scores=9,白名单=!1}] ~ ~ ~ playsound random.break @s ~ ~ ~ 1 1 1
execute @a[tag=s_m:user,scores={s_m:scores=9,白名单=!1}] ~ ~ ~ tag @s add s_m:user_mark
execute @a[tag=s_m:user,scores={s_m:scores=9,白名单=!1}] ~ ~ ~ scoreboard players set @s s_m:cd 2
execute @a[tag=s_m:user,scores={s_m:scores=9,白名单=!1}] ~ ~ ~ tp ~ ~ ~ ~ 0
execute @a[tag=s_m:user,scores={s_m:scores=9,白名单=!1}] ~ ~ ~ scoreboard players set @s s_m:scores 7
#4
execute @a[tag=s_m:user,scores={s_m:time=14..,s_m:scores=0..7}] ~ ~ ~ scoreboard players reset @s s_m:time
#5