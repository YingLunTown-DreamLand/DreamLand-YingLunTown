scoreboard players reset * ldc:math
scoreboard players set num ldc:statistic 0
execute @e[tag=ldc:getposy] ~ ~ ~ scoreboard players add num ldc:statistic 1
#1
summon minecraft:armor_stand ldc:posy_helper
tag @e[type=minecraft:armor_stand,y=~-1,name=ldc:posy_helper,c=1,r=3,tag=""] add ldc:PosyHelper
#2
scoreboard players operation @e[tag=ldc:PosyHelper] ldc:statistic = num ldc:statistic
#3
#prepare
execute @e[tag=ldc:PosEntity] ~ ~ ~ tag @s add ldc:PosyRandomList
#非递归部分(非自闭链)

tag @e[c=1,tag=ldc:PosyRandomList] add ldc:PosyRandom
#1
execute @e[tag=ldc:getposy] ~ ~ ~ scoreboard players operation @s ldc:math = @s ldc:posuid
scoreboard players operation @e[tag=ldc:getposy] ldc:math -= @e[tag=ldc:PosyRandom] ldc:posuid
#2
tp @e[tag=ldc:PosyRandom] @e[scores={ldc:math=0}]
#3
execute @e[tag=ldc:PosyRandom] ~ ~ ~ tag @s remove ldc:PosyRandomList
execute @e[tag=ldc:PosyRandom] ~ ~ ~ tag @s remove ldc:PosyRandom
#4
execute @e[tag=ldc:PosyHelper] ~ ~ ~ scoreboard players remove @s ldc:statistic 1
#5
 execute @e[tag=ldc:PosyHelper,scores={ldc:statistic=..0}] ~ ~ ~ setblock X Y Z minecraft:chain_command_block 1
 execute @e[tag=ldc:PosyHelper,scores={ldc:statistic=1..}] ~ ~ ~ clone x y z x' y' z' x'' y'' z''
#6
#递归部分(自闭链)

execute @e[tag=ldc:PosyHelper] ~ ~ ~ kill @s
#非递归部分(非自闭链)