<<<<<<< HEAD
execute @a[tag=tpa:rte_true] ~ ~ ~ summon minecraft:armor_stand tpa:uid_save ~ ~32767.0 ~
execute @a[tag=tpa:rte_true] ~ ~32767.0 ~ tag @e[type=minecraft:armor_stand,name=tpa:uid_save,c=1,tag="",r=3] add tpa:uid_save_writing
#生成实体并赋予标签

execute @e[tag=tpa:uid_save_writing] ~ ~ ~ scoreboard players operation @s tpa:uid_save_r = @a[tag=tpa:rte_true] uid
execute @e[tag=tpa:uid_save_writing] ~ ~ ~ scoreboard players operation @s tpa:uid_save_t = @a[tag=tpa:rte_true] tpa:panel_int
execute @e[tag=tpa:uid_save_writing] ~ ~ ~ scoreboard players operation @s tpa:kill_time = request tpa:timeout
execute @e[tag=tpa:uid_save_writing] ~ ~ ~ scoreboard players operation @s tpa:kill_time *= ratio tpa:timeout
execute @e[tag=tpa:entity_save_place] ~ ~ ~ tp @e[tag=tpa:uid_save_writing] @s
execute @e[tag=tpa:uid_save_writing] ~ ~ ~ tag @s add tpa:uid_save
execute @e[tag=tpa:uid_save_writing] ~ ~ ~ tag @s remove tpa:uid_save_writing
#赋予实体分数和标签
#产生请求



scoreboard players reset * tpa:math
#清理计算用计分板上的数据
execute @a[tag=!tpa:rte_true] ~ ~ ~ scoreboard players operation @s tpa:math = @s uid
#同步uid数据到计算用计分板
execute @a[tag=!tpa:rte_true] ~ ~ ~ scoreboard players operation @s tpa:math -= @a[tag=tpa:rte_true] tpa:panel_int
#减分
#计算出要通知的目标玩家

execute @a[tag=tpa:rte_true] ~ ~ ~ tellraw @s {"rawtext":[{"text":"§a已成功向§e"},{"selector":"@a[scores={tpa:math=0}]"},{"text":"§f(UID§3-§b"},{"score":{"objective":"uid","name":"@a[scores={tpa:math=0}]"}},{"text":"§f)§a发送传送请求§f！\n§a该请求将于§b"},{"score":{"objective":"tpa:timeout","name":"request"}},{"text":"§a分钟后失效"}]}
execute @a[scores={tpa:math=0}] ~ ~ ~ tellraw @s {"rawtext":[{"text":"§f[§dTpa§f·§c通知§f] §a玩家"},{"selector":"@a[tag=tpa:rte_true]"},{"text":"§f(UID§3-§b"},{"score":{"objective":"uid","name":"@a[tag=tpa:rte_true]"}},{"text":"§f)§a向你发送了传送请求§f，§a快去前往Tpa菜单处理吧§f！\n§a该请求将于§b"},{"score":{"objective":"tpa:timeout","name":"request"}},{"text":"§a分钟后失效"}]}
execute @a[tag=tpa:rte_true] ~ ~ ~ playsound random.levelup @s ~ ~ ~ 1.00 1.00 1.00
execute @a[scores={tpa:math=0}] ~ ~ ~ playsound random.toast @s ~ ~ ~ 1.00 1.00 1.00
#发送通知和播放音效



execute @a[tag=tpa:rte_true] ~ ~ ~ tp ~ ~ ~ ~ 0.01
execute @a[tag=tpa:rte_true] ~ ~ ~ scoreboard players set @s tpa:wait 7
execute @a[tag=tpa:rte_true] ~ ~ ~ tag @s add tpa:wait
#更改朝向



execute @a[tag=tpa:rte_true,scores={tpa:screen=7}] ~ ~ ~ tag @s add tpa:change_player
execute @a[tag=tpa:rte_true,scores={tpa:screen=7}] ~ ~ ~ tag @s add tpa:change_player_system
#切换显示对象



execute @a[tag=tpa:rte_true] ~ ~ ~ scoreboard players add @s tpa:request_num 1
#增加已请求数(减少可请求数)



execute @a[tag=tpa:rte_true] ~ ~ ~ tag @s remove tpa:request_teleport
execute @a[tag=tpa:rte_true] ~ ~ ~ tag @s remove tpa:rt_ergodic
execute @a[tag=tpa:rte_true] ~ ~ ~ tag @s remove tpa:rte_allow_1
execute @a[tag=tpa:rte_true] ~ ~ ~ tag @s remove tpa:rte_allow_3
execute @a[tag=tpa:rte_true] ~ ~ ~ tag @s remove tpa:rte_true
=======
execute @a[tag=tpa:rte_true] ~ ~ ~ summon minecraft:armor_stand tpa:uid_save ~ ~32767.0 ~
execute @a[tag=tpa:rte_true] ~ ~32767.0 ~ tag @e[type=minecraft:armor_stand,name=tpa:uid_save,c=1,tag="",r=3] add tpa:uid_save_writing
#生成实体并赋予标签

