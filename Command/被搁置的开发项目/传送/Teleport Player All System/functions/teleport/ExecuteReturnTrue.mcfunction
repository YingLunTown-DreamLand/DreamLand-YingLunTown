<<<<<<< HEAD
execute @e[scores={tpa:math=0},c=1,type=minecraft:armor_stand] ~ ~ ~ kill @s
#清理代表实体



execute @a[tag=tpa:ete_true] ~ ~ ~ tag @s add tpa:exit_all
#关闭菜单



scoreboard players reset * tpa:math
#清理计算用计分板上的数据
execute @a[tag=!tpa:ete_true] ~ ~ ~ scoreboard players operation @s tpa:math = @s uid
#同步uid数据到计算用计分板
execute @a[tag=!tpa:ete_true] ~ ~ ~ scoreboard players operation @s tpa:math -= @a[tag=tpa:ete_true] tpa:panel_int
#减分
#计算出要通知的目标玩家



execute @a[tag=tpa:ete_true] ~ ~ ~ title @s reset
execute @a[tag=tpa:ete_true] ~ ~ ~ title @s title §l§a您已成功被传送到
execute @a[tag=tpa:ete_true] ~ ~ ~ title @s subtitle §o§b@a[scores={tpa:math=0}]
#向执行者播放Title-title和Title-subtitle
execute @a[tag=tpa:ete_true,scores={tpa:setting_28=!1}] ~ ~ ~ tellraw @s {"rawtext":[{"text":"§a您已成功被传送到§e"},{"selector":"@a[scores={tpa:math=0}]"},{"text":"§f(UID§3-§b"},{"score":{"objective":"uid","name":"@a[scores={tpa:math=0}]"}},{"text":"§f)§a的身边§f！"}]}
#向执行者播放Tellraw

execute @a[scores={tpa:math=0},tag=!tpa:user,tag=!s_m:user,tag=!menu_all:using] ~ ~ ~ titleraw @s title {"rawtext":[{"text":"§l§e"},{"selector":"@e[tag=tpa:ete_true]"},{"text":"\n§l§a已传送到您身边"}]}
execute @a[scores={tpa:math=0},tag=!tpa:user,tag=!s_m:user,tag=!menu_all:using] ~ ~ ~ titleraw @s subtitle {"rawtext":[{"text":"§l|§3TA§b执行了该会话§7！§f|"}]}
#向被请求者播放Title-title和Title-subtitle
execute @a[scores={tpa:math=0,tpa:setting_28=!1}] ~ ~ ~ tellraw @s {"rawtext":[{"text":"§e"},{"selector":"@a[scores={tpa:math=0}]"},{"text":"§f(UID§3-§b"},{"score":{"objective":"uid","name":"@a[scores={tpa:math=0}]"}},{"text":"§f)§a已成功传送到您身边§f！§7(§3TA§b执行了该会话§f§f)"}]}
#向被请求者播放Tellraw
#播放通知-1



execute @a[tag=tpa:ete_true] ~ ~ ~ tag @s add tpa:getpos
execute @a[scores={tpa:math=0}] ~ ~ ~ tag @s add tpa:getpos
#1
execute @a[tag=tpa:ete_true] ~ ~ ~ tag @s add tpa:getpos_request
execute @a[scores={tpa:math=0}] ~ ~ ~ tag @s add tpa:getpos_target
#2
function getpos
function dimension
#3
#获取坐标和维度



execute @a[tag=tpa:ete_true] ~ ~ ~ summon minecraft:armor_stand tpa:log ~ ~32767.0 ~
execute @a[tag=tpa:ete_true] ~ ~32767.0 ~ tag @e[type=minecraft:armor_stand,name=tpa:log,c=1,r=3,tag=""] add tpa:log_writing
#生成实体并赋予标签

scoreboard players add execute_num tpa:data_save 1
#增加tpa系统执行传送的总数

