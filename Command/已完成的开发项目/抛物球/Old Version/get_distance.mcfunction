scoreboard objectives add pwb:xl_y_save dummy
#scoreboard_add
summon minecraft:armor_stand pwb:player ~ ~1.5 ~
tag @e[c=1,type=minecraft:armor_stand,name=pwb:player] add pwb:player
execute @s ~ ~1.5 ~ summon minecraft:armor_stand pwb:target ^ ^ ^0.25
tag @e[c=1,type=minecraft:armor_stand,name=pwb:target] add pwb:target
#summon_entity_and_tags_set
tag @e[tag=pwb:player] add pwb:getpos
tag @e[tag=pwb:target] add pwb:getpos
#tags_set
structure save pwb:get_distance ~-1 ~-1 ~-1 ~1 ~1 ~1 memory
#save_structure
tag @e[tag=pwb:player] add pwb:master
tag @e[tag=pwb:getpos] remove pwb:getpos
tag @e[tag=pwb:target] add pwb:will_kill
#tags_set
structure load pwb:get_distance -1 0 -1
#load_structure
fill -1 0 -1 1 2 1 air
#clean_block(s)
execute @e[tag=pwb:will_kill] ~ ~ ~ tp ~ 32767.0 ~
execute @e[tag=pwb:will_kill] ~ ~ ~ kill @s
#clean_entity
execute @e[tag=pwb:getpos] ~ ~ ~ function getpos
#getpos
scoreboard players operation @e[tag=pwb:target] pwb:posx -= @e[tag=pwb:player,tag=!pwb:master] pwb:posx
scoreboard players operation @e[tag=pwb:target] pwb:posy -= @e[tag=pwb:player,tag=!pwb:master] pwb:posy
scoreboard players operation @e[tag=pwb:target] pwb:posz -= @e[tag=pwb:player,tag=!pwb:master] pwb:posz
scoreboard players operation @e[tag=pwb:master] pwb:posx = @e[tag=pwb:target] pwb:posx
scoreboard players operation @e[tag=pwb:master] pwb:posy = @e[tag=pwb:target] pwb:posy
scoreboard players operation @e[tag=pwb:master] pwb:posz = @e[tag=pwb:target] pwb:posz
#get_entity's_date
scoreboard players set @e[tag=pwb:master] pwb:xl_y_save -100
#update
execute @e[tag=pwb:player,tag=!pwb:master] ~ ~ ~ tp ~ 32767.0 ~
execute @e[tag=pwb:player,tag=!pwb:master] ~ ~ ~ scoreboard players reset @s
execute @e[tag=pwb:player,tag=!pwb:master] ~ ~ ~ kill @s
execute @e[tag=pwb:target] ~ ~ ~ tp ~ 32767.0 ~
execute @e[tag=pwb:target] ~ ~ ~ scoreboard players reset @s
execute @e[tag=pwb:target] ~ ~ ~ kill @s
#clean_entities
tag @e[tag=pwb:master] remove pwb:player
tag @e[tag=pwb:master] add pwb:ball
execute @e[tag=pwb:master] ~ ~ ~ tp ~ ~512 ~
tag @e[tag=pwb:master] remove pwb:master
#tags_set