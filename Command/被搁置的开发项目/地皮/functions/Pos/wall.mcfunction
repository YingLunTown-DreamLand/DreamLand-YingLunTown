execute @e[tag=uw:pos_save_entity] ~ ~ ~ tp ~ ~ ~
#teleport

execute @e[tag=uw:pos_save_entity] ~ ~ ~ tp @s[y=512,dy=-30000000] ~ -32767.0 ~
execute @e[tag=uw:pos_save_entity] ~ ~ ~ kill @s
#clean_entity

scoreboard objectives add uw:pd dummy
summon minecraft:armor_stand uw:helper ~ -32767.0 ~
execute @e[name=uw:helper,y=-32767.0,dx=0,type=minecraft:armor_stand] ~ ~ ~ tag @s add uw:helper
execute @e[tag=uw:helper] ~ ~ ~ scoreboard players set @s uw:pd 0
execute @a[tag=uw:pos_save_entity_testlist] ~ ~ ~ scoreboard players set @e[tag=uw:helper] uw:pd 1
execute @e[tag=uw:helper,scores={uw:pd=0}] ~ ~ ~ tag @e[tag=uw:pos_save_entity] add uw:pos_save_entity_testlist
scoreboard players reset @e[tag=uw:helper]
execute @e[tag=uw:helper] ~ ~ ~ kill @s
scoreboard objectives remove uw:pd
#tag_set

tag @a[tag=uw:pos_save_entity_testlist,c=1] add uw:pos_save_entity_random
#tag_set

scoreboard objectives add uw:uid_save dummy
scoreboard objectives add uw:pos_uid_save dummy
execute @a ~ ~ ~ scoreboard players operation @s uw:uid_save = @s uid
execute @a ~ ~ ~ scoreboard players operation @s uw:pos_uid_save = @s uw:pos_uid
execute @a ~ ~ ~ scoreboard players operation @s uw:uid_save -= @e[tag=uw:pos_save_entity_random] uw:uid_save
execute @a ~ ~ ~ scoreboard players operation @s uw:pos_uid_save -= @e[tag=uw:pos_save_entity_random] uw:pos_uid_save
execute @e[tag=uw:pos_save_entity_random] ~ ~ ~ execute @a[scores={uw:uid_save=0,uw:pos_uid_save=0},x=-64,dx=128,z=-64,dz=128,y=-64,dy=128] ~ ~ ~ tag @e[tag=uw:pos_save_entity_random] add uw:pos_save_entity_random_allow
scoreboard objectives remove uw:uid_save
scoreboard objectives remove uw:pos_uid_save
#test_if_can_clean_entity

execute @e[tag=uw:pos_save_entity_random,tag=!uw:pos_save_entity_random_allow] ~ ~ ~ tp ~ -32767.0 ~
execute @e[tag=uw:pos_save_entity_random,tag=!uw:pos_save_entity_random_allow] ~ ~ ~ kill @s
#clean_entity

execute @e[tag=uw:pos_save_entity_random] ~ ~ ~ tag @s remove uw:pos_save_entity_random_allow
execute @e[tag=uw:pos_save_entity_random] ~ ~ ~ tag @s remove uw:pos_save_entity_testlist
execute @e[tag=uw:pos_save_entity_random] ~ ~ ~ tag @s remove uw:pos_save_entity_random
#tag_set