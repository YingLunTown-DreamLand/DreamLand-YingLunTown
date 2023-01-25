scoreboard objectives add rm dummy
scoreboard players reset * rm
scoreboard players add @s rm 0
#prepare
execute @s ~~~tp~~~facing @e[tag=target]
#start
execute @s ~~~execute @e[tag=target,rm=2] ~~~scoreboard players add @s rm 2000000
execute @s ~~~execute @e[tag=target,rm=2] ~~~execute @e[tag=execute] ~~~tp^^^2.0
###1
execute @s ~~~execute @e[tag=target,rm=1] ~~~scoreboard players add @s rm 1000000
execute @s ~~~execute @e[tag=target,rm=1] ~~~execute @e[tag=execute] ~~~tp^^^1.0
###2
##整数部分
execute @s ~~~execute @e[tag=target,rm=0.8] ~~~scoreboard players add @s rm 800000
execute @s ~~~execute @e[tag=target,rm=0.8] ~~~execute @e[tag=execute] ~~~tp^^^0.8
###1
execute @s ~~~execute @e[tag=target,rm=0.4] ~~~scoreboard players add @s rm 400000
execute @s ~~~execute @e[tag=target,rm=0.4] ~~~execute @e[tag=execute] ~~~tp^^^0.4
###2
execute @s ~~~execute @e[tag=target,rm=0.2] ~~~scoreboard players add @s rm 200000
execute @s ~~~execute @e[tag=target,rm=0.2] ~~~execute @e[tag=execute] ~~~tp^^^0.2
###3
execute @s ~~~execute @e[tag=target,rm=0.1] ~~~scoreboard players add @s rm 100000
execute @s ~~~execute @e[tag=target,rm=0.1] ~~~execute @e[tag=execute] ~~~tp^^^0.1
###4
execute @s ~~~execute @e[tag=target,rm=0.08] ~~~scoreboard players add @s rm 80000
execute @s ~~~execute @e[tag=target,rm=0.08] ~~~execute @e[tag=execute] ~~~tp^^^0.08
###5
execute @s ~~~execute @e[tag=target,rm=0.04] ~~~scoreboard players add @s rm 40000
execute @s ~~~execute @e[tag=target,rm=0.04] ~~~execute @e[tag=execute] ~~~tp^^^0.04
###6
execute @s ~~~execute @e[tag=target,rm=0.02] ~~~scoreboard players add @s rm 20000
execute @s ~~~execute @e[tag=target,rm=0.02] ~~~execute @e[tag=execute] ~~~tp^^^0.02
###7
execute @s ~~~execute @e[tag=target,rm=0.01] ~~~scoreboard players add @s rm 10000
execute @s ~~~execute @e[tag=target,rm=0.01] ~~~execute @e[tag=execute] ~~~tp^^^0.01
###8
execute @s ~~~execute @e[tag=target,rm=0.008] ~~~scoreboard players add @s rm 8000
execute @s ~~~execute @e[tag=target,rm=0.008] ~~~execute @e[tag=execute] ~~~tp^^^0.008
###9
execute @s ~~~execute @e[tag=target,rm=0.004] ~~~scoreboard players add @s rm 4000
execute @s ~~~execute @e[tag=target,rm=0.004] ~~~execute @e[tag=execute] ~~~tp^^^0.004
###10
execute @s ~~~execute @e[tag=target,rm=0.002] ~~~scoreboard players add @s rm 2000
execute @s ~~~execute @e[tag=target,rm=0.002] ~~~execute @e[tag=execute] ~~~tp^^^0.002
###11
execute @s ~~~execute @e[tag=target,rm=0.001] ~~~scoreboard players add @s rm 1000
execute @s ~~~execute @e[tag=target,rm=0.001] ~~~execute @e[tag=execute] ~~~tp^^^0.001
###12
execute @s ~~~execute @e[tag=target,rm=0.0008] ~~~scoreboard players add @s rm 800
execute @s ~~~execute @e[tag=target,rm=0.0008] ~~~execute @e[tag=execute] ~~~tp^^^0.0008
###13
execute @s ~~~execute @e[tag=target,rm=0.0004] ~~~scoreboard players add @s rm 400
execute @s ~~~execute @e[tag=target,rm=0.0004] ~~~execute @e[tag=execute] ~~~tp^^^0.0004
###14
execute @s ~~~execute @e[tag=target,rm=0.0002] ~~~scoreboard players add @s rm 200
execute @s ~~~execute @e[tag=target,rm=0.0002] ~~~execute @e[tag=execute] ~~~tp^^^0.0002
###15
execute @s ~~~execute @e[tag=target,rm=0.0001] ~~~scoreboard players add @s rm 100
execute @s ~~~execute @e[tag=target,rm=0.0001] ~~~execute @e[tag=execute] ~~~tp^^^0.0001
###16
execute @s ~~~execute @e[tag=target,rm=0.00008] ~~~scoreboard players add @s rm 80
execute @s ~~~execute @e[tag=target,rm=0.00008] ~~~execute @e[tag=execute] ~~~tp^^^0.00008
###17
execute @s ~~~execute @e[tag=target,rm=0.00004] ~~~scoreboard players add @s rm 40
execute @s ~~~execute @e[tag=target,rm=0.00004] ~~~execute @e[tag=execute] ~~~tp^^^0.00004
###18
execute @s ~~~execute @e[tag=target,rm=0.00002] ~~~scoreboard players add @s rm 20
execute @s ~~~execute @e[tag=target,rm=0.00002] ~~~execute @e[tag=execute] ~~~tp^^^0.00002
###19
execute @s ~~~execute @e[tag=target,rm=0.00001] ~~~scoreboard players add @s rm 10
execute @s ~~~execute @e[tag=target,rm=0.00001] ~~~execute @e[tag=execute] ~~~tp^^^0.00001
###20
execute @s ~~~execute @e[tag=target,rm=0.000008] ~~~scoreboard players add @s rm 8
execute @s ~~~execute @e[tag=target,rm=0.000008] ~~~execute @e[tag=execute] ~~~tp^^^0.000008
###21
execute @s ~~~execute @e[tag=target,rm=0.000004] ~~~scoreboard players add @s rm 4
execute @s ~~~execute @e[tag=target,rm=0.000004] ~~~execute @e[tag=execute] ~~~tp^^^0.000004
###22
execute @s ~~~execute @e[tag=target,rm=0.000002] ~~~scoreboard players add @s rm 2
execute @s ~~~execute @e[tag=target,rm=0.000002] ~~~execute @e[tag=execute] ~~~tp^^^0.000002
###23
execute @s ~~~execute @e[tag=target,rm=0.000001] ~~~scoreboard players add @s rm 1
execute @s ~~~execute @e[tag=target,rm=0.000001] ~~~execute @e[tag=execute] ~~~tp^^^0.000001
###24
##小数部分
#获取平面内2点距离
scoreboard objectives add rm_0 dummy
scoreboard players operation @s rm_0 = @e[tag=target] rm
#scores_operation_=