execute @e[tag=tpa:log_writing] ~ ~ ~ scoreboard players operation @s tpa:log_EventId = execute_num tpa:data_save
#记录事件ID

execute @e[tag=tpa:log_writing] ~ ~ ~ scoreboard players operation @s tpa:log_uid_r = @a[tag=tpa:ete_true] uid
#记录请求者的UID
execute @e[tag=tpa:log_writing] ~ ~ ~ scoreboard players operation @s tpa:log_uid_t = @a[scores={tpa:math=0}] uid
#记录被请求者的UID
#记录UID

execute @e[tag=tpa:log_writing] ~ ~ ~ scoreboard players operation @s tpa:log_posx_r = @a[tag=tpa:ete_true] tpa:posx
#记录请求者的X轴坐标
execute @e[tag=tpa:log_writing] ~ ~ ~ scoreboard players operation @s tpa:log_posy_r = @a[tag=tpa:ete_true] tpa:posy
#记录请求者的Y轴坐标
execute @e[tag=tpa:log_writing] ~ ~ ~ scoreboard players operation @s tpa:log_posz_r = @a[tag=tpa:ete_true] tpa:posz
#记录请求者的Z轴坐标
#记录请求者的坐标

execute @e[tag=tpa:log_writing] ~ ~ ~ scoreboard players operation @s tpa:log_posx_t = @a[scores={tpa:math=0}] tpa:posx
#记录被请求者的X轴坐标
execute @e[tag=tpa:log_writing] ~ ~ ~ scoreboard players operation @s tpa:log_posy_t = @a[scores={tpa:math=0}] tpa:posy
#记录被请求者的Y轴坐标
execute @e[tag=tpa:log_writing] ~ ~ ~ scoreboard players operation @s tpa:log_posz_t = @a[scores={tpa:math=0}] tpa:posz
#记录被请求者的Z轴坐标
#记录被请求者的坐标

execute @e[tag=tpa:log_writing] ~ ~ ~ scoreboard players operation @s tpa:log_d_r = @a[tag=tpa:ete_true] dimension
#记录请求者所在维度信息
execute @e[tag=tpa:log_writing] ~ ~ ~ scoreboard players operation @s tpa:log_d_t = @a[scores={tpa:math=0}] dimension
#记录被请求者所在维度信息
#记录维度信息

execute @e[tag=tpa:log_writing] ~ ~ ~ scoreboard players operation @s tpa:log_t_y = year server_time
#记录服务器时间：年份
execute @e[tag=tpa:log_writing] ~ ~ ~ scoreboard players operation @s tpa:log_t_mo = month server_time
#记录服务器时间：月份
execute @e[tag=tpa:log_writing] ~ ~ ~ scoreboard players operation @s tpa:log_t_d = day server_time
#记录服务器时间：天数
execute @e[tag=tpa:log_writing] ~ ~ ~ scoreboard players operation @s tpa:log_t_h = hour server_time
#记录服务器时间：小时
execute @e[tag=tpa:log_writing] ~ ~ ~ scoreboard players operation @s tpa:log_t_mi = minute server_time
#记录服务器时间：分钟
execute @e[tag=tpa:log_writing] ~ ~ ~ scoreboard players operation @s tpa:log_t_s = second server_time
#记录服务器时间：秒钟
execute @e[tag=tpa:log_writing] ~ ~ ~ scoreboard players operation @s tpa:log_t_t = tick server_time
#记录服务器时间：游戏刻
#记录服务器时间

execute @e[tag=tpa:log_save_place] ~ ~ ~ tp @e[tag=tpa:log_writing] @s
#将正在被写入数据的新生成的日志实体传送到其应当被存放的位置
execute @e[tag=tpa:log_writing] ~ ~ ~ tag @s add tpa:log
execute @e[tag=tpa:log_writing] ~ ~ ~ tag @s remove tpa:log_writing
#设置标签
#向缓冲区写入日志



