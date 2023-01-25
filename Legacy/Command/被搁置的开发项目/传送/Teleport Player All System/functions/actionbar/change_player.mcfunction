<<<<<<< HEAD
tag @a[c=1,tag=tpa:change_player] add tpa:er_ergodic
#有序遍历1名玩家



execute @a[tag=tpa:er_ergodic,scores={tpa:screen=7..9}] ~ ~ ~ tag @s add tpa:ere_allow_0
execute @a[tag=!tpa:ere_allow_0,tag=tpa:er_ergodic] ~ ~ ~ tag @s remove tpa:change_player
execute @a[tag=!tpa:ere_allow_0,tag=tpa:er_ergodic] ~ ~ ~ tag @s remove tpa:er_ergodic
execute @a[tag=tpa:ere_allow_0] ~ ~ ~ tag @s remove tpa:ere_allow_0
#检验分数是否满足条件(若不满足则删除对应标签并结束遍历状态)



execute @a[tag=tpa:er_ergodic,scores={tpa:screen=7,tpa:setting_27=!1}] ~ ~ ~ execute @a[tag=!tpa:er_ergodic,c=1] ~ ~ ~ tag @a[tag=tpa:er_ergodic] add tpa:ere_true
#若请求传送列表内有可显示的玩家则将 被遍历者 的结果返回状态变更为 True

execute @a[tag=tpa:er_ergodic,scores={tpa:screen=7,tpa:setting_27=1}] ~ ~ ~ scoreboard players reset * tpa:math
#清理计算用计分板上的数据
execute @a[tag=tpa:er_ergodic,scores={tpa:screen=7,tpa:setting_27=1}] ~ ~ ~ execute @e[tag=tpa:uid_save] ~ ~ ~ scoreboard players operation @s tpa:math = @s tpa:uid_save_r
#同步代表实体的uid数据(请求者のuid)到计算用计分板
execute @a[tag=tpa:er_ergodic,scores={tpa:screen=7,tpa:setting_27=1}] ~ ~ ~ execute @e[tag=tpa:uid_save] ~ ~ ~ scoreboard players operation @s tpa:math -= @a[tag=tpa:er_ergodic] uid
#减分
execute @a[tag=tpa:er_ergodic,scores={tpa:screen=7,tpa:setting_27=1}] ~ ~ ~ execute @e[scores={tpa:math=0},type=minecraft:armor_stand,c=1] ~ ~ ~ tag @a[tag=tpa:er_ergodic] add tpa:ere_true
#判0
#若撤销传送列表内有可显示的玩家则将 被遍历者 的结果返回状态变更为 True

execute @a[tag=tpa:er_ergodic,scores={tpa:screen=8}] ~ ~ ~ scoreboard players reset * tpa:math
#清理计算用计分板上的数据
execute @a[tag=tpa:er_ergodic,scores={tpa:screen=8}] ~ ~ ~ execute @e[tag=tpa:uid_save] ~ ~ ~ scoreboard players operation @s tpa:math = @s tpa:uid_save_t
#同步代表实体的uid数据(被请求者のuid)到计算用计分板
execute @a[tag=tpa:er_ergodic,scores={tpa:screen=8}] ~ ~ ~ execute @e[tag=tpa:uid_save] ~ ~ ~ scoreboard players operation @s tpa:math -= @a[tag=tpa:er_ergodic] uid
#减分
execute @a[tag=tpa:er_ergodic,scores={tpa:screen=8}] ~ ~ ~ execute @e[scores={tpa:math=0},type=minecraft:armor_stand,c=1] ~ ~ ~ tag @a[tag=tpa:er_ergodic] add tpa:ere_true
#若 接受/拒绝 传送列表内有可显示的玩家则将 被遍历者 的结果返回状态变更为 True

execute @a[tag=tpa:er_ergodic,scores={tpa:screen=9}] ~ ~ ~ scoreboard players reset * tpa:math
#清理计算用计分板上的数据
execute @a[tag=tpa:er_ergodic,scores={tpa:screen=9}] ~ ~ ~ execute @e[tag=tpa:mark_allow] ~ ~ ~ scoreboard players operation @s tpa:math = @s tpa:uid_save_r
#同步代表实体的uid数据(请求者のuid)到计算用计分板
execute @a[tag=tpa:er_ergodic,scores={tpa:screen=9}] ~ ~ ~ execute @e[tag=tpa:mark_allow] ~ ~ ~ scoreboard players operation @s tpa:math -= @a[tag=tpa:er_ergodic] uid
#减分
execute @a[tag=tpa:er_ergodic,scores={tpa:screen=9}] ~ ~ ~ execute @e[scores={tpa:math=0},type=minecraft:armor_stand,c=1] ~ ~ ~ tag @a[tag=tpa:er_ergodic] add tpa:ere_true
#判0
#若执行传送列表内有可显示的玩家则将 被遍历者 的结果返回状态变更为 True
#验证列表中是否有可供显示的成员



execute @a[tag=!tpa:ere_true,tag=tpa:er_ergodic] ~ ~ ~ tag @s add tpa:ere_false
#添加标签
execute @a[tag=tpa:ere_true] ~ ~ ~ function actionbar/ChangePlayerReturnTrue
execute @a[tag=tpa:ere_false] ~ ~ ~ function actionbar/ChangePlayerReturnFalse
=======
tag @a[c=1,tag=tpa:change_player] add tpa:er_ergodic
#有序遍历1名玩家



