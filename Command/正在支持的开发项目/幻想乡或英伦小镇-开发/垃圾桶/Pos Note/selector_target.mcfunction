tag @a[c=1] add posnote:selector_target
execute @a[tag=posnote:list] ~ ~ ~ tag @a[tag=posnote:selector_target] add posnote:selector_target_successful
execute @a[tag=posnote:selector_target,tag=!posnote:selector_targer_selector] ~ ~ ~ execute @a ~ ~ ~ tag @s[x=-1048575,y=-30000000,z=-1048575,dx=2097149,dy=60000000,dz=2097149] add posnote:list
execute @a[tag=posnote:selector_target] ~ ~ ~ tag @s remove posnote:selector_target_successful
execute @a[tag=posnote:selector_target] ~ ~ ~ tag @s remove posnote:selector_target
#1

execute @a[tag=posnote:list] ~ ~ ~ tag @e[name=posnote:test_area_loaded,type=minecraft:armor_stand] add posnote:unknown_entity
execute @a[tag=posnote:list] ~ ~ ~ summon minecraft:armor_stand posnote:test_area_loaded ~ ~32767.0 ~
execute @a[tag=posnote:list,c=1] ~ ~ ~ execute @e[name=posnote:test_area_loaded,type=minecraft:armor_stand,tag=!posnote:unknown_entity] ~ ~-32767.0 ~ tag @a[c=1,r=0.3] add posnote:area_loaded
execute @a[tag=posnote:list,c=1] ~ ~ ~ execute @e[name=posnote:test_area_loaded,type=minecraft:armor_stand,tag=!posnote:unknown_entity] ~ ~-32767.0 ~ tp ~ ~-32767.0 ~
execute @a[tag=posnote:list,c=1] ~ ~ ~ execute @e[name=posnote:test_area_loaded,type=minecraft:armor_stand,tag=!posnote:unknown_entity] ~ ~ ~ kill @s
execute @a[tag=posnote:list] ~ ~ ~ tag @e[name=posnote:test_area_loaded,type=minecraft:armor_stand] remove posnote:unknown_entity
#2

execute @a[c=1,tag=posnote:list,tag=posnote:area_loaded] ~ ~ ~ tag @s add posnote:random
execute @a[tag=posnote:area_loaded] ~ ~ ~ tag @s remove posnote:area_loaded
execute @a[tag=posnote:random] ~ ~ ~ tag @s remove posnote:list
#3-1
execute @a[tag=posnote:random] ~ ~ ~ execute @e[tag=posnote:NoteEntity] ~ ~ ~ scoreboard players reset * posnote:math
execute @a[tag=posnote:random] ~ ~ ~ execute @e[tag=posnote:NoteEntity] ~ ~ ~ scoreboard players operation @s posnote:math = @s posnote:uid
execute @a[tag=posnote:random] ~ ~ ~ execute @e[tag=posnote:NoteEntity] ~-31 -30000000 ~-31 scoreboard players operation @s posnote:math -= @a[tag=posnote:random,dx=62,dy=60000000,dz=62] uid
execute @a[tag=posnote:random] ~ ~ ~ execute @e[tag=posnote:NoteEntity,scores={posnote:math=0}] ~ ~ ~ tag @s add posnote:entity_in_area
#3-2
execute @a[tag=posnote:random] ~ ~ ~ execute @e[tag=posnote:NoteEntity] ~ ~ ~ scoreboard players operation @s posnote:math = @s posnote:uid
execute @a[tag=posnote:random] ~ ~ ~ execute @e[tag=posnote:NoteEntity] ~ ~ ~ scoreboard players operation @s posnote:math -= @a[tag=posnote:random] uid
execute @a[tag=posnote:random] ~ ~ ~ execute @e[tag=posnote:NoteEntity,scores={posnote:math=0},tag=!posnote:entity_in_area] ~ ~ ~ tag @s add posnote:clean_entity
execute @a[tag=posnote:random] ~ ~ ~ execute @e[tag=posnote:clean_entity] ~ ~ ~ scoreboard players reset @s
execute @a[tag=posnote:random] ~ ~ ~ execute @e[tag=posnote:clean_entity] ~ ~ ~ tp ~ -32767.0 ~
execute @a[tag=posnote:random] ~ ~ ~ execute @e[tag=posnote:clean_entity] ~ ~ ~ kill @s
#3-3
execute @a[tag=posnote:random] ~ ~ ~ execute @e[tag=posnote:NoteEntity,tag=posnote:entity_in_area] ~ ~ ~ tag @a[tag=posnote:random] add posnote:had_noted
execute @a[tag=posnote:random] ~ ~ ~ execute @e[tag=posnote:NoteEntity,tag=posnote:entity_in_area] ~ ~ ~ tag @s remove posnote:entity_in_area
execute @a[tag=posnote:random] ~ ~ ~ execute @e[tag=posnote:NoteEntity] ~ ~ ~ scoreboard players reset * posnote:math
#3-4
#3

execute @a[tag=posnote:had_noted] ~ ~ ~ tag @s remove posnote:random
execute @a[tag=posnote:had_noted] ~ ~ ~ tag @s remove posnote:had_noted
#4-1
execute @a[tag=posnote:random,tag=!posnote:had_noted] ~ ~ ~ function pos/main
#4-2
#4