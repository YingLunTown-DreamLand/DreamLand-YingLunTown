scoreboard players reset * tpa:math
#清理计算用计分板上的数据
execute @a[tag=!tpa:ere_true] ~ ~ ~ scoreboard players operation @s tpa:math = @s uid
#同步uid数据到计算用计分板
execute @a[tag=!tpa:ere_true] ~ ~ ~ scoreboard players operation @s tpa:math -= @a[tag=tpa:ere_true] uid
#减分
execute @a[tag=tpa:ere_true] ~ ~ ~ scoreboard players set @s tpa:math 2147483647
#设置分数
execute @a[tag=!tpa:ere_true,scores={tpa:math=1..}] ~ ~ ~ tag @s add tpa:ls_mark
#设置临时标记
execute @a[tag=tpa:ls_mark] ~ ~ ~ scoreboard players operation @a[tag=tpa:ere_true] tpa:math < @s uid
#选出uid最小的并将这一uid赋值到 被遍历者 的 tpa:math 计分板上
execute @a[tag=tpa:ls_mark] ~ ~ ~ tag @s remove tpa:ls_mark
#清除临时标记
execute @a[tag=tpa:ere_true,scores={tpa:math=2147483647}] ~ ~ ~ scoreboard players operation @s tpa:math < @a[tag=!tpa:ere_true] uid
#若不存在比 被遍历者 更大uid的玩家在线，则从所有不是 被遍历者 的在线玩家中选取最小的uid并将它赋值到 被遍历者 的 tpa:math 计分板上
execute @a[tag=!tpa:ere_true] ~ ~ ~ scoreboard players operation @s tpa:math = @s uid
#同步uid数据到计算用计分板
execute @a[tag=!tpa:ere_true] ~ ~ ~ scoreboard players operation @s tpa:math -= @a[tag=tpa:ere_true] tpa:math
#减分
#计算出要显示的玩家M



execute @a[tag=tpa:ere_true] ~ ~ ~ title @s times 10 2147483647 2147483647
execute @a[tag=tpa:ere_true] ~ ~ ~ title @s title §l§6> §e@e[scores={tpa:math=0}] §6<
execute @a[tag=tpa:ere_true] ~ ~ ~ title @s subtitle §l|§b您选中了这名玩家§f|
execute @a[tag=tpa:ere_true] ~ ~ ~ title @s reset
#显示对象



scoreboard players operation num tpa:math = @a[scores={tpa:math=0}] uid
#同步uid数据到计算用计分板
execute @a[tag=tpa:ere_true] ~ ~ ~ scoreboard players operation num tpa:math -= @s tpa:panel_int
#减分
execute @a[tag=tpa:ere_true] ~ ~ ~ scoreboard players operation @s tpa:math = num tpa:math
#同步计算结果到计算用计分板
execute @a[tag=tpa:ere_true,scores={tpa:math=!0}] ~ ~ ~ tag @s add tpa:eret_changed
#判0
execute @a[tag=tpa:ere_true] ~ ~ ~ scoreboard players reset @s tpa:math
#清理分数
#检验面板上输入的uid整型数值是否更改



execute @a[tag=tpa:ere_true] ~ ~ ~ scoreboard players operation @s tpa:panel_int = @a[scores={tpa:math=0}] uid
#同步面板上输入的uid整型数值为玩家M的uid



execute @a[tag=tpa:ere_true,tag=!tpa:change_player_system,tag=tpa:eret_changed] ~ ~ ~ playsound random.click @s ~ ~ ~ 1.00 1.00 1.00
#播放音效



execute @a[tag=tpa:ere_true] ~ ~ ~ scoreboard players reset * tpa:math
#清理计算用计分板上的数据
execute @a[tag=tpa:ere_true] ~ ~ ~ execute @e[tag=tpa:uid_save] ~ ~ ~ scoreboard players operation @s tpa:math = @s tpa:uid_save_r
#同步代表实体的uid数据(请求者のuid)到计算用计分板
execute @e[tag=tpa:uid_save] ~ ~ ~ scoreboard players operation @s tpa:math -= @a[tag=tpa:ere_true,scores={tpa:screen=8}] tpa:panel_int
execute @e[tag=tpa:uid_save] ~ ~ ~ scoreboard players operation @s tpa:math -= @a[tag=tpa:ere_true,scores={tpa:screen=7,tpa:setting_27=1}] uid
execute @e[tag=tpa:uid_save] ~ ~ ~ scoreboard players operation @s tpa:math -= @a[tag=tpa:ere_true,scores={tpa:screen=9}] uid
#减分
execute @e[scores={tpa:math=0},type=minecraft:armor_stand] ~ ~ ~ tag @s add tpa:ls_mark
#判0

scoreboard players reset * tpa:math
#清理计算用计分板上的数据
execute @e[tag=tpa:ls_mark] ~ ~ ~ scoreboard players operation @s tpa:math = @s tpa:uid_save_t
#同步指定的代表实体的uid数据(被请求者のuid)到计算用计分板
execute @e[tag=tpa:ls_mark] ~ ~ ~ scoreboard players operation @s tpa:math -= @a[tag=tpa:ere_true,scores={tpa:screen=8}] uid
execute @e[tag=tpa:ls_mark] ~ ~ ~ scoreboard players operation @s tpa:math -= @a[tag=tpa:ere_true,scores={tpa:screen=7,tpa:setting_27=1}] tpa:panel_int
execute @e[tag=tpa:ls_mark] ~ ~ ~ scoreboard players operation @s tpa:math -= @a[tag=tpa:ere_true,scores={tpa:screen=9}] tpa:panel_int
#减分
execute @e[scores={tpa:math=0},c=1,type=minecraft:armor_stand] ~ ~ ~ scoreboard players operation @a[tag=tpa:ere_true] tpa:countdown = @s tpa:tpa:kill_time
#判0
execute @e[tag=tpa:ls_mark] ~ ~ ~ tag @s remove tpa:ls_mark
#清理标签
#获取代表实体失效的倒计时并同步到对应计分板上



execute @a[tag=tpa:ere_true] ~ ~ ~ tag @s remove tpa:change_player
execute @a[tag=tpa:ere_true] ~ ~ ~ tag @s remove tpa:change_player_system
execute @a[tag=tpa:ere_true] ~ ~ ~ tag @s remove tpa:er_ergodic
execute @a[tag=tpa:ere_true] ~ ~ ~ tag @s remove tpa:eret_changed
execute @a[tag=tpa:ere_true] ~ ~ ~ tag @s remove tpa:ere_true
#清理标签并结束遍历状态