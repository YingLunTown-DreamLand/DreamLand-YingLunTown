scoreboard objectives add square dummy
# 添加计分板

summon minecraft:armor_stand square:helper ~ 32767.0 ~
tag @e[name=square:helper,c=1,type=minecraft:armor_stand,y=32767.0,r=3,tag=""] add square:helper
#
scoreboard players add num square 0
#
scoreboard players operation @e[tag=square:helper] square = num square
execute @e[scores={square=!0},tag=square:helper] ~ ~ ~ function square_main/main
#
execute @e[tag=square:helper] ~ ~ ~ tp ~ -32767.0 ~
execute @e[tag=square:helper] ~ ~ ~ kill @s
# 计算平方值