tag @a[tag=tpa:turn_down_teleport,c=1] add tpa:tdt_ergodic
#有序遍历1名玩家



scoreboard players reset * tpa:math
#清理计算用计分板上的数据
execute @a[tag=!tpa:tdt_ergodic] ~ ~ ~ scoreboard players operation @s tpa:math = @s uid
#同步uid数据到计算用计分板
execute @a[tag=!tpa:tdt_ergodic] ~ ~ ~ scoreboard players operation @s tpa:math -= @a[tag=tpa:tdt_ergodic] tpa:panel_int
#减分
execute @a[scores={tpa:math=0},c=1] ~ ~ ~ tag @a[tag=tpa:tdt_ergodic] add tpa:tdte_allow_13
#判0
#检验请求者是否存在



scoreboard players reset * tpa:math
#清理计算用计分板上的数据
execute @e[tag=tpa:uid_save] ~ ~ ~ scoreboard players operation @s tpa:math = @s tpa:uid_save_r
#同步代表实体的uid数据(请求者のuid)到计算用计分板
execute @e[tag=tpa:uid_save] ~ ~ ~ scoreboard players operation @s tpa:math -= @a[tag=tpa:tdt_ergodic] tpa:panel_int
#减分
execute @e[scores={tpa:math=0},type=minecraft:armor_stand] ~ ~ ~ tag @s add tpa:ls_mark
#判0

scoreboard players reset * tpa:math
#清理计算用计分板上的数据
execute @e[tag=tpa:ls_mark] ~ ~ ~ scoreboard players operation @s tpa:math = @s tpa:uid_save_t
#同步指定的代表实体的uid数据(被请求者のuid)到计算用计分板
execute @e[tag=tpa:ls_mark] ~ ~ ~ scoreboard players operation @s tpa:math -= @a[tag=tpa:tdt_ergodic] uid
#减分
execute @e[scores={tpa:math=0},c=1,type=minecraft:armor_stand] ~ ~ ~ tag @a[tag=tpa:tdt_ergodic] add tpa:tdte_allow_14
#判0
execute @e[tag=tpa:ls_mark] ~ ~ ~ tag @s remove tpa:ls_mark
#清理标签
#检验代表目标玩家的代表实体是否存在



execute @e[scores={tpa:math=0,tpa:kill_time=1..},c=1,type=minecraft:armor_stand] ~ ~ ~ tag @a[tag=tpa:tdt_ergodic] add tpa:tdte_allow_15
#检验代表请求者的代表实体是否失效



execute @a[tag=tpa:tdt_ergodic,tag=tpa:tdte_allow_13,tag=tpa:tdte_allow_14,tag=tpa:tdte_allow_15] ~ ~ ~ tag @s add tpa:tdte_true
execute @a[tag=!tpa:tdte_true,tag=tpa:tdt_ergodic] ~ ~ ~ tag @s add tpa:tdte_false
#添加标签
execute @a[tag=tpa:tdte_true] ~ ~ ~ function teleport/TurnDownReturnTrue
execute @a[tag=tpa:tdte_false] ~ ~ ~ function teleport/TurnDownReturnFalse
#返回结果