execute @a[tag=tpa:ete_true] ~ ~ ~ scoreboard players remove @s tpa:request_num 1
#减少已请求数(增加可请求数)



tp @a[tag=tpa:ete_true] @a[scores={tpa:math=0}]
#传送



execute @a[tag=tpa:ete_true] ~ ~ ~ playsound random.levelup @s ~ ~ ~ 1.00 1.00 1.00
execute @a[scores={tpa:math=0}] ~ ~ ~ playsound random.orb @s ~ ~ ~ 1.00 1.00 1.00
execute @a[scores={tpa:math=0}] ~ ~ ~ particle minecraft:totem_particle ~ ~1.5 ~
#播放音效和粒子



execute @a[tag=tpa:ete_true,scores={tpa:setting_28=1}] ~ ~ ~ tellraw @s {"rawtext":[{"text":"§f[§6事件ID§f:§b"},{"score":{"objective":"tpa:data_save","name":"execute_num"}},{"text":"§f] §a您已成功从§f(§b"},{"score":{"objective":"tpa:posx","name":"@s"}},{"text":"§f,§b"},{"score":{"objective":"tpa:posy","name":"@s"}},{"text":"§f,§b"},{"score":{"objective":"tpa:posz","name":"@s"}},{"text":"§f)§a"},{"text":"传送到§e"},{"selector":"@a[scores={tpa:math=0}]"},{"text":"§f(UID§3-§b"},{"score":{"objective":"uid","name":"@a[scores={tpa:math=0}]"}},{"text":"§f)§a的身边§f！\n§a目的地坐标§7：§f(§b"},{"score":{"objective":"tpa:posx","name":"@a[scores={tpa:math=0}]"}},{"text":"§f,§b"},{"score":{"objective":"tpa:posy","name":"@a[scores={tpa:math=0}]"}},{"text":"§f,§b"},{"score":{"objective":"tpa:posz","name":"@a[scores={tpa:math=0}]"}},{"text":" §a维度变化情况§f(§b0§a为主世界§f，§b1§a为下界§b，§b2§a为末地§f)§7：§b"},{"score":{"objective":"dimension","name":"@s"}},{"text":"§l§f→§r§b"},{"score":{"objective":"dimension","name":"@a[scores={tpa:math=0}]\n§f=========="}}]}
#向执行者播放Tellraw
execute @a[scores={tpa:math=0,tpa:setting_28=1}] ~ ~ ~ tellraw @s {"rawtext":[{"text":"§f[§6事件ID§f:§b"},{"score":{"objective":"tpa:data_save","name":"execute_num"}},{"text":"§f] §e"},{"selector":"@a[scores={tpa:math=0}]"},{"text":"§f(UID§3-§b"},{"score":{"objective":"uid","name":"@a[scores={tpa:math=0}]"}},{"text":"§f)§a已成功传送到您身边§f(§b"},{"score":{"objective":"tpa:posx","name":"@s"}},{"text":"§f,§b"},{"score":{"objective":"tpa:posy","name":"@s"}},{"text":"§f,§b"},{"score":{"objective":"tpa:posz","name":"@s"}},{"text":"§f)"},{"text":"§7！§7(§3TA§b执行了该会话§f§f)"}]}
#向被请求者播放Tellraw
#播放通知-2



