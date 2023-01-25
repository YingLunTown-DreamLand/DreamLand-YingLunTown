<<<<<<< HEAD
tag @a[tag=tpa:undo_teleport,c=1] add tpa:ut_ergodic
#有序遍历1名玩家



scoreboard players reset * tpa:math
#清理计算用计分板上的数据
execute @a[tag=!tpa:ut_ergodic] ~ ~ ~ scoreboard players operation @s tpa:math = @s uid
#同步uid数据到计算用计分板
execute @a[tag=!tpa:ut_ergodic] ~ ~ ~ scoreboard players operation @s tpa:math -= @a[tag=tpa:ut_ergodic] tpa:panel_int
#减分
execute @a[scores={tpa:math=0},c=1] ~ ~ ~ tag @a[tag=tpa:ut_ergodic] add tpa:ute_allow_16
#判0
#检验目标玩家是否存在



scoreboard players reset * tpa:math
#清理计算用计分板上的数据
execute @e[tag=tpa:uid_save] ~ ~ ~ scoreboard players operation @s tpa:math = @s tpa:uid_save_t
#同步代表实体的uid数据(被请求者のuid)到计算用计分板
execute @e[tag=tpa:uid_save] ~ ~ ~ scoreboard players operation @s tpa:math -= @a[tag=tpa:ut_ergodic] tpa:panel_int
#减分
execute @e[scores={tpa:math=0},type=minecraft:armor_stand] ~ ~ ~ tag @s add tpa:ls_mark
#判0

scoreboard players reset * tpa:math
#清理计算用计分板上的数据
execute @e[tag=tpa:ls_mark] ~ ~ ~ scoreboard players operation @s tpa:math = @s tpa:uid_save_r
#同步指定的代表实体的uid数据(请求者のuid)到计算用计分板
execute @e[tag=tpa:ls_mark] ~ ~ ~ scoreboard players operation @s tpa:math -= @a[tag=tpa:ut_ergodic] uid
#减分
execute @e[scores={tpa:math=0},c=1,type=minecraft:armor_stand] ~ ~ ~ tag @a[tag=tpa:ut_ergodic] add tpa:ute_allow_17
#判0
execute @e[tag=tpa:ls_mark] ~ ~ ~ tag @s remove tpa:ls_mark
#清理标签
#检验代表目标玩家的代表实体是否存在



execute @e[scores={tpa:math=0,tpa:kill_time=1..},c=1,type=minecraft:armor_stand] ~ ~ ~ tag @a[tag=tpa:ut_ergodic] add tpa:ute_allow_18
#检验代表请求者的代表实体是否失效



execute @a[tag=tpa:ut_ergodic,tag=tpa:ute_allow_16,tag=tpa:ute_allow_17,tag=tpa:ute_allow_18] ~ ~ ~ tag @s add tpa:ute_true
execute @a[tag=!tpa:ute_true,tag=tpa:ut_ergodic] ~ ~ ~ tag @s add tpa:ute_false
#添加标签
execute @a[tag=tpa:ute_true] ~ ~ ~ function teleport/UndoReturnTrue
execute @a[tag=tpa:ute_false] ~ ~ ~ function teleport/UndoReturnFalse
=======
tag @a[tag=tpa:undo_teleport,c=1] add tpa:ut_ergodic
#有序遍历1名玩家



scoreboard players reset * tpa:math
#清理计算用计分板上的数据
execute @a[tag=!tpa:ut_ergodic] ~ ~ ~ scoreboard players operation @s tpa:math = @s uid
#同步uid数据到计算用计分板
execute @a[tag=!tpa:ut_ergodic] ~ ~ ~ scoreboard players operation @s tpa:math -= @a[tag=tpa:ut_ergodic] tpa:panel_int
#减分
execute @a[scores={tpa:math=0},c=1] ~ ~ ~ tag @a[tag=tpa:ut_ergodic] add tpa:ute_allow_16
#判0
#检验目标玩家是否存在



scoreboard players reset * tpa:math
#清理计算用计分板上的数据
execute @e[tag=tpa:uid_save] ~ ~ ~ scoreboard players operation @s tpa:math = @s tpa:uid_save_t
#同步代表实体的uid数据(被请求者のuid)到计算用计分板
execute @e[tag=tpa:uid_save] ~ ~ ~ scoreboard players operation @s tpa:math -= @a[tag=tpa:ut_ergodic] tpa:panel_int
#减分
execute @e[scores={tpa:math=0},type=minecraft:armor_stand] ~ ~ ~ tag @s add tpa:ls_mark
#判0

scoreboard players reset * tpa:math
#清理计算用计分板上的数据
execute @e[tag=tpa:ls_mark] ~ ~ ~ scoreboard players operation @s tpa:math = @s tpa:uid_save_r
#同步指定的代表实体的uid数据(请求者のuid)到计算用计分板
execute @e[tag=tpa:ls_mark] ~ ~ ~ scoreboard players operation @s tpa:math -= @a[tag=tpa:ut_ergodic] uid
#减分
execute @e[scores={tpa:math=0},c=1,type=minecraft:armor_stand] ~ ~ ~ tag @a[tag=tpa:ut_ergodic] add tpa:ute_allow_17
#判0
execute @e[tag=tpa:ls_mark] ~ ~ ~ tag @s remove tpa:ls_mark
#清理标签
#检验代表目标玩家的代表实体是否存在



execute @e[scores={tpa:math=0,tpa:kill_time=1..},c=1,type=minecraft:armor_stand] ~ ~ ~ tag @a[tag=tpa:ut_ergodic] add tpa:ute_allow_18
#检验代表请求者的代表实体是否失效



execute @a[tag=tpa:ut_ergodic,tag=tpa:ute_allow_16,tag=tpa:ute_allow_17,tag=tpa:ute_allow_18] ~ ~ ~ tag @s add tpa:ute_true
execute @a[tag=!tpa:ute_true,tag=tpa:ut_ergodic] ~ ~ ~ tag @s add tpa:ute_false
#添加标签
execute @a[tag=tpa:ute_true] ~ ~ ~ function teleport/UndoReturnTrue
execute @a[tag=tpa:ute_false] ~ ~ ~ function teleport/UndoReturnFalse
>>>>>>> d95f919c53aa8612409504198bbed77f930d5f64
#返回结果