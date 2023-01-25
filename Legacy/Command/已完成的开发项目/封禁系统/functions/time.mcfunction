scoreboard objectives add kick:time dummy
#start
scoreboard players add days kick:time 0
scoreboard players add ticks kick:time 1
summon minecraft:armor_stand kick:time_entity ~ 32767 ~
execute @e[name=kick:time_entity,y=32767,dy=0] ~ ~ ~ scoreboard players operation @s kick:time = ticks kick:time
execute @e[name=kick:time_entity,y=32767,dy=0,scores={kick:time=1728000..}] ~ ~ ~ scoreboard players add days kick:time 1
execute @e[name=kick:time_entity,y=32767,dy=0,scores={kick:time=1728000..}] ~ ~ ~ scoreboard players reset ticks kick:time
execute @e[name=kick:time_entity,y=32767,dy=0] ~ ~ ~ scoreboard players reset @s kick:time
execute @e[name=kick:time_entity,y=32767,dy=0] ~ ~ ~ kill @s
#time_js