summon minecraft:armor_stand sl:point ~ ~1.58 ~
execute @s ~ ~1.58 ~ summon minecraft:armor_stand sl:sightline ^ ^ ^1
#1
execute @e[tag=sl:test_entity] ~ ~ ~ summon minecraft:armor_stand sl:test_entity_1 ~-0.5 ~ ~-0.5
execute @e[tag=sl:test_entity] ~ ~ ~ tag @e[x=~-0.5,z=~-0.5,r=0.1,type=minecraft:armor_stand,name=sl:test_entity_1] add sl:test_entity_1
#2
execute @e[tag=sl:test_entity] ~ ~ ~ summon minecraft:armor_stand sl:test_entity_2 ~0.5 ~2 ~0.5
execute @e[tag=sl:test_entity] ~ ~ ~ tag @e[x=~0.5,y=~2,z=~0.5,r=0.1,type=minecraft:armor_stand,name=sl:test_entity_2] add sl:test_entity_2
#3
#summon_entity

execute @s ~ ~1.58 ~ tag @e[r=0.1,type=minecraft:armor_stand,name=sl:point] add sl:point
execute @s ~ ~1.58 ~ execute @s ^ ^ ^1 tag @e[r=0.1,type=minecraft:armor_stand,name=sl:sightline] add sl:sightline
#1
tag @e[tag=sl:sightline] add part_pos:another
tag @e[tag=sl:test_entity_1] add part_pos:another
tag @e[tag=sl:test_entity_2] add part_pos:another
#2
