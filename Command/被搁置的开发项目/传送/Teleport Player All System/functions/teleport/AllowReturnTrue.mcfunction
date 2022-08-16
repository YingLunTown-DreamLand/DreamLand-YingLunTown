execute @e[scores={tpa:math=0},c=1,type=minecraft:armor_stand] ~ ~ ~ tag @s add tpa:mark_allow
#更改代表实体的标记状态



execute @e[scores={tpa:math=0},c=1,type=minecraft:armor_stand] ~ ~ ~ scoreboard players operation @s tpa:kill_time = allow tpa:timeout
execute @e[scores={tpa:math=0},c=1,type=minecraft:armor_stand] ~ ~ ~ scoreboard players operation @s tpa:kill_time *= ratio tpa:timeout
#重置倒计时



scoreboard players reset * tpa:math
#清理计算用计分板上的数据
execute @a[tag=!tpa:ate_true] ~ ~ ~ scoreboard players operation @s tpa:math = @s uid
#同步uid数据到计算用计分板
execute @a[tag=!tpa:ate_true] ~ ~ ~ scoreboard players operation @s tpa:math -= @a[tag=tpa:ate_true] tpa:panel_int
#减分
#计算出要通知的目标玩家

execute @a[tag=tpa:ate_true] ~ ~ ~ tellraw @s {"rawtext":[{"text":"§a已成功§o接受§r§e"},{"selector":"@a[scores={tpa:math=0}]"},{"text":"§f(UID§3-§b"},{"score":{"objective":"uid","name":"@a[scores={tpa:math=0}]"}},{"text":"§f)§a向您发送的传送请求§f！\n§a该会话将于§b"},{"score":{"objective":"tpa:timeout","name":"allow"}},{"text":"§a分钟后失效"}]}
execute @a[scores={tpa:math=0}] ~ ~ ~ tellraw @s {"rawtext":[{"text":"§f[§dTpa§f·§c通知§f] §a玩家"},{"selector":"@a[tag=tpa:ate_true]"},{"text":"§f(UID§3-§b"},{"score":{"objective":"uid","name":"@a[tag=tpa:ate_true]"}},{"text":"§f)§o§a接受§r§a了你发送的传送请求§f，§a快去前往Tpa菜单执行吧§f！\n§a该会话将于§b"},{"score":{"objective":"tpa:timeout","name":"allow"}},{"text":"§a分钟后失效"}]}
execute @a[tag=tpa:ate_true] ~ ~ ~ playsound random.levelup @s ~ ~ ~ 1.00 1.00 1.00
execute @a[scores={tpa:math=0}] ~ ~ ~ playsound random.toast @s ~ ~ ~ 1.00 1.00 1.00
#发送通知和播放音效



execute @a[tag=tpa:ate_true] ~ ~ ~ tp ~ ~ ~ ~ 0.01
execute @a[tag=tpa:ate_true] ~ ~ ~ scoreboard players set @s tpa:wait 7
execute @a[tag=tpa:ate_true] ~ ~ ~ tag @s add tpa:wait
#更改朝向



execute @a[tag=tpa:ate_true,scores={tpa:screen=8}] ~ ~ ~ tag @s add tpa:change_player
execute @a[tag=tpa:ate_true,scores={tpa:screen=8}] ~ ~ ~ tag @s add tpa:change_player_system
#切换显示对象



execute @a[tag=tpa:ate_true] ~ ~ ~ tag @s remove tpa:allow_teleport
execute @a[tag=tpa:ate_true] ~ ~ ~ tag @s remove tpa:at_ergodic
execute @a[tag=tpa:ate_true] ~ ~ ~ tag @s remove tpa:ate_allow_4
execute @a[tag=tpa:ate_true] ~ ~ ~ tag @s remove tpa:ate_allow_5
execute @a[tag=tpa:ate_true] ~ ~ ~ tag @s remove tpa:ate_allow_6
execute @a[tag=tpa:ate_true] ~ ~ ~ tag @s remove tpa:ate_true
#清理标签并结束遍历状态