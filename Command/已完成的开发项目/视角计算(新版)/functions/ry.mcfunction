scoreboard objectives add ry dummy
scoreboard players add @s ry 0
#start
execute @s[rym=64] ~~~scoreboard players add @s ry 6400000
execute @s[rym=64] ~~~tp~~~~-64.0
###1
execute @s[rym=32] ~~~scoreboard players add @s ry 3200000
execute @s[rym=32] ~~~tp~~~~-32.0
###2
execute @s[rym=16] ~~~scoreboard players add @s ry 1600000
execute @s[rym=16] ~~~tp~~~~-16.0
###3
execute @s[rym=8] ~~~scoreboard players add @s ry 800000
execute @s[rym=8] ~~~tp~~~~-8.0
###4
execute @s[rym=4] ~~~scoreboard players add @s ry 400000
execute @s[rym=4] ~~~tp~~~~-4.0
###5
execute @s[rym=2] ~~~scoreboard players add @s ry 200000
execute @s[rym=2] ~~~tp~~~~-2.0
###6
execute @s[rym=1] ~~~scoreboard players add @s ry 100000
execute @s[rym=1] ~~~tp~~~~-1.0
##整数部分
execute @s[rym=0.8] ~~~scoreboard players add @s ry 80000
execute @s[rym=0.8] ~~~tp~~~~-0.8
###1
execute @s[rym=0.4] ~~~scoreboard players add @s ry 40000
execute @s[rym=0.4] ~~~tp~~~~-0.4
###2
execute @s[rym=0.2] ~~~scoreboard players add @s ry 20000
execute @s[rym=0.2] ~~~tp~~~~-0.2
###3
execute @s[rym=0.1] ~~~scoreboard players add @s ry 10000
execute @s[rym=0.1] ~~~tp~~~~-0.1
###4
execute @s[rym=0.08] ~~~scoreboard players add @s ry 8000
execute @s[rym=0.08] ~~~tp~~~~-0.08
###5
execute @s[rym=0.04] ~~~scoreboard players add @s ry 4000
execute @s[rym=0.04] ~~~tp~~~~-0.04
###6
execute @s[rym=0.02] ~~~scoreboard players add @s ry 2000
execute @s[rym=0.02] ~~~tp~~~~-0.02
###7
execute @s[rym=0.01] ~~~scoreboard players add @s ry 1000
execute @s[rym=0.01] ~~~tp~~~~-0.01
###8
execute @s[rym=0.008] ~~~scoreboard players add @s ry 800
execute @s[rym=0.008] ~~~tp~~~~-0.008
###9
execute @s[rym=0.004] ~~~scoreboard players add @s ry 400
execute @s[rym=0.004] ~~~tp~~~~-0.004
###10
execute @s[rym=0.002] ~~~scoreboard players add @s ry 200
execute @s[rym=0.002] ~~~tp~~~~-0.002
###11
execute @s[rym=0.001] ~~~scoreboard players add @s ry 100
execute @s[rym=0.001] ~~~tp~~~~-0.001
###12
execute @s[rym=0.0008] ~~~scoreboard players add @s ry 80
execute @s[rym=0.0008] ~~~tp~~~~-0.0008
###13
execute @s[rym=0.0004] ~~~scoreboard players add @s ry 40
execute @s[rym=0.0004] ~~~tp~~~~-0.0004
###14
execute @s[rym=0.0002] ~~~scoreboard players add @s ry 20
execute @s[rym=0.0002] ~~~tp~~~~-0.0002
###15
execute @s[rym=0.0001] ~~~scoreboard players add @s ry 10
execute @s[rym=0.0001] ~~~tp~~~~-0.0001
###16
execute @s[rym=0.00008] ~~~scoreboard players add @s ry 8
execute @s[rym=0.00008] ~~~tp~~~~-0.00008
###17
execute @s[rym=0.00004] ~~~scoreboard players add @s ry 4
execute @s[rym=0.00004] ~~~tp~~~~-0.00004
###18
execute @s[rym=0.00002] ~~~scoreboard players add @s ry 2
execute @s[rym=0.00002] ~~~tp~~~~-0.00002
###19
execute @s[rym=0.00001] ~~~scoreboard players add @s ry 1
execute @s[rym=0.00001] ~~~tp~~~~-0.00001
###20
##小数部分
#get_ry
scoreboard objectives add ry_0 dummy
scoreboard players operation @s ry_0 = @s ry
#scores_operation_=