execute @a[tag=tpa:ete_true] ~ ~ ~ tellraw @a[scores={administrator=1}] {"rawtext":[{"text":"§f[§dTpa§f·§c日志]\n§6事件ID§f:§b"},{"score":{"objective":"tpa:data_save","name":"execute_num"}},{"text":"\n§a详细内容§f：§e"},{"selector":"@s"},{"text":"§f(UID§3-§b"},{"score":{"objective":"uid","name":"@s"}},{"text":"§f)§a已成功从§f(§b"},{"score":{"objective":"tpa:posx","name":"@s"}},{"text":"§f,§b"},{"score":{"objective":"tpa:posy","name":"@s"}},{"text":"§f,§b"},{"score":{"objective":"tpa:posz","name":"@s"}},{"text":"§f)§a"},{"text":"传送到§e"},{"selector":"@a[scores={tpa:math=0}]"},{"text":"§f(UID§3-§b"},{"score":{"objective":"uid","name":"@a[scores={tpa:math=0}]"}},{"text":"§f)§a所在的位置§f。\n§a目的地坐标§7：§f(§b"},{"score":{"objective":"tpa:posx","name":"@a[scores={tpa:math=0}]"}},{"text":"§f,§b"},{"score":{"objective":"tpa:posy","name":"@a[scores={tpa:math=0}]"}},{"text":"§f,§b"},{"score":{"objective":"tpa:posz","name":"@a[scores={tpa:math=0}]"}},{"text":"\n§a维度变化情况§f(§b0§a为主世界§f，§b1§a为下界§b，§b2§a为末地§f)§7：§b"},{"score":{"objective":"dimension","name":"@s"}},{"text":"§l§f→§r§b"},{"score":{"objective":"dimension","name":"@a[scores={tpa:math=0}]\n§f=========="}}]}
execute @a[scores={administrator=1}] ~ ~ ~ playsound random.toast @s ~ ~ ~ 1.00 1.00 1.00
#向所有在线的管理员播放Tellraw和音效
#播放通知-3



execute @a[tag=tpa:ete_true] ~ ~ ~ tag @s remove tpa:execute_teleport
execute @a[tag=tpa:ete_true] ~ ~ ~ tag @s remove tpa:et_ergodic
execute @a[tag=tpa:ete_true] ~ ~ ~ tag @s remove tpa:ete_allow_7
execute @a[tag=tpa:ete_true] ~ ~ ~ tag @s remove tpa:ete_allow_8
execute @a[tag=tpa:ete_true] ~ ~ ~ tag @s remove tpa:ete_allow_9
execute @a[tag=tpa:ete_true] ~ ~ ~ tag @s remove tpa:ute_true
=======
execute @e[scores={tpa:math=0},c=1,type=minecraft:armor_stand] ~ ~ ~ kill @s
#清理代表实体



execute @a[tag=tpa:ete_true] ~ ~ ~ tag @s add tpa:exit_all
#关闭菜单



scoreboard players reset * tpa:math
#清理计算用计分板上的数据
execute @a[tag=!tpa:ete_true] ~ ~ ~ scoreboard players operation @s tpa:math = @s uid
#同步uid数据到计算用计分板
execute @a[tag=!tpa:ete_true] ~ ~ ~ scoreboard players operation @s tpa:math -= @a[tag=tpa:ete_true] tpa:panel_int
#减分
#计算出要通知的目标玩家



execute @a[tag=tpa:ete_true] ~ ~ ~ title @s reset
execute @a[tag=tpa:ete_true] ~ ~ ~ title @s title §l§a您已成功被传送到
execute @a[tag=tpa:ete_true] ~ ~ ~ title @s subtitle §o§b@a[scores={tpa:math=0}]
#向执行者播放Title-title和Title-subtitle
execute @a[tag=tpa:ete_true,scores={tpa:setting_28=!1}] ~ ~ ~ tellraw @s {"rawtext":[{"text":"§a您已成功被传送到§e"},{"selector":"@a[scores={tpa:math=0}]"},{"text":"§f(UID§3-§b"},{"score":{"objective":"uid","name":"@a[scores={tpa:math=0}]"}},{"text":"§f)§a的身边§f！"}]}
#向执行者播放Tellraw

