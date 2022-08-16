scoreboard objectives add tpa:screen dummy
scoreboard objectives add tpa:s_t dummy
#scoreboard_add
scoreboard players add @a[scores={tpa:s_t=1}] tp:screen 1
title @a[scores={tpa:screen=2,tpa:s_t=1}] title §l§9Welcome §3To §bTpa
title @a[scores={tpa:screen=2,tpa:s_t=1}] subtitle §l§eMade §gBy §6Happy2018new
execute @a[scores={tpa:screen=2,tpa:s_t=1}] ~ ~ ~ playsound random.orb @s ~ ~ ~ 1 0.5
title @a[scores={tpa:screen=32,tpa:s_t=1}] title §l§2To §aFind §2Someone
title @a[scores={tpa:screen=32,tpa:s_t=1}] subtitle §l§4Maybe §cvery §dhard...
execute @a[scores={tpa:screen=32,tpa:s_t=1}] ~ ~ ~ playsound random.orb @s ~ ~ ~ 1 0.75
title @a[scores={tpa:screen=62,tpa:s_t=1}] title §l§bBut it §9can §3help you
title @a[scores={tpa:screen=62,tpa:s_t=1}] subtitle §l§6Only for §gyou and §eyour friend
execute @a[scores={tpa:screen=62,tpa:s_t=1}] ~ ~ ~ playsound random.orb
execute @a[scores={tpa:screen=72,tpa:s_t=1}] ~ ~ ~ playsound beacon.activate
scoreboard players set @a[scores={tpa:screen=72..,tpa:s_t=1}] tpa:screen -1
scoreboard players set @a[scores={tpa:screen=-1}] tpa:s_t 2
scoreboard players set @a[scores={tpa:screen=-1}] tpa:screen 14
#start
*#此处应显示使用说明
#使用说明
scoreboard players add @a[scores={tpa:s_t=2..5}] tpa:screen 1
titleraw @a[scores={tpa:screen=15,tpa:s_t=2}] actionbar {"rawtext":[{"text":"§l①§e向其他玩家发起传送请求\n§f②§e查看他人向自己发送的传送请求\n§f③§e撤销已发起的传送请求\n§7投掷§f雪球§7更换已选定选项\n§a低头至最低点进入已选定选项页面\n§g抬头至最高点退出该菜单"}]}
titleraw @a[scores={tpa:screen=15,tpa:s_t=3}] actionbar {"rawtext":[{"text":"§l§b①§6向其他玩家发起传送请求\n§f②§e查看他人向自己发送的传送请求\n§f③§e撤销已发起的传送请求\n§7投掷§f雪球§7更换已选定选项\n§a低头至最低点进入已选定选项页面\n§g抬头至最高点退出该菜单"}]}
titleraw @a[scores={tpa:screen=15,tpa:s_t=4}] actionbar {"rawtext":[{"text":"§l①§e向其他玩家发起传送请求\n§b②§6查看他人向自己发送的传送请求\n§f③§e撤销已发起的传送请求\n§7投掷§f雪球§7更换已选定选项\n§a低头至最低点进入已选定选项页面\n§g抬头至最高点退出该菜单"}]}
titleraw @a[scores={tpa:screen=15,tpa:s_t=5}] actionbar {"rawtext":[{"text":"§l①§e向其他玩家发起传送请求\n§f②§e查看他人向自己发送的传送请求\n§b③§6撤销已发起的传送请求\n§7投掷§f雪球§7更换已选定选项\n§a低头至最低点进入已选定选项页面\n§g抬头至最高点退出该菜单"}]}
scoreboard players reset @a[scores={tpa:screen=15..,tpa:s_t=2..5}] tpa:screen
#基础_screen
execute @e[type=snowball] ~ ~ ~ tag @p[r=1.4] add tpa:test
execute @a[tag=tpa:test,rx=-60,rxm=-90,scores={tpa:s_t=2..5}] ~ ~ ~ tag @s add tpa:close
execute @a[tag=tpa:test,rx=-60,rxm=-90,scores={tpa:s_t=2..5}] ~ ~ ~ tellraw @s {"rawtext":[{"text":"§l§a已检测到您欲回城§f，§a传送系统已§c关闭"}]}
execute @a[tag=tpa:test,rx=-60,rxm=-90,scores={tpa:s_t=2..5}] ~ ~ ~ playsound random.toast
scoreboard players reset @a[tag=tpa:close] tpa:s_t
scoreboard players reset @a[tag=tpa:close] tpa:screen
title @a[tag=tpa:close] actionbar §r
execute @a[tag=tpa:test,tag=!tpa:close,scores={tpa:s_t=2..5}] ~ ~ ~ scoreboard players add @s tpa:s_t 1
execute @a[tag=tpa:test,tag=!tpa:close,scores={tpa:s_t=2..5}] ~ ~ ~ playsound random.click
execute @a[tag=tpa:close] ~ ~ ~ tag @s remove tpa:close
#close_because_back_to_the_town/change_the_seletor(target)
scoreboard players set @a[scores={tpa:s_t=6..25}] tpa:s_t 2
#scores_reset
title @a[scores={tpa:s_t=2..5},rx=-80,rxm=-90] title §l§0See §8you §7next §ftime
title @a[scores={tpa:s_t=2..5},rx=-80,rxm=-90] subtitle §l§eDreamLand §falways §awith §byou
execute @a[scores={tpa:s_t=2..5},rx=-80,rxm=-90] ~ ~ ~ playsound beacon.activate
tag @a[scores={tpa:s_t=2..5},rx=-80,rxm=-90] add tpa:close
execute @a[tag=tpa:close] ~ ~ ~ tp ~ ~ ~ ~ 0
scoreboard players reset @a[tag=tpa:close] tpa:s_t
scoreboard players reset @a[tag=tpa:close] tpa:screen
title @a[tag=tpa:close] actionbar §r
execute @a[tag=tpa:close] ~ ~ ~ tag @s remove tpa:close
#close
tag @a[scores={tpa:s_t=3..5},rx=90,rxm=80] add tpa:login
execute @a[tag=tpa:login] ~ ~ ~ playsound random.random.click
scoreboard players set @a[tag=tpa:login] tpa:screen 0
scoreboard players set @a[scores={tpa:s_t=3},tag=tpa:login] tpa:s_t 26
scoreboard players set @a[scores={tpa:s_t=4},tag=tpa:login] tpa:s_t 27
scoreboard players set @a[scores={tpa:s_t=5},tag=tpa:login] tpa:s_t 28
execute @a[tag=tpa:login] ~ ~ ~ tp ~ ~ ~ ~ 0
tag @a[tag=tpa:login,tag=tpa:wait_for_know] remove tpa:wait_for_know
tag @a[tag=tpa:login] remove tpa:login
#login