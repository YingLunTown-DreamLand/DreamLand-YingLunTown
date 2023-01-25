scoreboard objectives add pbn:x dummy
scoreboard objectives add pbn:y dummy
scoreboard objectives add pbn:z dummy
#添加计分板



scoreboard players set @s pbn:x 0
scoreboard players set @s pbn:y 0
scoreboard players set @s pbn:z 0
#初始化分数



scoreboard players operation @s pbn:x = @s pbn:posx
scoreboard players operation @s pbn:y = @s pbn:Sy
scoreboard players operation @s pbn:z = @s pbn:posz
#同步分数



tag @s[scores={pbn:x=..-1}] add "pbn:x-"
tag @s[scores={pbn:y=..-1}] add "pbn:y-"
tag @s[scores={pbn:z=..-1}] add "pbn:z-"
scoreboard players add @s[tag="pbn:x-"] pbn:x 1650000
scoreboard players add @s[tag="pbn:y-"] pbn:y 16650000
scoreboard players add @s[tag="pbn:z-"] pbn:z 1650000
#转入正区间



execute @s[scores={pbn:x=800000..}] ~ ~ ~ tp ~0.8 ~ ~
scoreboard players remove @s[scores={pbn:x=800000..}] pbn:x 800000

execute @s[scores={pbn:x=400000..}] ~ ~ ~ tp ~0.4 ~ ~
scoreboard players remove @s[scores={pbn:x=400000..}] pbn:x 400000

execute @s[scores={pbn:x=200000..}] ~ ~ ~ tp ~0.2 ~ ~
scoreboard players remove @s[scores={pbn:x=200000..}] pbn:x 200000

execute @s[scores={pbn:x=100000..}] ~ ~ ~ tp ~0.1 ~ ~
scoreboard players remove @s[scores={pbn:x=100000..}] pbn:x 100000

execute @s[scores={pbn:x=80000..}] ~ ~ ~ tp ~0.08 ~ ~
scoreboard players remove @s[scores={pbn:x=80000..}] pbn:x 80000

execute @s[scores={pbn:x=40000..}] ~ ~ ~ tp ~0.04 ~ ~
scoreboard players remove @s[scores={pbn:x=40000..}] pbn:x 40000

execute @s[scores={pbn:x=20000..}] ~ ~ ~ tp ~0.02 ~ ~
scoreboard players remove @s[scores={pbn:x=20000..}] pbn:x 20000

execute @s[scores={pbn:x=10000..}] ~ ~ ~ tp ~0.01 ~ ~
scoreboard players remove @s[scores={pbn:x=10000..}] pbn:x 10000
#执行X轴上向量的位移



execute @s[scores={pbn:z=800000..}] ~ ~ ~ tp ~ ~ ~0.8
scoreboard players remove @s[scores={pbn:z=800000..}] pbn:z 800000

execute @s[scores={pbn:z=400000..}] ~ ~ ~ tp ~ ~ ~0.4
scoreboard players remove @s[scores={pbn:z=400000..}] pbn:z 400000

execute @s[scores={pbn:z=200000..}] ~ ~ ~ tp ~ ~ ~0.2
scoreboard players remove @s[scores={pbn:z=200000..}] pbn:z 200000

execute @s[scores={pbn:z=100000..}] ~ ~ ~ tp ~ ~ ~0.1
scoreboard players remove @s[scores={pbn:z=100000..}] pbn:z 100000

execute @s[scores={pbn:z=80000..}] ~ ~ ~ tp ~ ~ ~0.08
scoreboard players remove @s[scores={pbn:z=80000..}] pbn:z 80000

execute @s[scores={pbn:z=40000..}] ~ ~ ~ tp ~ ~ ~0.04
scoreboard players remove @s[scores={pbn:z=40000..}] pbn:z 40000

execute @s[scores={pbn:z=20000..}] ~ ~ ~ tp ~ ~ ~0.02
scoreboard players remove @s[scores={pbn:z=20000..}] pbn:z 20000

execute @s[scores={pbn:z=10000..}] ~ ~ ~ tp ~ ~ ~0.01
scoreboard players remove @s[scores={pbn:z=10000..}] pbn:z 10000
#执行Z轴上向量的位移



execute @s[scores={pbn:y=8000000..}] ~ ~ ~ tp ~ ~8.0 ~
scoreboard players remove @s[scores={pbn:y=8000000..}] pbn:y 8000000

execute @s[scores={pbn:y=4000000..}] ~ ~ ~ tp ~ ~4.0 ~
scoreboard players remove @s[scores={pbn:y=4000000..}] pbn:y 4000000

execute @s[scores={pbn:y=2000000..}] ~ ~ ~ tp ~ ~2.0 ~
scoreboard players remove @s[scores={pbn:y=2000000..}] pbn:y 2000000

execute @s[scores={pbn:y=1000000..}] ~ ~ ~ tp ~ ~1.0 ~
scoreboard players remove @s[scores={pbn:y=1000000..}] pbn:y 1000000

execute @s[scores={pbn:y=800000..}] ~ ~ ~ tp ~ ~0.8 ~
scoreboard players remove @s[scores={pbn:y=800000..}] pbn:y 800000

execute @s[scores={pbn:y=400000..}] ~ ~ ~ tp ~ ~0.4 ~
scoreboard players remove @s[scores={pbn:y=400000..}] pbn:y 400000

execute @s[scores={pbn:y=200000..}] ~ ~ ~ tp ~ ~0.2 ~
scoreboard players remove @s[scores={pbn:y=200000..}] pbn:y 200000

execute @s[scores={pbn:y=100000..}] ~ ~ ~ tp ~ ~0.1 ~
scoreboard players remove @s[scores={pbn:y=100000..}] pbn:y 100000

execute @s[scores={pbn:y=80000..}] ~ ~ ~ tp ~ ~0.08 ~
scoreboard players remove @s[scores={pbn:y=80000..}] pbn:y 80000

execute @s[scores={pbn:y=40000..}] ~ ~ ~ tp ~ ~0.04 ~
scoreboard players remove @s[scores={pbn:y=40000..}] pbn:y 40000

execute @s[scores={pbn:y=20000..}] ~ ~ ~ tp ~ ~0.02 ~
scoreboard players remove @s[scores={pbn:y=20000..}] pbn:y 20000

execute @s[scores={pbn:y=10000..}] ~ ~ ~ tp ~ ~0.01 ~
scoreboard players remove @s[scores={pbn:y=10000..}] pbn:y 10000
#执行Y轴上向量的位移



execute @s[tag="pbn:x-"] ~ ~ ~ tp ~-1.65 ~ ~
execute @s[tag="pbn:y-"] ~ ~ ~ tp ~ ~-16.65 ~
execute @s[tag="pbn:z-"] ~ ~ ~ tp ~ ~ ~-1.65
#返回正确位置



tag @s[tag="pbn:x-"] remove "pbn:x-"
tag @s[tag="pbn:y-"] remove "pbn:y-"
tag @s[tag="pbn:z-"] remove "pbn:z-"
#善后





#执行各个轴上向量的位移