execute @a[scores={tpa:math=0},tag=!tpa:user,tag=!s_m:user,tag=!menu_all:using] ~ ~ ~ titleraw @s title {"rawtext":[{"text":"§l§e"},{"selector":"@e[tag=tpa:ete_true]"},{"text":"\n§l§a已传送到您身边"}]}
execute @a[scores={tpa:math=0},tag=!tpa:user,tag=!s_m:user,tag=!menu_all:using] ~ ~ ~ titleraw @s subtitle {"rawtext":[{"text":"§l|§3TA§b执行了该会话§7！§f|"}]}
#向被请求者播放Title-title和Title-subtitle
execute @a[scores={tpa:math=0,tpa:setting_28=!1}] ~ ~ ~ tellraw @s {"rawtext":[{"text":"§e"},{"selector":"@a[scores={tpa:math=0}]"},{"text":"§f(UID§3-§b"},{"score":{"objective":"uid","name":"@a[scores={tpa:math=0}]"}},{"text":"§f)§a已成功传送到您身边§f！§7(§3TA§b执行了该会话§f§f)"}]}
#向被请求者播放Tellraw
#播放通知-1



execute @a[tag=tpa:ete_true] ~ ~ ~ tag @s add tpa:getpos
execute @a[scores={tpa:math=0}] ~ ~ ~ tag @s add tpa:getpos
#1
execute @a[tag=tpa:ete_true] ~ ~ ~ tag @s add tpa:getpos_request
execute @a[scores={tpa:math=0}] ~ ~ ~ tag @s add tpa:getpos_target
#2
function getpos
function dimension
#3
#获取坐标和维度



execute @a[tag=tpa:ete_true] ~ ~ ~ summon minecraft:armor_stand tpa:log ~ ~32767.0 ~
execute @a[tag=tpa:ete_true] ~ ~32767.0 ~ tag @e[type=minecraft:armor_stand,name=tpa:log,c=1,r=3,tag=""] add tpa:log_writing
#生成实体并赋予标签

scoreboard players add execute_num tpa:data_save 1
#增加tpa系统执行传送的总数

execute @e[tag=tpa:log_writing] ~ ~ ~ scoreboard players operation @s tpa:log_EventId = execute_num tpa:data_save
#记录事件ID

execute @e[tag=tpa:log_writing] ~ ~ ~ scoreboard players operation @s tpa:log_uid_r = @a[tag=tpa:ete_true] uid
#记录请求者的UID
execute @e[tag=tpa:log_writing] ~ ~ ~ scoreboard players operation @s tpa:log_uid_t = @a[scores={tpa:math=0}] uid
#记录被请求者的UID
#记录UID

execute @e[tag=tpa:log_writing] ~ ~ ~ scoreboard players operation @s tpa:log_posx_r = @a[tag=tpa:ete_true] tpa:posx
#记录请求者的X轴坐标
execute @e[tag=tpa:log_writing] ~ ~ ~ scoreboard players operation @s tpa:log_posy_r = @a[tag=tpa:ete_true] tpa:posy
#记录请求者的Y轴坐标
execute @e[tag=tpa:log_writing] ~ ~ ~ scoreboard players operation @s tpa:log_posz_r = @a[tag=tpa:ete_true] tpa:posz
#记录请求者的Z轴坐标
#记录请求者的坐标

execute @e[tag=tpa:log_writing] ~ ~ ~ scoreboard players operation @s tpa:log_posx_t = @a[scores={tpa:math=0}] tpa:posx
#记录被请求者的X轴坐标
execute @e[tag=tpa:log_writing] ~ ~ ~ scoreboard players operation @s tpa:log_posy_t = @a[scores={tpa:math=0}] tpa:posy
#记录被请求者的Y轴坐标
execute @e[tag=tpa:log_writing] ~ ~ ~ scoreboard players operation @s tpa:log_posz_t = @a[scores={tpa:math=0}] tpa:posz
#记录被请求者的Z轴坐标
#记录被请求者的坐标

execute @e[tag=tpa:log_writing] ~ ~ ~ scoreboard players operation @s tpa:log_d_r = @a[tag=tpa:ete_true] dimension
#记录请求者所在维度信息
execute @e[tag=tpa:log_writing] ~ ~ ~ scoreboard players operation @s tpa:log_d_t = @a[scores={tpa:math=0}] dimension
#记录被请求者所在维度信息
#记录维度信息

