summon armor_stand player_place
summon armor_stand facing_place ^^^1
#summon_armor_stand
execute @e[name=player_place,type=armor_stand,r=3,c=1] ~~~tag @s add player_p
execute @e[name=facing_place,type=armor_stand,r=5,c=1] ~~~tag @s add facing_p
#add_tag
execute @e[tag=player_p] ~~~function posy
execute @e[tag=facing_p] ~~~function posy
#get_posy
scoreboard objectives add posy_1 dummy
scoreboard players reset * posy_1
scoreboard players operation @e[tag=facing_p] posy_1 = @e[tag=facing_p] posy_0
scoreboard players operation @e[tag=facing_p] posy_1 -= @e[tag=player_p] posy_0
#计算y轴值差
execute @e[tag=facing_p,scores={posy_1=1..}] ~~~tag @s add rx_fu
#判断玩家视角是否为负
scoreboard objectives add posy_2 dummy
scoreboard players reset * posy_2
execute @e[tag=facing_p,scores={posy_1=1..}] ~~~scoreboard players operation @e[tag=player_p] posy_2 = @s posy_1
execute @e[tag=facing_p,scores={posy_1=1..}] ~~~tag @e[tag=player_p] add posy_return
##0
execute @e[tag=facing_p,scores={posy_1=..1}] ~~~scoreboard players operation @s posy_2 = @s posy_1
execute @e[tag=facing_p,scores={posy_1=..1}] ~~~tag @s add posy_return
##1
execute @e[tag=posy_return] ~~~function posy_return
##2
#还原y轴值差
tag @e[tag=player_p] add target
tag @e[tag=facing_p] add execute
execute @e[tag=execute] ~~~function rm
#获取平面内2点距离
execute @e[tag=player_p] ~~~tp~~~ 0.0 0.0
tp @e[tag=facing_p] @e[tag=player_p]
execute @e[tag=facing_p] ~~~function y_return
execute @e[tag=facing_p] ~~~function rm_return
#三角形投影至平面
execute @e[tag=player_p] ~~~tp~~~facing @e[tag=facing_p]
#facing
execute @e[tag=player_p] ~~~function ry
#get_ry
scoreboard players set jian ry_0 9000000
scoreboard players operation jian ry_0 -= @e[tag=player_p] ry_0
scoreboard players operation @e[tag=player_p] ry_0 = jian ry_0
scoreboard players set fu ry_0 -1
execute @e[tag=rx_fu] ~~~scoreboard players operation @e[tag=player_p] ry_0 *= fu ry_0
#get_true_rx_scores
scoreboard objectives add rx dummy
scoreboard players operation @s rx = @e[tag=player_p] ry_0
#scores_operation_=
execute @e[tag=player_p] ~~~tp~~32767.0~
execute @e[tag=facing_p] ~~~tp~~32767.0~
kill @e[tag=player_p]
kill @e[tag=facing_p]
#kill_armor_stand