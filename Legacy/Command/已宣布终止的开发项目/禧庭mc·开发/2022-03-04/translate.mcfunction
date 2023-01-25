scoreboard objectives add ces:math dummy
scoreboard objectives add ces:statistic dummy
#添加计分板

scoreboard players reset * ces:math
scoreboard players set num ces:statistic 0
execute @e[tag=ces:ergodic] ~ ~ ~ scoreboard players add num ldc:statistic 1
#初始化分数

summon minecraft:armor_stand ces:helper
tag @e[type=minecraft:armor_stand,y=~-1,name=ces:helper,c=1,r=3,tag=""] add ces:helper
scoreboard players operation @e[tag=ces:helper] ces:statistic = num ces:statistic
#生成实体、添加标签和同步执行次数
#准备部分



execute @e[tag=ces:ergodic] ~ ~ ~ tag @s add ces:ergodicList
#将待遍历实体放入列
#非递归部分(非自闭链)





tag @e[c=1,tag=ces:ergodicList] add ces:ergodicRandom
#1

execute @e[tag=ces:ergodicRandom] ~ ~ ~ structure load ces:Entity ~ ~ ~
#2
execute @e[tag=ces:ergodicRandom,type=minecraft:skeleton] ~ ~ ~ tp @e[tag=ces:Entity,type=!minecraft:skeleton] ~ -32767.0 ~
execute @e[tag=ces:ergodicRandom,type=minecraft:stray] ~ ~ ~ tp @e[tag=ces:Entity,type=!minecraft:stray] ~ -32767.0 ~
execute @e[tag=ces:ergodicRandom,type=minecraft:wither_skeleton] ~ ~ ~ tp @e[tag=ces:Entity,type=!minecraft:wither_skeleton] ~ -32767.0 ~
execute @e[tag=ces:ergodicRandom,type=minecraft:zombie] ~ ~ ~ tp @e[tag=ces:Entity,type=!minecraft:zombie] ~ -32767.0 ~
execute @e[tag=ces:ergodicRandom,type=minecraft:husk] ~ ~ ~ tp @e[tag=ces:Entity,type=!minecraft:husk] ~ -32767.0 ~
execute @e[tag=ces:ergodicRandom,type=minecraft:zombie_pigman] ~ ~ ~ tp @e[tag=ces:Entity,type=!minecraft:zombie_pigman] ~ -32767.0 ~
execute @e[tag=ces:ergodicRandom,type=minecraft:zombie_villager] ~ ~ ~ tp @e[tag=ces:Entity,type=!minecraft:zombie_villager] ~ -32767.0 ~
execute @e[tag=ces:ergodicRandom,type=minecraft:drowned] ~ ~ ~ tp @e[tag=ces:Entity,type=!minecraft:drowned] ~ -32767.0 ~
#3
execute @e[tag=ces:Entity] ~ ~ ~ kill @s[y=-1,dy=-30000000]
#4
tag @e[tag=ces:Entity] remove ces:Entity
#5

execute @e[tag=ces:ergodicRandom] ~ ~ ~ tag @s remove ces:ergodicList
execute @e[tag=ces:ergodicRandom] ~ ~ ~ tag @s remove ces:ergodicRandom
#4

execute @e[tag=ces:helper] ~ ~ ~ scoreboard players remove @s ces:statistic 1
#5

 execute @e[tag=ces:helper,scores={ces:statistic=..0}] ~ ~ ~ setblock X Y Z minecraft:chain_command_block 1
 execute @e[tag=ces:helper,scores={ces:statistic=1..}] ~ ~ ~ clone x y z x' y' z' x'' y'' z''
#6
#递归部分(自闭链)





execute @e[tag=ces:helper] ~ ~ ~ kill @s
#非递归部分(非自闭链)