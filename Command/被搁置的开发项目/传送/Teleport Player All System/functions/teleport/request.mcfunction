<<<<<<< HEAD
tag @a[tag=tpa:request_teleport,c=1] add tpa:rt_ergodic
#有序遍历1名玩家



scoreboard players reset * tpa:math
#清理计算用计分板上的数据
execute @a[tag=!tpa:rt_ergodic] ~ ~ ~ scoreboard players operation @s tpa:math = @s uid
#同步uid数据到计算用计分板
execute @a[tag=!tpa:rt_ergodic] ~ ~ ~ scoreboard players operation @s tpa:math -= @a[tag=tpa:rt_ergodic] tpa:panel_int
#减分
execute @a[scores={tpa:math=0},c=1] ~ ~ ~ tag @a[tag=tpa:rt_ergodic] add tpa:rte_allow_1
#判0
#检验目标玩家是否存在



scoreboard players reset * tpa:math
#清理计算用计分板上的数据
execute @e[tag=tpa:uid_save] ~ ~ ~ scoreboard players operation @s tpa:math = @s tpa:uid_save_t
#同步代表实体的uid数据(目标玩家のuid)到计算用计分板
execute @e[tag=tpa:uid_save] ~ ~ ~ scoreboard players operation @s tpa:math -= @a[tag=tpa:rt_ergodic] tpa:panel_int
#减分
execute @e[scores={tpa:math=0},type=minecraft:armor_stand] ~ ~ ~ tag @s add tpa:ls_mark
#判0

scoreboard players reset * tpa:math
#清理计算用计分板上的数据
execute @e[tag=tpa:ls_mark] ~ ~ ~ scoreboard players operation @s tpa:math = @s tpa:uid_save_r
#同步指定的代表实体的uid数据(请求者のuid)到计算用计分板
execute @e[tag=tpa:ls_mark] ~ ~ ~ scoreboard players operation @s tpa:math -= @a[tag=tpa:rt_ergodic] uid
#减分
execute @e[scores={tpa:math=0},c=1,type=minecraft:armor_stand] ~ ~ ~ tag @a[tag=tpa:rt_ergodic] add tpa:rte_allow_2
#判0
execute @e[tag=tpa:ls_mark] ~ ~ ~ tag @s remove tpa:ls_mark
#清理标签
#检验代表目标玩家的代表实体是否存在



scoreboard players reset * tpa:math
#清理计算用计分板上的数据
execute @a[tag=tpa:rt_ergodic] ~ ~ ~ scoreboard players operation @s tpa:math = @s tpa:request_num
#同步当前已请求数到计算用计分板
execute @a[tag=tpa:rt_ergodic] ~ ~ ~ scoreboard players operation @s tpa:math -= @s tpa:r_num_max
#减分
execute @a[tag=tpa:rt_ergodic,scores={tpa:math=..-1}] ~ ~ ~ tag @s add tpa:rte_allow_3
#判断
#检验总请求数(还未失效的)是否达到上限



execute @a[tag=tpa:rt_ergodic,tag=tpa:rte_allow_1,tag=!tpa:rte_allow_2,tag=tpa:rte_allow_3] ~ ~ ~ tag @s add tpa:rte_true
execute @a[tag=!tpa:rte_true,tag=tpa:rt_ergodic] ~ ~ ~ tag @s add tpa:rte_false
#添加标签
execute @a[tag=tpa:rte_true] ~ ~ ~ function teleport/RequestReturnTrue
execute @a[tag=tpa:rte_false] ~ ~ ~ function teleport/RequestReturnFalse
=======
tag @a[tag=tpa:request_teleport,c=1] add tpa:rt_ergodic
#有序遍历1名玩家



scoreboard players reset * tpa:math
#清理计算用计分板上的数据
execute @a[tag=!tpa:rt_ergodic] ~ ~ ~ scoreboard players operation @s tpa:math = @s uid
#同步uid数据到计算用计分板
execute @a[tag=!tpa:rt_ergodic] ~ ~ ~ scoreboard players operation @s tpa:math -= @a[tag=tpa:rt_ergodic] tpa:panel_int
#减分
execute @a[scores={tpa:math=0},c=1] ~ ~ ~ tag @a[tag=tpa:rt_ergodic] add tpa:rte_allow_1
#判0
#检验目标玩家是否存在



scoreboard players reset * tpa:math
#清理计算用计分板上的数据
execute @e[tag=tpa:uid_save] ~ ~ ~ scoreboard players operation @s tpa:math = @s tpa:uid_save_t
#同步代表实体的uid数据(目标玩家のuid)到计算用计分板
execute @e[tag=tpa:uid_save] ~ ~ ~ scoreboard players operation @s tpa:math -= @a[tag=tpa:rt_ergodic] tpa:panel_int
#减分
execute @e[scores={tpa:math=0},type=minecraft:armor_stand] ~ ~ ~ tag @s add tpa:ls_mark
#判0

scoreboard players reset * tpa:math
#清理计算用计分板上的数据
execute @e[tag=tpa:ls_mark] ~ ~ ~ scoreboard players operation @s tpa:math = @s tpa:uid_save_r
#同步指定的代表实体的uid数据(请求者のuid)到计算用计分板
execute @e[tag=tpa:ls_mark] ~ ~ ~ scoreboard players operation @s tpa:math -= @a[tag=tpa:rt_ergodic] uid
#减分
execute @e[scores={tpa:math=0},c=1,type=minecraft:armor_stand] ~ ~ ~ tag @a[tag=tpa:rt_ergodic] add tpa:rte_allow_2
#判0
execute @e[tag=tpa:ls_mark] ~ ~ ~ tag @s remove tpa:ls_mark
#清理标签
#检验代表目标玩家的代表实体是否存在



scoreboard players reset * tpa:math
#清理计算用计分板上的数据
execute @a[tag=tpa:rt_ergodic] ~ ~ ~ scoreboard players operation @s tpa:math = @s tpa:request_num
#同步当前已请求数到计算用计分板
execute @a[tag=tpa:rt_ergodic] ~ ~ ~ scoreboard players operation @s tpa:math -= @s tpa:r_num_max
#减分
execute @a[tag=tpa:rt_ergodic,scores={tpa:math=..-1}] ~ ~ ~ tag @s add tpa:rte_allow_3
#判断
#检验总请求数(还未失效的)是否达到上限



execute @a[tag=tpa:rt_ergodic,tag=tpa:rte_allow_1,tag=!tpa:rte_allow_2,tag=tpa:rte_allow_3] ~ ~ ~ tag @s add tpa:rte_true
execute @a[tag=!tpa:rte_true,tag=tpa:rt_ergodic] ~ ~ ~ tag @s add tpa:rte_false
#添加标签
execute @a[tag=tpa:rte_true] ~ ~ ~ function teleport/RequestReturnTrue
execute @a[tag=tpa:rte_false] ~ ~ ~ function teleport/RequestReturnFalse
>>>>>>> d95f919c53aa8612409504198bbed77f930d5f64
#返回结果