execute @a[tag=tpa:er_ergodic,scores={tpa:screen=7..9}] ~ ~ ~ tag @s add tpa:ere_allow_0
execute @a[tag=!tpa:ere_allow_0,tag=tpa:er_ergodic] ~ ~ ~ tag @s remove tpa:change_player
execute @a[tag=!tpa:ere_allow_0,tag=tpa:er_ergodic] ~ ~ ~ tag @s remove tpa:er_ergodic
execute @a[tag=tpa:ere_allow_0] ~ ~ ~ tag @s remove tpa:ere_allow_0
#检验分数是否满足条件(若不满足则删除对应标签并结束遍历状态)



execute @a[tag=tpa:er_ergodic,scores={tpa:screen=7,tpa:setting_27=!1}] ~ ~ ~ execute @a[tag=!tpa:er_ergodic,c=1] ~ ~ ~ tag @a[tag=tpa:er_ergodic] add tpa:ere_true
#若请求传送列表内有可显示的玩家则将 被遍历者 的结果返回状态变更为 True

execute @a[tag=tpa:er_ergodic,scores={tpa:screen=7,tpa:setting_27=1}] ~ ~ ~ scoreboard players reset * tpa:math
#清理计算用计分板上的数据
execute @a[tag=tpa:er_ergodic,scores={tpa:screen=7,tpa:setting_27=1}] ~ ~ ~ execute @e[tag=tpa:uid_save] ~ ~ ~ scoreboard players operation @s tpa:math = @s tpa:uid_save_r
#同步代表实体的uid数据(请求者のuid)到计算用计分板
execute @a[tag=tpa:er_ergodic,scores={tpa:screen=7,tpa:setting_27=1}] ~ ~ ~ execute @e[tag=tpa:uid_save] ~ ~ ~ scoreboard players operation @s tpa:math -= @a[tag=tpa:er_ergodic] uid
#减分
execute @a[tag=tpa:er_ergodic,scores={tpa:screen=7,tpa:setting_27=1}] ~ ~ ~ execute @e[scores={tpa:math=0},type=minecraft:armor_stand,c=1] ~ ~ ~ tag @a[tag=tpa:er_ergodic] add tpa:ere_true
#判0
#若撤销传送列表内有可显示的玩家则将 被遍历者 的结果返回状态变更为 True

execute @a[tag=tpa:er_ergodic,scores={tpa:screen=8}] ~ ~ ~ scoreboard players reset * tpa:math
#清理计算用计分板上的数据
execute @a[tag=tpa:er_ergodic,scores={tpa:screen=8}] ~ ~ ~ execute @e[tag=tpa:uid_save] ~ ~ ~ scoreboard players operation @s tpa:math = @s tpa:uid_save_t
#同步代表实体的uid数据(被请求者のuid)到计算用计分板
execute @a[tag=tpa:er_ergodic,scores={tpa:screen=8}] ~ ~ ~ execute @e[tag=tpa:uid_save] ~ ~ ~ scoreboard players operation @s tpa:math -= @a[tag=tpa:er_ergodic] uid
#减分
execute @a[tag=tpa:er_ergodic,scores={tpa:screen=8}] ~ ~ ~ execute @e[scores={tpa:math=0},type=minecraft:armor_stand,c=1] ~ ~ ~ tag @a[tag=tpa:er_ergodic] add tpa:ere_true
#若 接受/拒绝 传送列表内有可显示的玩家则将 被遍历者 的结果返回状态变更为 True

execute @a[tag=tpa:er_ergodic,scores={tpa:screen=9}] ~ ~ ~ scoreboard players reset * tpa:math
#清理计算用计分板上的数据
execute @a[tag=tpa:er_ergodic,scores={tpa:screen=9}] ~ ~ ~ execute @e[tag=tpa:mark_allow] ~ ~ ~ scoreboard players operation @s tpa:math = @s tpa:uid_save_r
#同步代表实体的uid数据(请求者のuid)到计算用计分板
execute @a[tag=tpa:er_ergodic,scores={tpa:screen=9}] ~ ~ ~ execute @e[tag=tpa:mark_allow] ~ ~ ~ scoreboard players operation @s tpa:math -= @a[tag=tpa:er_ergodic] uid
#减分
execute @a[tag=tpa:er_ergodic,scores={tpa:screen=9}] ~ ~ ~ execute @e[scores={tpa:math=0},type=minecraft:armor_stand,c=1] ~ ~ ~ tag @a[tag=tpa:er_ergodic] add tpa:ere_true
#判0
#若执行传送列表内有可显示的玩家则将 被遍历者 的结果返回状态变更为 True
#验证列表中是否有可供显示的成员



execute @a[tag=!tpa:ere_true,tag=tpa:er_ergodic] ~ ~ ~ tag @s add tpa:ere_false
#添加标签
execute @a[tag=tpa:ere_true] ~ ~ ~ function actionbar/ChangePlayerReturnTrue
execute @a[tag=tpa:ere_false] ~ ~ ~ function actionbar/ChangePlayerReturnFalse
>>>>>>> d95f919c53aa8612409504198bbed77f930d5f64
#返回结果