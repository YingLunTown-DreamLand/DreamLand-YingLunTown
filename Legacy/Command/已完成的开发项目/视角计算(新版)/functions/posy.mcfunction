summon armor_stand replace_target
summon armor_stand posy_get
#summon_armor_stand
tag @e[name=replace_target,type=armor_stand,c=1,r=1] add r_t
tag @e[name=posy_get,type=armor_stand,c=1,r=1] add p_g
#add_tag
execute @e[tag=p_g] ~~~tp~ 0.0~
scoreboard objectives add posy dummy
scoreboard players reset * posy
scoreboard players add @e[tag=r_t] posy 0
#prepare
execute @e[tag=r_t] ~~~execute @s[y=-10,dy=1] ~~~tag @s add y_fu
execute @e[tag=y_fu] ~~~tp~~10.0~
#prepare_0
execute @e[tag=p_g] ~~~execute @e[tag=r_t,rm=256] ~~~scoreboard players add @s posy 256000000
execute @e[tag=p_g] ~~~execute @e[tag=r_t,rm=256] ~~~execute @e[tag=p_g] ~~~tp~~256.0~
###1
execute @e[tag=p_g] ~~~execute @e[tag=r_t,rm=128] ~~~scoreboard players add @s posy 128000000
execute @e[tag=p_g] ~~~execute @e[tag=r_t,rm=128] ~~~execute @e[tag=p_g] ~~~tp~~128.0~
###2
execute @e[tag=p_g] ~~~execute @e[tag=r_t,rm=64] ~~~scoreboard players add @s posy 64000000
execute @e[tag=p_g] ~~~execute @e[tag=r_t,rm=64] ~~~execute @e[tag=p_g] ~~~tp~~64.0~
###3
execute @e[tag=p_g] ~~~execute @e[tag=r_t,rm=32] ~~~scoreboard players add @s posy 32000000
execute @e[tag=p_g] ~~~execute @e[tag=r_t,rm=32] ~~~execute @e[tag=p_g] ~~~tp~~32.0~
###4
execute @e[tag=p_g] ~~~execute @e[tag=r_t,rm=16] ~~~scoreboard players add @s posy 16000000
execute @e[tag=p_g] ~~~execute @e[tag=r_t,rm=16] ~~~execute @e[tag=p_g] ~~~tp~~16.0~
###5
execute @e[tag=p_g] ~~~execute @e[tag=r_t,rm=8] ~~~scoreboard players add @s posy 8000000
execute @e[tag=p_g] ~~~execute @e[tag=r_t,rm=8] ~~~execute @e[tag=p_g] ~~~tp~~8.0~
###6
execute @e[tag=p_g] ~~~execute @e[tag=r_t,rm=4] ~~~scoreboard players add @s posy 4000000
execute @e[tag=p_g] ~~~execute @e[tag=r_t,rm=4] ~~~execute @e[tag=p_g] ~~~tp~~4.0~
###7
execute @e[tag=p_g] ~~~execute @e[tag=r_t,rm=2] ~~~scoreboard players add @s posy 2000000
execute @e[tag=p_g] ~~~execute @e[tag=r_t,rm=2] ~~~execute @e[tag=p_g] ~~~tp~~2.0~
###8
execute @e[tag=p_g] ~~~execute @e[tag=r_t,rm=1] ~~~scoreboard players add @s posy 1000000
execute @e[tag=p_g] ~~~execute @e[tag=r_t,rm=1] ~~~execute @e[tag=p_g] ~~~tp~~1.0~
###9
##整数部分
execute @e[tag=p_g] ~~~execute @e[tag=r_t,rm=0.8] ~~~scoreboard players add @s posy 800000
execute @e[tag=p_g] ~~~execute @e[tag=r_t,rm=0.8] ~~~execute @e[tag=p_g] ~~~tp~~0.8~
###1
execute @e[tag=p_g] ~~~execute @e[tag=r_t,rm=0.4] ~~~scoreboard players add @s posy 400000
execute @e[tag=p_g] ~~~execute @e[tag=r_t,rm=0.4] ~~~execute @e[tag=p_g] ~~~tp~~0.4~
###2
execute @e[tag=p_g] ~~~execute @e[tag=r_t,rm=0.2] ~~~scoreboard players add @s posy 200000
execute @e[tag=p_g] ~~~execute @e[tag=r_t,rm=0.2] ~~~execute @e[tag=p_g] ~~~tp~~0.2~
###3
execute @e[tag=p_g] ~~~execute @e[tag=r_t,rm=0.1] ~~~scoreboard players add @s posy 100000
execute @e[tag=p_g] ~~~execute @e[tag=r_t,rm=0.1] ~~~execute @e[tag=p_g] ~~~tp~~0.1~
###4
execute @e[tag=p_g] ~~~execute @e[tag=r_t,rm=0.08] ~~~scoreboard players add @s posy 80000
execute @e[tag=p_g] ~~~execute @e[tag=r_t,rm=0.08] ~~~execute @e[tag=p_g] ~~~tp~~0.08~
###5
execute @e[tag=p_g] ~~~execute @e[tag=r_t,rm=0.04] ~~~scoreboard players add @s posy 40000
execute @e[tag=p_g] ~~~execute @e[tag=r_t,rm=0.04] ~~~execute @e[tag=p_g] ~~~tp~~0.04~
###6
execute @e[tag=p_g] ~~~execute @e[tag=r_t,rm=0.02] ~~~scoreboard players add @s posy 20000
execute @e[tag=p_g] ~~~execute @e[tag=r_t,rm=0.02] ~~~execute @e[tag=p_g] ~~~tp~~0.02~
###7
execute @e[tag=p_g] ~~~execute @e[tag=r_t,rm=0.01] ~~~scoreboard players add @s posy 10000
execute @e[tag=p_g] ~~~execute @e[tag=r_t,rm=0.01] ~~~execute @e[tag=p_g] ~~~tp~~0.01~
###8
execute @e[tag=p_g] ~~~execute @e[tag=r_t,rm=0.008] ~~~scoreboard players add @s posy 8000
execute @e[tag=p_g] ~~~execute @e[tag=r_t,rm=0.008] ~~~execute @e[tag=p_g] ~~~tp~~0.008~
###9
execute @e[tag=p_g] ~~~execute @e[tag=r_t,rm=0.004] ~~~scoreboard players add @s posy 4000
execute @e[tag=p_g] ~~~execute @e[tag=r_t,rm=0.004] ~~~execute @e[tag=p_g] ~~~tp~~0.004~
###10
execute @e[tag=p_g] ~~~execute @e[tag=r_t,rm=0.002] ~~~scoreboard players add @s posy 2000
execute @e[tag=p_g] ~~~execute @e[tag=r_t,rm=0.002] ~~~execute @e[tag=p_g] ~~~tp~~0.002~
###11
execute @e[tag=p_g] ~~~execute @e[tag=r_t,rm=0.001] ~~~scoreboard players add @s posy 1000
execute @e[tag=p_g] ~~~execute @e[tag=r_t,rm=0.001] ~~~execute @e[tag=p_g] ~~~tp~~0.001~
###12
execute @e[tag=p_g] ~~~execute @e[tag=r_t,rm=0.0008] ~~~scoreboard players add @s posy 800
execute @e[tag=p_g] ~~~execute @e[tag=r_t,rm=0.0008] ~~~execute @e[tag=p_g] ~~~tp~~0.0008~
###13
execute @e[tag=p_g] ~~~execute @e[tag=r_t,rm=0.0004] ~~~scoreboard players add @s posy 400
execute @e[tag=p_g] ~~~execute @e[tag=r_t,rm=0.0004] ~~~execute @e[tag=p_g] ~~~tp~~0.0004~
###14
execute @e[tag=p_g] ~~~execute @e[tag=r_t,rm=0.0002] ~~~scoreboard players add @s posy 200
execute @e[tag=p_g] ~~~execute @e[tag=r_t,rm=0.0002] ~~~execute @e[tag=p_g] ~~~tp~~0.0002~
###15
execute @e[tag=p_g] ~~~execute @e[tag=r_t,rm=0.0001] ~~~scoreboard players add @s posy 100
execute @e[tag=p_g] ~~~execute @e[tag=r_t,rm=0.0001] ~~~execute @e[tag=p_g] ~~~tp~~0.0001~
###16
execute @e[tag=p_g] ~~~execute @e[tag=r_t,rm=0.00008] ~~~scoreboard players add @s posy 80
execute @e[tag=p_g] ~~~execute @e[tag=r_t,rm=0.00008] ~~~execute @e[tag=p_g] ~~~tp~~0.00008~
###17
execute @e[tag=p_g] ~~~execute @e[tag=r_t,rm=0.00004] ~~~scoreboard players add @s posy 40
execute @e[tag=p_g] ~~~execute @e[tag=r_t,rm=0.00004] ~~~execute @e[tag=p_g] ~~~tp~~0.00004~
###18
execute @e[tag=p_g] ~~~execute @e[tag=r_t,rm=0.00002] ~~~scoreboard players add @s posy 20
execute @e[tag=p_g] ~~~execute @e[tag=r_t,rm=0.00002] ~~~execute @e[tag=p_g] ~~~tp~~0.00002~
###19
execute @e[tag=p_g] ~~~execute @e[tag=r_t,rm=0.00001] ~~~scoreboard players add @s posy 10
execute @e[tag=p_g] ~~~execute @e[tag=r_t,rm=0.00001] ~~~execute @e[tag=p_g] ~~~tp~~0.00001~
###20
execute @e[tag=p_g] ~~~execute @e[tag=r_t,rm=0.000008] ~~~scoreboard players add @s posy 8
execute @e[tag=p_g] ~~~execute @e[tag=r_t,rm=0.000008] ~~~execute @e[tag=p_g] ~~~tp~~0.000008~
###21
execute @e[tag=p_g] ~~~execute @e[tag=r_t,rm=0.000004] ~~~scoreboard players add @s posy 4
execute @e[tag=p_g] ~~~execute @e[tag=r_t,rm=0.000004] ~~~execute @e[tag=p_g] ~~~tp~~0.000004~
###22
execute @e[tag=p_g] ~~~execute @e[tag=r_t,rm=0.000002] ~~~scoreboard players add @s posy 2
execute @e[tag=p_g] ~~~execute @e[tag=r_t,rm=0.000002] ~~~execute @e[tag=p_g] ~~~tp~~0.000002~
###23
execute @e[tag=p_g] ~~~execute @e[tag=r_t,rm=0.000001] ~~~scoreboard players add @s posy 1
execute @e[tag=p_g] ~~~execute @e[tag=r_t,rm=0.000001] ~~~execute @e[tag=p_g] ~~~tp~~0.000001~
###24
##小数部分
#get_posy
execute @e[tag=r_t,tag=y_fu] ~~~scoreboard players remove @s posy 10000000
#posy_return
scoreboard objectives add posy_0 dummy
scoreboard players operation @s posy_0 = @e[tag=r_t] posy
#scores_operation_=
execute @e[tag=r_t] ~~~tp~~32767.0~
execute @e[tag=p_g] ~~~tp~~32767.0~
kill @e[tag=r_t]
kill @e[tag=p_g]
#kill_armor_stand