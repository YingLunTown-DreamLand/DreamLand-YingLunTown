<<<<<<< HEAD
scoreboard objectives add rm dummy
scoreboard objectives add rm_0 dummy
//add_scoreboard
summon armor_stand rm_replace_player ~~~
execute @e[tag=target] ~~~summon armor_stand rm_target_replace
//summon_armor_stand
tag @e[name=rm_replace_player,type=armor_stand,r=1,c=1] add rm_r_p
execute @e[tag=target] ~~~tag @e[name=rm_target_replace,type=armor_stand,r=1,c=1] add rm_t_r
//add_tag
scoreboard players reset * rm
scoreboard players set @s rm_0 0
scoreboard players set @e[tag=rm_t_r] rm 0
scoreboard players set @e[tag=rm_r_p] rm 0
//reset_scoreboard
execute @e[tag=rm_r_p] ~~~tp~~~facing @e[tag=rm_t_r] 
//facing
execute @e[tag=rm_r_p] ~~~execute @e[tag=rm_t_r,rm=256] ~~~scoreboard players add @e[tag=rm_r_p] rm 256000000
execute @e[tag=rm_r_p] ~~~execute @e[tag=rm_t_r,rm=256] ~~~execute @e[tag=rm_r_p] ~~~tp^^^256
#1
execute @e[tag=rm_r_p] ~~~execute @e[tag=rm_t_r,rm=128] ~~~scoreboard players add @e[tag=rm_r_p] rm 128000000
execute @e[tag=rm_r_p] ~~~execute @e[tag=rm_t_r,rm=128] ~~~execute @e[tag=rm_r_p] ~~~tp^^^128
#2
execute @e[tag=rm_r_p] ~~~execute @e[tag=rm_t_r,rm=64] ~~~scoreboard players add @e[tag=rm_r_p] rm 64000000
execute @e[tag=rm_r_p] ~~~execute @e[tag=rm_t_r,rm=64] ~~~execute @e[tag=rm_r_p] ~~~tp^^^64
#3
execute @e[tag=rm_r_p] ~~~execute @e[tag=rm_t_r,rm=32] ~~~scoreboard players add @e[tag=rm_r_p] rm 32000000
execute @e[tag=rm_r_p] ~~~execute @e[tag=rm_t_r,rm=32] ~~~execute @e[tag=rm_r_p] ~~~tp^^^32
#4
execute @e[tag=rm_r_p] ~~~execute @e[tag=rm_t_r,rm=16] ~~~scoreboard players add @e[tag=rm_r_p] rm 16000000
execute @e[tag=rm_r_p] ~~~execute @e[tag=rm_t_r,rm=16] ~~~execute @e[tag=rm_r_p] ~~~tp^^^16
#5
execute @e[tag=rm_r_p] ~~~execute @e[tag=rm_t_r,rm=8] ~~~scoreboard players add @e[tag=rm_r_p] rm 8000000
execute @e[tag=rm_r_p] ~~~execute @e[tag=rm_t_r,rm=8] ~~~execute @e[tag=rm_r_p] ~~~tp^^^8
#6
execute @e[tag=rm_r_p] ~~~execute @e[tag=rm_t_r,rm=4] ~~~scoreboard players add @e[tag=rm_r_p] rm 4000000
execute @e[tag=rm_r_p] ~~~execute @e[tag=rm_t_r,rm=4] ~~~execute @e[tag=rm_r_p] ~~~tp^^^4
#7
execute @e[tag=rm_r_p] ~~~execute @e[tag=rm_t_r,rm=2] ~~~scoreboard players add @e[tag=rm_r_p] rm 2000000
execute @e[tag=rm_r_p] ~~~execute @e[tag=rm_t_r,rm=2] ~~~execute @e[tag=rm_r_p] ~~~tp^^^2
#8
execute @e[tag=rm_r_p] ~~~execute @e[tag=rm_t_r,rm=1] ~~~scoreboard players add @e[tag=rm_r_p] rm 1000000
execute @e[tag=rm_r_p] ~~~execute @e[tag=rm_t_r,rm=1] ~~~execute @e[tag=rm_r_p] ~~~tp^^^1
#9
//get_zs_rm
execute @e[tag=rm_r_p] ~~~execute @e[tag=rm_t_r,rm=0.8] ~~~scoreboard players add @e[tag=rm_r_p] rm 800000
execute @e[tag=rm_r_p] ~~~execute @e[tag=rm_t_r,rm=0.8] ~~~execute @e[tag=rm_r_p] ~~~tp^^^0.8
#1
execute @e[tag=rm_r_p] ~~~execute @e[tag=rm_t_r,rm=0.4] ~~~scoreboard players add @e[tag=rm_r_p] rm 400000
execute @e[tag=rm_r_p] ~~~execute @e[tag=rm_t_r,rm=0.4] ~~~execute @e[tag=rm_r_p] ~~~tp^^^0.4
#2
execute @e[tag=rm_r_p] ~~~execute @e[tag=rm_t_r,rm=0.2] ~~~scoreboard players add @e[tag=rm_r_p] rm 200000
execute @e[tag=rm_r_p] ~~~execute @e[tag=rm_t_r,rm=0.2] ~~~execute @e[tag=rm_r_p] ~~~tp^^^0.2
#3
execute @e[tag=rm_r_p] ~~~execute @e[tag=rm_t_r,rm=0.1] ~~~scoreboard players add @e[tag=rm_r_p] rm 100000
execute @e[tag=rm_r_p] ~~~execute @e[tag=rm_t_r,rm=0.1] ~~~execute @e[tag=rm_r_p] ~~~tp^^^0.1
#4
execute @e[tag=rm_r_p] ~~~execute @e[tag=rm_t_r,rm=0.08] ~~~scoreboard players add @e[tag=rm_r_p] rm 80000
execute @e[tag=rm_r_p] ~~~execute @e[tag=rm_t_r,rm=0.08] ~~~execute @e[tag=rm_r_p] ~~~tp^^^0.08
#5
execute @e[tag=rm_r_p] ~~~execute @e[tag=rm_t_r,rm=0.04] ~~~scoreboard players add @e[tag=rm_r_p] rm 40000
execute @e[tag=rm_r_p] ~~~execute @e[tag=rm_t_r,rm=0.04] ~~~execute @e[tag=rm_r_p] ~~~tp^^^0.04
#6
execute @e[tag=rm_r_p] ~~~execute @e[tag=rm_t_r,rm=0.02] ~~~scoreboard players add @e[tag=rm_r_p] rm 20000
execute @e[tag=rm_r_p] ~~~execute @e[tag=rm_t_r,rm=0.02] ~~~execute @e[tag=rm_r_p] ~~~tp^^^0.02
#7
execute @e[tag=rm_r_p] ~~~execute @e[tag=rm_t_r,rm=0.01] ~~~scoreboard players add @e[tag=rm_r_p] rm 10000
execute @e[tag=rm_r_p] ~~~execute @e[tag=rm_t_r,rm=0.01] ~~~execute @e[tag=rm_r_p] ~~~tp^^^0.01
#8
execute @e[tag=rm_r_p] ~~~execute @e[tag=rm_t_r,rm=0.008] ~~~scoreboard players add @e[tag=rm_r_p] rm 8000
execute @e[tag=rm_r_p] ~~~execute @e[tag=rm_t_r,rm=0.008] ~~~execute @e[tag=rm_r_p] ~~~tp^^^0.008
#9
execute @e[tag=rm_r_p] ~~~execute @e[tag=rm_t_r,rm=0.004] ~~~scoreboard players add @e[tag=rm_r_p] rm 4000
execute @e[tag=rm_r_p] ~~~execute @e[tag=rm_t_r,rm=0.004] ~~~execute @e[tag=rm_r_p] ~~~tp^^^0.004
#10
execute @e[tag=rm_r_p] ~~~execute @e[tag=rm_t_r,rm=0.002] ~~~scoreboard players add @e[tag=rm_r_p] rm 2000
execute @e[tag=rm_r_p] ~~~execute @e[tag=rm_t_r,rm=0.002] ~~~execute @e[tag=rm_r_p] ~~~tp^^^0.002
#11
execute @e[tag=rm_r_p] ~~~execute @e[tag=rm_t_r,rm=0.001] ~~~scoreboard players add @e[tag=rm_r_p] rm 1000
execute @e[tag=rm_r_p] ~~~execute @e[tag=rm_t_r,rm=0.001] ~~~execute @e[tag=rm_r_p] ~~~tp^^^0.001
#12
execute @e[tag=rm_r_p] ~~~execute @e[tag=rm_t_r,rm=0.0008] ~~~scoreboard players add @e[tag=rm_r_p] rm 800
execute @e[tag=rm_r_p] ~~~execute @e[tag=rm_t_r,rm=0.0008] ~~~execute @e[tag=rm_r_p] ~~~tp^^^0.0008
#13
execute @e[tag=rm_r_p] ~~~execute @e[tag=rm_t_r,rm=0.0004] ~~~scoreboard players add @e[tag=rm_r_p] rm 400
execute @e[tag=rm_r_p] ~~~execute @e[tag=rm_t_r,rm=0.0004] ~~~execute @e[tag=rm_r_p] ~~~tp^^^0.0004
#14
execute @e[tag=rm_r_p] ~~~execute @e[tag=rm_t_r,rm=0.0002] ~~~scoreboard players add @e[tag=rm_r_p] rm 200
execute @e[tag=rm_r_p] ~~~execute @e[tag=rm_t_r,rm=0.0002] ~~~execute @e[tag=rm_r_p] ~~~tp^^^0.0002
#15
execute @e[tag=rm_r_p] ~~~execute @e[tag=rm_t_r,rm=0.0001] ~~~scoreboard players add @e[tag=rm_r_p] rm 100
execute @e[tag=rm_r_p] ~~~execute @e[tag=rm_t_r,rm=0.0001] ~~~execute @e[tag=rm_r_p] ~~~tp^^^0.0001
#16
execute @e[tag=rm_r_p] ~~~execute @e[tag=rm_t_r,rm=0.00008] ~~~scoreboard players add @e[tag=rm_r_p] rm 80
execute @e[tag=rm_r_p] ~~~execute @e[tag=rm_t_r,rm=0.00008] ~~~execute @e[tag=rm_r_p] ~~~tp^^^0.00008
#17
execute @e[tag=rm_r_p] ~~~execute @e[tag=rm_t_r,rm=0.00004] ~~~scoreboard players add @e[tag=rm_r_p] rm 40
execute @e[tag=rm_r_p] ~~~execute @e[tag=rm_t_r,rm=0.00004] ~~~execute @e[tag=rm_r_p] ~~~tp^^^0.00004
#18
execute @e[tag=rm_r_p] ~~~execute @e[tag=rm_t_r,rm=0.00002] ~~~scoreboard players add @e[tag=rm_r_p] rm 20
execute @e[tag=rm_r_p] ~~~execute @e[tag=rm_t_r,rm=0.00002] ~~~execute @e[tag=rm_r_p] ~~~tp^^^0.00002
#19
execute @e[tag=rm_r_p] ~~~execute @e[tag=rm_t_r,rm=0.00001] ~~~scoreboard players add @e[tag=rm_r_p] rm 10
execute @e[tag=rm_r_p] ~~~execute @e[tag=rm_t_r,rm=0.00001] ~~~execute @e[tag=rm_r_p] ~~~tp^^^0.00001
#20
execute @e[tag=rm_r_p] ~~~execute @e[tag=rm_t_r,rm=0.000008] ~~~scoreboard players add @e[tag=rm_r_p] rm 8
execute @e[tag=rm_r_p] ~~~execute @e[tag=rm_t_r,rm=0.000008] ~~~execute @e[tag=rm_r_p] ~~~tp^^^0.000008
#21
execute @e[tag=rm_r_p] ~~~execute @e[tag=rm_t_r,rm=0.000004] ~~~scoreboard players add @e[tag=rm_r_p] rm 4
execute @e[tag=rm_r_p] ~~~execute @e[tag=rm_t_r,rm=0.000004] ~~~execute @e[tag=rm_r_p] ~~~tp^^^0.000004
#22
execute @e[tag=rm_r_p] ~~~execute @e[tag=rm_t_r,rm=0.000002] ~~~scoreboard players add @e[tag=rm_r_p] rm 2
execute @e[tag=rm_r_p] ~~~execute @e[tag=rm_t_r,rm=0.000002] ~~~execute @e[tag=rm_r_p] ~~~tp^^^0.000002
#23
execute @e[tag=rm_r_p] ~~~execute @e[tag=rm_t_r,rm=0.000001] ~~~scoreboard players add @e[tag=rm_r_p] rm 1
execute @e[tag=rm_r_p] ~~~execute @e[tag=rm_t_r,rm=0.000001] ~~~execute @e[tag=rm_r_p] ~~~tp^^^0.000001
#24
//get_xs_rm
scoreboard players operation @s rm_0 = @e[tag=rm_r_p] rm
//scores_operation
execute @e[tag=rm_t_r] ~~~tp~~32767~
kill @e[tag=rm_t_r]
execute @e[tag=rm_r_p] ~~~tp~~32767~
kill @e[tag=rm_r_p]
=======
scoreboard objectives add rm dummy
scoreboard objectives add rm_0 dummy
//add_scoreboard
summon armor_stand rm_replace_player ~~~
execute @e[tag=target] ~~~summon armor_stand rm_target_replace
//summon_armor_stand
tag @e[name=rm_replace_player,type=armor_stand,r=1,c=1] add rm_r_p
execute @e[tag=target] ~~~tag @e[name=rm_target_replace,type=armor_stand,r=1,c=1] add rm_t_r
//add_tag
scoreboard players reset * rm
scoreboard players set @s rm_0 0
scoreboard players set @e[tag=rm_t_r] rm 0
scoreboard players set @e[tag=rm_r_p] rm 0
//reset_scoreboard
execute @e[tag=rm_r_p] ~~~tp~~~facing @e[tag=rm_t_r] 
//facing
execute @e[tag=rm_r_p] ~~~execute @e[tag=rm_t_r,rm=256] ~~~scoreboard players add @e[tag=rm_r_p] rm 256000000
execute @e[tag=rm_r_p] ~~~execute @e[tag=rm_t_r,rm=256] ~~~execute @e[tag=rm_r_p] ~~~tp^^^256
#1
execute @e[tag=rm_r_p] ~~~execute @e[tag=rm_t_r,rm=128] ~~~scoreboard players add @e[tag=rm_r_p] rm 128000000
execute @e[tag=rm_r_p] ~~~execute @e[tag=rm_t_r,rm=128] ~~~execute @e[tag=rm_r_p] ~~~tp^^^128
#2
execute @e[tag=rm_r_p] ~~~execute @e[tag=rm_t_r,rm=64] ~~~scoreboard players add @e[tag=rm_r_p] rm 64000000
execute @e[tag=rm_r_p] ~~~execute @e[tag=rm_t_r,rm=64] ~~~execute @e[tag=rm_r_p] ~~~tp^^^64
#3
execute @e[tag=rm_r_p] ~~~execute @e[tag=rm_t_r,rm=32] ~~~scoreboard players add @e[tag=rm_r_p] rm 32000000
execute @e[tag=rm_r_p] ~~~execute @e[tag=rm_t_r,rm=32] ~~~execute @e[tag=rm_r_p] ~~~tp^^^32
#4
execute @e[tag=rm_r_p] ~~~execute @e[tag=rm_t_r,rm=16] ~~~scoreboard players add @e[tag=rm_r_p] rm 16000000
execute @e[tag=rm_r_p] ~~~execute @e[tag=rm_t_r,rm=16] ~~~execute @e[tag=rm_r_p] ~~~tp^^^16
#5
execute @e[tag=rm_r_p] ~~~execute @e[tag=rm_t_r,rm=8] ~~~scoreboard players add @e[tag=rm_r_p] rm 8000000
execute @e[tag=rm_r_p] ~~~execute @e[tag=rm_t_r,rm=8] ~~~execute @e[tag=rm_r_p] ~~~tp^^^8
#6
execute @e[tag=rm_r_p] ~~~execute @e[tag=rm_t_r,rm=4] ~~~scoreboard players add @e[tag=rm_r_p] rm 4000000
execute @e[tag=rm_r_p] ~~~execute @e[tag=rm_t_r,rm=4] ~~~execute @e[tag=rm_r_p] ~~~tp^^^4
#7
execute @e[tag=rm_r_p] ~~~execute @e[tag=rm_t_r,rm=2] ~~~scoreboard players add @e[tag=rm_r_p] rm 2000000
execute @e[tag=rm_r_p] ~~~execute @e[tag=rm_t_r,rm=2] ~~~execute @e[tag=rm_r_p] ~~~tp^^^2
#8
execute @e[tag=rm_r_p] ~~~execute @e[tag=rm_t_r,rm=1] ~~~scoreboard players add @e[tag=rm_r_p] rm 1000000
execute @e[tag=rm_r_p] ~~~execute @e[tag=rm_t_r,rm=1] ~~~execute @e[tag=rm_r_p] ~~~tp^^^1
#9
//get_zs_rm
execute @e[tag=rm_r_p] ~~~execute @e[tag=rm_t_r,rm=0.8] ~~~scoreboard players add @e[tag=rm_r_p] rm 800000
execute @e[tag=rm_r_p] ~~~execute @e[tag=rm_t_r,rm=0.8] ~~~execute @e[tag=rm_r_p] ~~~tp^^^0.8
#1
execute @e[tag=rm_r_p] ~~~execute @e[tag=rm_t_r,rm=0.4] ~~~scoreboard players add @e[tag=rm_r_p] rm 400000
execute @e[tag=rm_r_p] ~~~execute @e[tag=rm_t_r,rm=0.4] ~~~execute @e[tag=rm_r_p] ~~~tp^^^0.4
#2
execute @e[tag=rm_r_p] ~~~execute @e[tag=rm_t_r,rm=0.2] ~~~scoreboard players add @e[tag=rm_r_p] rm 200000
execute @e[tag=rm_r_p] ~~~execute @e[tag=rm_t_r,rm=0.2] ~~~execute @e[tag=rm_r_p] ~~~tp^^^0.2
#3
execute @e[tag=rm_r_p] ~~~execute @e[tag=rm_t_r,rm=0.1] ~~~scoreboard players add @e[tag=rm_r_p] rm 100000
execute @e[tag=rm_r_p] ~~~execute @e[tag=rm_t_r,rm=0.1] ~~~execute @e[tag=rm_r_p] ~~~tp^^^0.1
#4
execute @e[tag=rm_r_p] ~~~execute @e[tag=rm_t_r,rm=0.08] ~~~scoreboard players add @e[tag=rm_r_p] rm 80000
execute @e[tag=rm_r_p] ~~~execute @e[tag=rm_t_r,rm=0.08] ~~~execute @e[tag=rm_r_p] ~~~tp^^^0.08
#5
execute @e[tag=rm_r_p] ~~~execute @e[tag=rm_t_r,rm=0.04] ~~~scoreboard players add @e[tag=rm_r_p] rm 40000
execute @e[tag=rm_r_p] ~~~execute @e[tag=rm_t_r,rm=0.04] ~~~execute @e[tag=rm_r_p] ~~~tp^^^0.04
#6
execute @e[tag=rm_r_p] ~~~execute @e[tag=rm_t_r,rm=0.02] ~~~scoreboard players add @e[tag=rm_r_p] rm 20000
execute @e[tag=rm_r_p] ~~~execute @e[tag=rm_t_r,rm=0.02] ~~~execute @e[tag=rm_r_p] ~~~tp^^^0.02
#7
execute @e[tag=rm_r_p] ~~~execute @e[tag=rm_t_r,rm=0.01] ~~~scoreboard players add @e[tag=rm_r_p] rm 10000
execute @e[tag=rm_r_p] ~~~execute @e[tag=rm_t_r,rm=0.01] ~~~execute @e[tag=rm_r_p] ~~~tp^^^0.01
#8
execute @e[tag=rm_r_p] ~~~execute @e[tag=rm_t_r,rm=0.008] ~~~scoreboard players add @e[tag=rm_r_p] rm 8000
execute @e[tag=rm_r_p] ~~~execute @e[tag=rm_t_r,rm=0.008] ~~~execute @e[tag=rm_r_p] ~~~tp^^^0.008
#9
execute @e[tag=rm_r_p] ~~~execute @e[tag=rm_t_r,rm=0.004] ~~~scoreboard players add @e[tag=rm_r_p] rm 4000
execute @e[tag=rm_r_p] ~~~execute @e[tag=rm_t_r,rm=0.004] ~~~execute @e[tag=rm_r_p] ~~~tp^^^0.004
#10
execute @e[tag=rm_r_p] ~~~execute @e[tag=rm_t_r,rm=0.002] ~~~scoreboard players add @e[tag=rm_r_p] rm 2000
execute @e[tag=rm_r_p] ~~~execute @e[tag=rm_t_r,rm=0.002] ~~~execute @e[tag=rm_r_p] ~~~tp^^^0.002
#11
execute @e[tag=rm_r_p] ~~~execute @e[tag=rm_t_r,rm=0.001] ~~~scoreboard players add @e[tag=rm_r_p] rm 1000
execute @e[tag=rm_r_p] ~~~execute @e[tag=rm_t_r,rm=0.001] ~~~execute @e[tag=rm_r_p] ~~~tp^^^0.001
#12
execute @e[tag=rm_r_p] ~~~execute @e[tag=rm_t_r,rm=0.0008] ~~~scoreboard players add @e[tag=rm_r_p] rm 800
execute @e[tag=rm_r_p] ~~~execute @e[tag=rm_t_r,rm=0.0008] ~~~execute @e[tag=rm_r_p] ~~~tp^^^0.0008
#13
execute @e[tag=rm_r_p] ~~~execute @e[tag=rm_t_r,rm=0.0004] ~~~scoreboard players add @e[tag=rm_r_p] rm 400
execute @e[tag=rm_r_p] ~~~execute @e[tag=rm_t_r,rm=0.0004] ~~~execute @e[tag=rm_r_p] ~~~tp^^^0.0004
#14
execute @e[tag=rm_r_p] ~~~execute @e[tag=rm_t_r,rm=0.0002] ~~~scoreboard players add @e[tag=rm_r_p] rm 200
execute @e[tag=rm_r_p] ~~~execute @e[tag=rm_t_r,rm=0.0002] ~~~execute @e[tag=rm_r_p] ~~~tp^^^0.0002
#15
execute @e[tag=rm_r_p] ~~~execute @e[tag=rm_t_r,rm=0.0001] ~~~scoreboard players add @e[tag=rm_r_p] rm 100
execute @e[tag=rm_r_p] ~~~execute @e[tag=rm_t_r,rm=0.0001] ~~~execute @e[tag=rm_r_p] ~~~tp^^^0.0001
#16
execute @e[tag=rm_r_p] ~~~execute @e[tag=rm_t_r,rm=0.00008] ~~~scoreboard players add @e[tag=rm_r_p] rm 80
execute @e[tag=rm_r_p] ~~~execute @e[tag=rm_t_r,rm=0.00008] ~~~execute @e[tag=rm_r_p] ~~~tp^^^0.00008
#17
execute @e[tag=rm_r_p] ~~~execute @e[tag=rm_t_r,rm=0.00004] ~~~scoreboard players add @e[tag=rm_r_p] rm 40
execute @e[tag=rm_r_p] ~~~execute @e[tag=rm_t_r,rm=0.00004] ~~~execute @e[tag=rm_r_p] ~~~tp^^^0.00004
#18
execute @e[tag=rm_r_p] ~~~execute @e[tag=rm_t_r,rm=0.00002] ~~~scoreboard players add @e[tag=rm_r_p] rm 20
execute @e[tag=rm_r_p] ~~~execute @e[tag=rm_t_r,rm=0.00002] ~~~execute @e[tag=rm_r_p] ~~~tp^^^0.00002
#19
execute @e[tag=rm_r_p] ~~~execute @e[tag=rm_t_r,rm=0.00001] ~~~scoreboard players add @e[tag=rm_r_p] rm 10
execute @e[tag=rm_r_p] ~~~execute @e[tag=rm_t_r,rm=0.00001] ~~~execute @e[tag=rm_r_p] ~~~tp^^^0.00001
#20
execute @e[tag=rm_r_p] ~~~execute @e[tag=rm_t_r,rm=0.000008] ~~~scoreboard players add @e[tag=rm_r_p] rm 8
execute @e[tag=rm_r_p] ~~~execute @e[tag=rm_t_r,rm=0.000008] ~~~execute @e[tag=rm_r_p] ~~~tp^^^0.000008
#21
execute @e[tag=rm_r_p] ~~~execute @e[tag=rm_t_r,rm=0.000004] ~~~scoreboard players add @e[tag=rm_r_p] rm 4
execute @e[tag=rm_r_p] ~~~execute @e[tag=rm_t_r,rm=0.000004] ~~~execute @e[tag=rm_r_p] ~~~tp^^^0.000004
#22
execute @e[tag=rm_r_p] ~~~execute @e[tag=rm_t_r,rm=0.000002] ~~~scoreboard players add @e[tag=rm_r_p] rm 2
execute @e[tag=rm_r_p] ~~~execute @e[tag=rm_t_r,rm=0.000002] ~~~execute @e[tag=rm_r_p] ~~~tp^^^0.000002
#23
execute @e[tag=rm_r_p] ~~~execute @e[tag=rm_t_r,rm=0.000001] ~~~scoreboard players add @e[tag=rm_r_p] rm 1
execute @e[tag=rm_r_p] ~~~execute @e[tag=rm_t_r,rm=0.000001] ~~~execute @e[tag=rm_r_p] ~~~tp^^^0.000001
#24
//get_xs_rm
scoreboard players operation @s rm_0 = @e[tag=rm_r_p] rm
//scores_operation
execute @e[tag=rm_t_r] ~~~tp~~32767~
kill @e[tag=rm_t_r]
execute @e[tag=rm_r_p] ~~~tp~~32767~
kill @e[tag=rm_r_p]
>>>>>>> d95f919c53aa8612409504198bbed77f930d5f64
//kill_armor_stand