execute @e[tag=tpa:log_writing] ~ ~ ~ scoreboard players operation @s tpa:log_t_y = year server_time
#记录服务器时间：年份
execute @e[tag=tpa:log_writing] ~ ~ ~ scoreboard players operation @s tpa:log_t_mo = month server_time
#记录服务器时间：月份
execute @e[tag=tpa:log_writing] ~ ~ ~ scoreboard players operation @s tpa:log_t_d = day server_time
#记录服务器时间：天数
execute @e[tag=tpa:log_writing] ~ ~ ~ scoreboard players operation @s tpa:log_t_h = hour server_time
#记录服务器时间：小时
execute @e[tag=tpa:log_writing] ~ ~ ~ scoreboard players operation @s tpa:log_t_mi = minute server_time
#记录服务器时间：分钟
execute @e[tag=tpa:log_writing] ~ ~ ~ scoreboard players operation @s tpa:log_t_s = second server_time
#记录服务器时间：秒钟
execute @e[tag=tpa:log_writing] ~ ~ ~ scoreboard players operation @s tpa:log_t_t = tick server_time
#记录服务器时间：游戏刻
#记录服务器时间

execute @e[tag=tpa:log_save_place] ~ ~ ~ tp @e[tag=tpa:log_writing] @s
#将正在被写入数据的新生成的日志实体传送到其应当被存放的位置
execute @e[tag=tpa:log_writing] ~ ~ ~ tag @s add tpa:log
execute @e[tag=tpa:log_writing] ~ ~ ~ tag @s remove tpa:log_writing
#设置标签
#向缓冲区写入日志



execute @a[tag=tpa:ete_true] ~ ~ ~ scoreboard players remove @s tpa:request_num 1
#减少已请求数(增加可请求数)



tp @a[tag=tpa:ete_true] @a[scores={tpa:math=0}]
#传送



execute @a[tag=tpa:ete_true] ~ ~ ~ playsound random.levelup @s ~ ~ ~ 1.00 1.00 1.00
execute @a[scores={tpa:math=0}] ~ ~ ~ playsound random.orb @s ~ ~ ~ 1.00 1.00 1.00
execute @a[scores={tpa:math=0}] ~ ~ ~ particle minecraft:totem_particle ~ ~1.5 ~
#播放音效和粒子



execute @a[tag=tpa:ete_true,scores={tpa:setting_28=1}] ~ ~ ~ tellraw @s {"rawtext":[{"text":"§f[§6事件ID§f:§b"},{"score":{"objective":"tpa:data_save","name":"execute_num"}},{"text":"§f] §a您已成功从§f(§b"},{"score":{"objective":"tpa:posx","name":"@s"}},{"text":"§f,§b"},{"score":{"objective":"tpa:posy","name":"@s"}},{"text":"§f,§b"},{"score":{"objective":"tpa:posz","name":"@s"}},{"text":"§f)§a"},{"text":"传送到§e"},{"selector":"@a[scores={tpa:math=0}]"},{"text":"§f(UID§3-§b"},{"score":{"objective":"uid","name":"@a[scores={tpa:math=0}]"}},{"text":"§f)§a的身边§f！\n§a目的地坐标§7：§f(§b"},{"score":{"objective":"tpa:posx","name":"@a[scores={tpa:math=0}]"}},{"text":"§f,§b"},{"score":{"objective":"tpa:posy","name":"@a[scores={tpa:math=0}]"}},{"text":"§f,§b"},{"score":{"objective":"tpa:posz","name":"@a[scores={tpa:math=0}]"}},{"text":" §a维度变化情况§f(§b0§a为主世界§f，§b1§a为下界§b，§b2§a为末地§f)§7：§b"},{"score":{"objective":"dimension","name":"@s"}},{"text":"§l§f→§r§b"},{"score":{"objective":"dimension","name":"@a[scores={tpa:math=0}]\n§f=========="}}]}
#向执行者播放Tellraw
execute @a[scores={tpa:math=0,tpa:setting_28=1}] ~ ~ ~ tellraw @s {"rawtext":[{"text":"§f[§6事件ID§f:§b"},{"score":{"objective":"tpa:data_save","name":"execute_num"}},{"text":"§f] §e"},{"selector":"@a[scores={tpa:math=0}]"},{"text":"§f(UID§3-§b"},{"score":{"objective":"uid","name":"@a[scores={tpa:math=0}]"}},{"text":"§f)§a已成功传送到您身边§f(§b"},{"score":{"objective":"tpa:posx","name":"@s"}},{"text":"§f,§b"},{"score":{"objective":"tpa:posy","name":"@s"}},{"text":"§f,§b"},{"score":{"objective":"tpa:posz","name":"@s"}},{"text":"§f)"},{"text":"§7！§7(§3TA§b执行了该会话§f§f)"}]}
#向被请求者播放Tellraw
#播放通知-2



