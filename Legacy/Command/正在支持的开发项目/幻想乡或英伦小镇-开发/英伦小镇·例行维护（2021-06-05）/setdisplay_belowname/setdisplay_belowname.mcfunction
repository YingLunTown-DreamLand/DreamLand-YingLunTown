scoreboard objectives add belowname_time dummy
scoreboard objectives add belowname_save dummy
scoreboard objectives add belowname_math dummy
#scoreboard_add
scoreboard players add time belowname_time 1
summon minecraft:armor_stand belowname_time ~ 32767 ~
tag @e[name=belowname_time,type=minecraft:armor_stand,y=32767,dy=0] add belowname_t
scoreboard players operation @e[tag=belowname_t] belowname_time = time belowname_time
#start
scoreboard players add end_time belowname_time 0
scoreboard players operation @e[tag=belowname_t] belowname_time -= end_time belowname_time
execute @e[tag=belowname_t,scores={belowname_time=..-1}] ~ ~ ~ tag @s add belowname_kill
execute @e[tag=belowname_kill] ~ ~ ~ scoreboard players reset @s belowname_time
execute @e[tag=belowname_kill] ~ ~ ~ kill @s
#判定是否交替
execute @e[tag=belowname_t] ~ ~ ~ scoreboard players reset * belowname_math
execute @e[tag=belowname_t] ~ ~ ~ scoreboard players add moving belowname_time 0
execute @e[tag=belowname_t] ~ ~ ~ execute @e[tag=belowname_t] ~ ~ ~ scoreboard players operation @s belowname_time = moving belowname_time
execute @e[tag=belowname_t] ~ ~ ~ execute @e[tag=belowname_save] ~ ~ ~ scoreboard players operation @s belowname_math = @s belowname_save
execute @e[tag=belowname_t] ~ ~ ~ execute @e[tag=belowname_save] ~ ~ ~ scoreboard players operation @s belowname_math -= @e[tag=belowname_t] belowname_time
execute @e[tag=belowname_t] ~ ~ ~ execute @e[tag=belowname_save,scores={belowname_math=1..}] ~ ~ ~ tag @s add belowname_choice
execute @e[tag=belowname_t] ~ ~ ~ tag @s add belowname_none
execute @e[tag=belowname_t] ~ ~ ~ execute @e[tag=belowname_choice,c=1] ~ ~ ~ tag @e[tag=belowname_t] remove belowname_none
execute @e[tag=belowname_none] ~ ~ ~ tag @s remove belowname_t
#交替时判定可选择项目(或是否已经溢出)
execute @e[tag=belowname_t] ~ ~ ~ scoreboard players operation @s belowname_math = @e[tag=belowname_choice,c=1] belowname_save
execute @e[tag=belowname_t] ~ ~ ~ scoreboard players operation @s belowname_math < @e[tag=belowname_choice] belowname_save
execute @e[tag=belowname_t] ~ ~ ~ execute @e[tag=belowname_choice] ~ ~ ~ scoreboard players operation @s belowname_math = @s belowname_save
execute @e[tag=belowname_t] ~ ~ ~ execute @e[tag=belowname_choice] ~ ~ ~ scoreboard players operation @s belowname_math -= @e[tag=belowname_t] belowname_math
execute @e[tag=belowname_t] ~ ~ ~ execute @e[tag=belowname_choice,scores={belowname_math=0}] ~ ~ ~ scoreboard players operation moving belowname_time = @s belowname_save
execute @e[tag=belowname_t] ~ ~ ~ execute @e[tag=belowname_choice,scores={belowname_math=0}] ~ ~ ~ say 1
execute @e[tag=belowname_t] ~ ~ ~ tag @e[tag=belowname_choice] remove belowname_choice
execute @e[tag=belowname_t] ~ ~ ~ scoreboard players reset @s belowname_time
execute @e[tag=belowname_t] ~ ~ ~ scoreboard players reset @s belowname_math
execute @e[tag=belowname_t] ~ ~ ~ scoreboard players set time belowname_time 0
execute @e[tag=belowname_t] ~ ~ ~ kill @s
#交替及其善后(若还有下一更替项目)
execute @e[tag=belowname_none] ~ ~ ~ scoreboard players operation @s belowname_math = @e[tag=belowname_save,c=1] belowname_save
execute @e[tag=belowname_none] ~ ~ ~ scoreboard players operation @s belowname_math < @e[tag=belowname_save] belowname_save
execute @e[tag=belowname_none] ~ ~ ~ execute @e[tag=belowname_save] ~ ~ ~ scoreboard players operation @s belowname_math = @s belowname_save
execute @e[tag=belowname_none] ~ ~ ~ execute @e[tag=belowname_save] ~ ~ ~ scoreboard players operation @s belowname_math -= @e[tag=belowname_none] belowname_math
execute @e[tag=belowname_none] ~ ~ ~ execute @e[tag=belowname_save,scores={belowname_math=0}] ~ ~ ~ scoreboard players operation moving belowname_time = @s belowname_save
execute @e[tag=belowname_none] ~ ~ ~ execute @e[tag=belowname_save,scores={belowname_math=0}] ~ ~ ~ say 1
execute @e[tag=belowname_none] ~ ~ ~ scoreboard players reset @s belowname_time
execute @e[tag=belowname_none] ~ ~ ~ scoreboard players reset @s belowname_math
execute @e[tag=belowname_none] ~ ~ ~ scoreboard players set time belowname_time 0
execute @e[tag=belowname_none] ~ ~ ~ kill @s
#交替及其善后(若无下一更替项目)