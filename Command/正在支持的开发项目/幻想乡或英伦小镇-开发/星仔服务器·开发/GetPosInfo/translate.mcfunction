scoreboard players reset * cre:math
scoreboard players set num cre:statistic 0
execute @a[tag=cre:getpos_InLoadedArea] ~ ~ ~ scoreboard players add num cre:statistic 1
#1
summon minecraft:armor_stand cre:getpos_helper
tag @e[type=minecraft:armor_stand,y=~-1,name=cre:getpos_helper,c=1,r=3,tag=""] add cre:GetposHelper
#2
scoreboard players operation @e[tag=cre:GetposHelper] cre:statistic = num cre:statistic
#3
#prepare
execute @e[tag=cre:getpos] ~ ~ ~ tag @s add cre:getpos_random_list
#非递归部分(非自闭链)

tag @e[c=1,tag=cre:getpos_random_list] add cre:getpos_random
#1
execute @a[tag=cre:getpos_InLoadedArea] ~ ~ ~ scoreboard players operation @s cre:math = @s cre:uid
scoreboard players operation @a[tag=cre:getpos_InLoadedArea] cre:math -= @e[tag=cre:getpos_random] cre:uid
#2
tp @e[tag=cre:getpos_random] @a[scores={cre:math=0}]
#3
execute @e[tag=cre:getpos_random] ~ ~ ~ tag @s remove cre:getpos_random_list
execute @e[tag=cre:getpos_random] ~ ~ ~ tag @s remove cre:getpos_random
#4
execute @e[tag=cre:GetposHelper] ~ ~ ~ scoreboard players remove @s cre:statistic 1
#5
 execute @e[tag=cre:GetposHelper,scores={cre:statistic=1..}] ~ ~ ~ clone x y z x' y' z' x'' y'' z''
 execute @e[tag=cre:GetposHelper,scores={cre:statistic=..0}] ~ ~ ~ setblock X Y Z minecraft:chain_command_block 1
#6
#递归部分(自闭链)

execute @e[tag=cre:GetposHelper] ~ ~ ~ kill @s
#非递归部分(非自闭链)