execute @e[tag=tpa:uid_save_writing] ~ ~ ~ scoreboard players operation @s tpa:uid_save_r = @a[tag=tpa:rte_true] uid
execute @e[tag=tpa:uid_save_writing] ~ ~ ~ scoreboard players operation @s tpa:uid_save_t = @a[tag=tpa:rte_true] tpa:panel_int
execute @e[tag=tpa:uid_save_writing] ~ ~ ~ scoreboard players operation @s tpa:kill_time = request tpa:timeout
execute @e[tag=tpa:uid_save_writing] ~ ~ ~ scoreboard players operation @s tpa:kill_time *= ratio tpa:timeout
execute @e[tag=tpa:entity_save_place] ~ ~ ~ tp @e[tag=tpa:uid_save_writing] @s
execute @e[tag=tpa:uid_save_writing] ~ ~ ~ tag @s add tpa:uid_save
execute @e[tag=tpa:uid_save_writing] ~ ~ ~ tag @s remove tpa:uid_save_writing
#赋予实体分数和标签
#产生请求



scoreboard players reset * tpa:math
#清理计算用计分板上的数据
execute @a[tag=!tpa:rte_true] ~ ~ ~ scoreboard players operation @s tpa:math = @s uid
#同步uid数据到计算用计分板
execute @a[tag=!tpa:rte_true] ~ ~ ~ scoreboard players operation @s tpa:math -= @a[tag=tpa:rte_true] tpa:panel_int
#减分
#计算出要通知的目标玩家

execute @a[tag=tpa:rte_true] ~ ~ ~ tellraw @s {"rawtext":[{"text":"§a已成功向§e"},{"selector":"@a[scores={tpa:math=0}]"},{"text":"§f(UID§3-§b"},{"score":{"objective":"uid","name":"@a[scores={tpa:math=0}]"}},{"text":"§f)§a发送传送请求§f！\n§a该请求将于§b"},{"score":{"objective":"tpa:timeout","name":"request"}},{"text":"§a分钟后失效"}]}
execute @a[scores={tpa:math=0}] ~ ~ ~ tellraw @s {"rawtext":[{"text":"§f[§dTpa§f·§c通知§f] §a玩家"},{"selector":"@a[tag=tpa:rte_true]"},{"text":"§f(UID§3-§b"},{"score":{"objective":"uid","name":"@a[tag=tpa:rte_true]"}},{"text":"§f)§a向你发送了传送请求§f，§a快去前往Tpa菜单处理吧§f！\n§a该请求将于§b"},{"score":{"objective":"tpa:timeout","name":"request"}},{"text":"§a分钟后失效"}]}
execute @a[tag=tpa:rte_true] ~ ~ ~ playsound random.levelup @s ~ ~ ~ 1.00 1.00 1.00
execute @a[scores={tpa:math=0}] ~ ~ ~ playsound random.toast @s ~ ~ ~ 1.00 1.00 1.00
#发送通知和播放音效



execute @a[tag=tpa:rte_true] ~ ~ ~ tp ~ ~ ~ ~ 0.01
execute @a[tag=tpa:rte_true] ~ ~ ~ scoreboard players set @s tpa:wait 7
execute @a[tag=tpa:rte_true] ~ ~ ~ tag @s add tpa:wait
#更改朝向



execute @a[tag=tpa:rte_true,scores={tpa:screen=7}] ~ ~ ~ tag @s add tpa:change_player
execute @a[tag=tpa:rte_true,scores={tpa:screen=7}] ~ ~ ~ tag @s add tpa:change_player_system
#切换显示对象



execute @a[tag=tpa:rte_true] ~ ~ ~ scoreboard players add @s tpa:request_num 1
#增加已请求数(减少可请求数)



execute @a[tag=tpa:rte_true] ~ ~ ~ tag @s remove tpa:request_teleport
execute @a[tag=tpa:rte_true] ~ ~ ~ tag @s remove tpa:rt_ergodic
execute @a[tag=tpa:rte_true] ~ ~ ~ tag @s remove tpa:rte_allow_1
execute @a[tag=tpa:rte_true] ~ ~ ~ tag @s remove tpa:rte_allow_3
execute @a[tag=tpa:rte_true] ~ ~ ~ tag @s remove tpa:rte_true
>>>>>>> d95f919c53aa8612409504198bbed77f930d5f64
#清理标签并结束遍历状态