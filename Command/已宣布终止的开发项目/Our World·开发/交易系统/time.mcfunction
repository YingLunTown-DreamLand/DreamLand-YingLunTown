scoreboard players add time buy:time 1
scoreboard players add days buy:time 0
scoreboard players add days_0 buy:time 0
#time_add
summon minecraft:armor_stand buy:time_helper ~ 32767.0 ~
#summon_armor_stand
execute @e[name=buy:time_helper,y=32767.0,dy=0,c=1,type=minecraft:armor_stand] ~ ~ ~ scoreboard players operation @s buy:time = time buy:time
*#execute @e[name=buy:time_helper,y=32767.0,dy=0,c=1,type=minecraft:armor_stand,scores={buy:time=1728000..}] ~ ~ ~ structure load buy:mark 0 4 0
*#execute @e[name=buy:time_helper,y=32767.0,dy=0,c=1,type=minecraft:armor_stand,scores={buy:time=1728000..}] ~ ~ ~ structure load buy:mark_0 0 5 0
*#execute @e[name=buy:time_helper,y=32767.0,dy=0,c=1,type=minecraft:armor_stand,scores={buy:time=1728000..}] 0 4 0 execute @e[tag=buy:mark,dx=0] ~ ~ ~ tp ~ ~1 ~
*#execute @e[name=buy:time_helper,y=32767.0,dy=0,c=1,type=minecraft:armor_stand,scores={buy:time=1728000..}] 0 5 0 structure save buy:mark_0 ~ ~ ~ ~ ~ ~ true disk false
*#execute @e[name=buy:time_helper,y=32767.0,dy=0,c=1,type=minecraft:armor_stand,scores={buy:time=1728000..}] 0 5 0 execute @e[tag=buy:mark,dx=0] ~ ~ ~ tp ~ -1.0 ~
*#execute @e[name=buy:time_helper,y=32767.0,dy=0,c=1,type=minecraft:armor_stand,scores={buy:time=1728000..}] 0 4 0 structure save buy:mark ~ ~ ~ ~ ~ ~ true disk false
execute @e[name=buy:time_helper,y=32767.0,dy=0,c=1,type=minecraft:armor_stand,scores={buy:time=1728000..}] ~ ~ ~ scoreboard players add days buy:time 1
execute @e[name=buy:time_helper,y=32767.0,dy=0,c=1,type=minecraft:armor_stand,scores={buy:time=1728000..}] ~ ~ ~ scoreboard players add days_0 buy:time 1
execute @e[name=buy:time_helper,y=32767.0,dy=0,c=1,type=minecraft:armor_stand,scores={buy:time=1728000..}] ~ ~ ~ scoreboard players set time buy:time 0
#time_1
execute @e[name=buy:time_helper,y=32767.0,dy=0,c=1,type=minecraft:armor_stand] ~ ~ ~ scoreboard players operation @s buy:time = days buy:time
*#execute @e[name=buy:time_helper,y=32767.0,dy=0,c=1,type=minecraft:armor_stand,scores={buy:time=7..}] ~ ~ ~ structure load buy:mark_0 0 4 0
*#execute @e[name=buy:time_helper,y=32767.0,dy=0,c=1,type=minecraft:armor_stand,scores={buy:time=7..}] ~ ~ ~ structure load buy:mark_1 0 5 0
*#execute @e[name=buy:time_helper,y=32767.0,dy=0,c=1,type=minecraft:armor_stand,scores={buy:time=7..}] 0 4 0 execute @e[tag=buy:mark,dx=0] ~ ~ ~ tp ~ ~1 ~
*#execute @e[name=buy:time_helper,y=32767.0,dy=0,c=1,type=minecraft:armor_stand,scores={buy:time=7..}] 0 5 0 structure save buy:mark_1 ~ ~ ~ ~ ~ ~ true disk false
*#execute @e[name=buy:time_helper,y=32767.0,dy=0,c=1,type=minecraft:armor_stand,scores={buy:time=7..}] 0 5 0 execute @e[tag=buy:mark,dx=0] ~ ~ ~ tp ~ -1.0 ~
*#execute @e[name=buy:time_helper,y=32767.0,dy=0,c=1,type=minecraft:armor_stand,scores={buy:time=7..}] 0 4 0 structure save buy:mark_0 ~ ~ ~ ~ ~ ~ true disk false
execute @e[name=buy:time_helper,y=32767.0,dy=0,c=1,type=minecraft:armor_stand,scores={buy:time=7..}] ~ ~ ~ scoreboard players set days buy:time 0
#time_2
execute @e[name=buy:time_helper,y=32767.0,dy=0,c=1,type=minecraft:armor_stand] ~ ~ ~ scoreboard players operation @s buy:time = days_0 buy:time
*#execute @e[name=buy:time_helper,y=32767.0,dy=0,c=1,type=minecraft:armor_stand,scores={buy:time=30..}] 0 4 0 structure save buy:mark_1~ ~ ~ ~ ~ ~ true disk false
execute @e[name=buy:time_helper,y=32767.0,dy=0,c=1,type=minecraft:armor_stand,scores={buy:time=30..}] ~ ~ ~ scoreboard players set days_0 buy:time 0
#time_3
execute @e[name=buy:time_helper,y=32767.0,dy=0,c=1,type=minecraft:armor_stand] ~ ~ ~ scoreboard players reset @s
execute @e[name=buy:time_helper,y=32767.0,dy=0,c=1,type=minecraft:armor_stand] ~ ~ ~ kill @s
#end