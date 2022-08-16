execute @e[tag=uw:spawn_entity_01,scores={uw:entity_time=..0}] ~ ~ ~ tp ~ 32767 ~
execute @e[tag=uw:spawn_entity_01,scores={uw:entity_time=..0}] ~ ~ ~ kill @s
#0
execute @e[tag=uw:spawn_entity_01] ~ ~ ~ execute @s[x=~,y=512,z=~,dy=-30000000] ~ ~ ~ tp ~ -32767 ~
execute @e[tag=uw:spawn_entity_01] ~ ~ ~ execute @s[x=~,y=512,z=~,dy=-30000000] ~ ~ ~ kill @s
execute @e[tag=uw:spawn_entity_02] ~ ~ ~ execute @s[x=~,y=512,z=~,dy=-30000000] ~ ~ ~ tp ~ -32767 ~
execute @e[tag=uw:spawn_entity_02] ~ ~ ~ execute @s[x=~,y=512,z=~,dy=-30000000] ~ ~ ~ kill @s
#1
summon minecraft:armor_stand uw:spawn_entity_test ~ 32767 ~
tag @e[name=uw:spawn_entity_test,type=minecraft:armor_stand,x=~,y=32767,z=~,dx=0,dy=0,dz=0] add uw:spawn_entity_test
execute @e[tag=uw:entity_spawn_entity_random,c=1] ~ ~ ~ tag @e[tag=uw:spawn_entity_test] remove uw:spawn_entity_test
execute @e[tag=uw:spawn_entity_test] ~ ~ ~ tag @e[tag=uw:spawn_entity_01] add uw:entity_spawn_entity_random
execute @e[tag=uw:spawn_entity_test] ~ ~ ~ tag @e[tag=uw:spawn_entity_02] add uw:entity_spawn_entity_random
kill @e[name=uw:spawn_entity_test,type=minecraft:armor_stand,x=~,y=32767,z=~,dx=0,dy=0,dz=0]
#test_if_need_to_reset_list
execute @r[type=minecraft:armor_stand,tag=uw:entity_spawn_entity_random] ~ ~ ~ tag @s add uw:entity_spawn_entity_random_last
#choice_random_entity
execute @e[tag=uw:entity_spawn_entity_random_last] ~ ~ ~ scoreboard objectives add uw:entity_math dummy
execute @e[tag=uw:entity_spawn_entity_random_last] ~ ~ ~ execute @a ~ ~ ~ scoreboard players operation @s uw:entity_math -= @s uid
execute @e[tag=uw:entity_spawn_entity_random_last] ~ ~ ~ scoreboard players operation @a[tag=uw:add_UnderWorld] uw:entity_math -= @s uw:entity_uid
execute @a[scores={uw:entity_math=0},c=1] ~ ~ ~ tag @e[tag=uw:entity_spawn_entity_random_last] add uw:entity_entity_save_01
#2
execute @e[tag=uw:entity_spawn_entity_random_last] ~ ~ ~ scoreboard players reset * uw:entity_math
execute @e[tag=uw:entity_spawn_entity_random_last] ~ ~ ~ execute @e[tag=uw:entity_random] ~ ~ ~ scoreboard players operation @s uw:entity_math = @s uw:entity_uid
execute @e[tag=uw:entity_spawn_entity_random_last] ~ ~ ~ scoreboard players operation @e[tag=uw:entity_random,tag=!tag=uw:entity_spawn_entity_random_last] uw:entity_math -= @s uw:entity_uid
execute @e[tag=uw:entity_spawn_entity_random_last] ~ ~ ~ tag @s add uw:entity_entity_unsave_02
execute @e[tag=uw:entity_random,tag=!tag=uw:entity_spawn_entity_random_last,scores={uw:entity_math=0}] ~ ~ ~ execute @e[tag=uw:entity_spawn_entity_random_last] ~ ~ ~  tag @s remove uw:entity_entity_unsave_02
#3
execute @e[tag=uw:entity_spawn_entity_random_last,tag=!uw:entity_entity_save_01] ~ ~ ~ kill @s
execute @e[tag=uw:entity_spawn_entity_random_last,tag=uw:entity_entity_unsave_02] ~ ~ ~ kill @s
#kill_unneed_entity
execute @e[tag=uw:entity_spawn_entity_random_last] ~ ~ ~ scoreboard objectives remove uw:entity_math
execute @e[tag=uw:entity_spawn_entity_random_last] ~ ~ ~ tag @s remove uw:entity_entity_save_01
execute @e[tag=uw:entity_spawn_entity_random_last] ~ ~ ~ tag @s remove uw:entity_spawn_entity_random
execute @e[tag=uw:entity_spawn_entity_random_last] ~ ~ ~ tag @s remove uw:entity_spawn_entity_random_last
#scoreboard_and_tags_remove