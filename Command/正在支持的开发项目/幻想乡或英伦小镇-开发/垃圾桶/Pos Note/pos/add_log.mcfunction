tag @e[name=posnote:add_log_list,type=minecraft:armor_stand] add posnote:unknown
summon minecraft:armor_stand posnote:add_log_list 0 4 0
execute @e[name=posnote:add_log_list,type=minecraft:armor_stand,tag=!posnote:unknown] ~ ~ ~ scoreboard players operation @s uid = @a[tag=posnote:random,tag=!posnote:had_noted,tag=posnote:need_add_log] uid
execute @e[name=posnote:add_log_list,type=minecraft:armor_stand,tag=!posnote:unknown] ~ ~ ~ scoreboard players operation @s uid = @a[tag=posnote:random,tag=!posnote:had_noted,tag=posnote:need_add_log] 