execute @a[tag=tpa:ete_true] ~ ~ ~ tellraw @a[scores={administrator=1}] {"rawtext":[{"text":"§f[§dTpa§f·§c日志]\n§6事件ID§f:§b"},{"score":{"objective":"tpa:data_save","name":"execute_num"}},{"text":"\n§a详细内容§f：§e"},{"selector":"@s"},{"text":"§f(UID§3-§b"},{"score":{"objective":"uid","name":"@s"}},{"text":"§f)§a已成功从§f(§b"},{"score":{"objective":"tpa:posx","name":"@s"}},{"text":"§f,§b"},{"score":{"objective":"tpa:posy","name":"@s"}},{"text":"§f,§b"},{"score":{"objective":"tpa:posz","name":"@s"}},{"text":"§f)§a"},{"text":"传送到§e"},{"selector":"@a[scores={tpa:math=0}]"},{"text":"§f(UID§3-§b"},{"score":{"objective":"uid","name":"@a[scores={tpa:math=0}]"}},{"text":"§f)§a所在的位置§f。\n§a目的地坐标§7：§f(§b"},{"score":{"objective":"tpa:posx","name":"@a[scores={tpa:math=0}]"}},{"text":"§f,§b"},{"score":{"objective":"tpa:posy","name":"@a[scores={tpa:math=0}]"}},{"text":"§f,§b"},{"score":{"objective":"tpa:posz","name":"@a[scores={tpa:math=0}]"}},{"text":"\n§a维度变化情况§f(§b0§a为主世界§f，§b1§a为下界§b，§b2§a为末地§f)§7：§b"},{"score":{"objective":"dimension","name":"@s"}},{"text":"§l§f→§r§b"},{"score":{"objective":"dimension","name":"@a[scores={tpa:math=0}]\n§f=========="}}]}
execute @a[scores={administrator=1}] ~ ~ ~ playsound random.toast @s ~ ~ ~ 1.00 1.00 1.00
#向所有在线的管理员播放Tellraw和音效
#播放通知-3



execute @a[tag=tpa:ete_true] ~ ~ ~ tag @s remove tpa:execute_teleport
execute @a[tag=tpa:ete_true] ~ ~ ~ tag @s remove tpa:et_ergodic
execute @a[tag=tpa:ete_true] ~ ~ ~ tag @s remove tpa:ete_allow_7
execute @a[tag=tpa:ete_true] ~ ~ ~ tag @s remove tpa:ete_allow_8
execute @a[tag=tpa:ete_true] ~ ~ ~ tag @s remove tpa:ete_allow_9
execute @a[tag=tpa:ete_true] ~ ~ ~ tag @s remove tpa:ute_true
>>>>>>> d95f919c53aa8612409504198bbed77f930d5f64
#清理标签并结束遍历状态