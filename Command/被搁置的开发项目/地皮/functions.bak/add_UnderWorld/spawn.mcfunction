execute @a[tag=uw:choice_suitable_player,tag=uw:user,scores={uw:actionbar=10}] ~ ~ ~ tag @s add uw:spawn
scoreboard objectives add uw:entity_uid dummy
scoreboard objectives add uw:entity_time dummy
execute @a[tag=uw:spawn] ~ ~ ~ scoreboard objectives add uw:spawn_math dummy
#tag_and_scoreboards_add
execute @a[tag=uw:spawn] ~ ~ ~ scoreboard players set @s uw:spawn_math -1
execute @a[tag=uw:spawn] ~ ~ ~ scoreboard players operation @s uw:spawn_math -= @a[tag=uw:spawn,x=~,y=-30000000,z=~,dx=0,dy=60000000,dz=0] uw:spawn_math
execute @a[tag=uw:spawn,scores={uw:spawn_math=!0}] ~ ~ ~ tag @a[tag=uw:spawn,x=~,y=-30000000,z=~,dx=0,dy=60000000,dz=0] add uw:spawn_error
execute @e[tag=uw:spawn_entity_01] ~ ~ ~ execute @a[tag=!uw:spawn_error,tag=uw:spawn,x=~,y=-30000000,z=~,dx=0,dy=60000000,dz=0] ~ ~ ~ tag @s add uw:spawn_error_test
execute @e[tag=uw:spawn_entity_02] ~ ~ ~ execute @a[tag=!uw:spawn_error,tag=uw:spawn,x=~,y=-30000000,z=~,dx=0,dy=60000000,dz=0] ~ ~ ~ tag @s add uw:spawn_error_test
execute @a[tag=uw:spawn,tag=!uw:spawn_error,tag=uw:spawn_error_test] ~ ~ ~ scoreboard players reset * uw:spawn_math
execute @a[tag=uw:spawn,tag=!uw:spawn_error,tag=uw:spawn_error_test] ~ ~ ~ scoreboard players operation @s uw:spawn_math = @s uid
execute @a[tag=uw:spawn,tag=!uw:spawn_error,tag=uw:spawn_error_test] ~ ~ ~ scoreboard players operation @s uw:spawn_math -= @e[tag=uw:spawn_entity_01,x=~,y=-30000000,z=~,dx=0,dy=60000000,dz=0] uw:entity_uid
execute @a[tag=uw:spawn,tag=!uw:spawn_error,tag=uw:spawn_error_test] ~ ~ ~ scoreboard players operation @s uw:spawn_math -= @e[tag=uw:spawn_entity_02,x=~,y=-30000000,z=~,dx=0,dy=60000000,dz=0] uw:entity_uid
execute @a[tag=uw:spawn,tag=!uw:spawn_error,tag=uw:spawn_error_test,scores={uw:spawn_math=!0}] ~ ~ ~ tag @s add uw:spawn_error
execute @a[tag=uw:spawn,tag=uw:spawn_error_test] ~ ~ ~ tag @s remove uw:spawn_error_test
#test_if_can_spawn
execute @a[tag=uw:spawn_error] ~ ~ ~ tellraw @s {"rawtext":[{"text":"Under World System\n[INFO|ERROR] SPAWN.UNSUCESS\nERROR CODE:#871/025."}]}
execute @a[tag=uw:spawn_error] ~ ~ ~ playsound random.break @s ~ ~ ~ 1 1 1
#if_can_not_spawn
*#execute @a[tag=uw:spawn,tag=!uw:spawn_error] ~ ~ ~ structure save uw:spawn 20000 255 20000 20000 255 20000 true disk false
execute @a[tag=uw:spawn,tag=!uw:spawn_error] ~ ~ ~ structure load uw:spawn ~ 32767 ~
#spawn_entity
*#execute @a[tag=uw:spawn,tag=!uw:spawn_error] ~ ~ ~ structure save uw:block 20000 254 20000 20000 254 20000 false disk true
execute @a[tag=uw:spawn,tag=!uw:spawn_error] ~ ~ ~ structure load uw:block ~ 0 ~
#setblock
execute @a[tag=uw:spawn,tag=!uw:spawn_error] ~ ~ ~ tag @e[y=32767,dx=0,dy=0,dz=0,name=uw:spawn_entity,type=minecraft:armor_stand] add uw:entity
execute @a[tag=uw:spawn,tag=!uw:spawn_error,scores={uw:actionbar=10}] ~ ~ ~ tag @e[y=32767,dx=0,dy=0,dz=0,name=uw:spawn_entity,type=minecraft:armor_stand] add uw:spawn_entity_01
execute @a[tag=uw:spawn,tag=!uw:spawn_error,scores={uw:actionbar=11}] ~ ~ ~ tag @e[y=32767,dx=0,dy=0,dz=0,name=uw:spawn_entity,type=minecraft:armor_stand] add uw:spawn_entity_02
execute @a[tag=uw:spawn,tag=!uw:spawn_error,scores={uw:actionbar=10}] ~ ~ ~ scoreboard players operation @e[y=32767,dx=0,dy=0,dz=0,tag=uw:spawn_entity_01] uw:entity_uid = @a[tag=uw:spawn,tag=!uw:spawn_error,scores={uw:actionbar=10}] uid
execute @a[tag=uw:spawn,tag=!uw:spawn_error,scores={uw:actionbar=10}] ~ ~ ~ scoreboard players operation @e[y=32767,dx=0,dy=0,dz=0,tag=uw:spawn_entity_01] uw:entity_time = @a[tag=uw:spawn,tag=!uw:spawn_error,scores={uw:actionbar=10}] uw:time
execute @a[tag=uw:spawn,tag=!uw:spawn_error,scores={uw:actionbar=11}] ~ ~ ~ scoreboard players operation @e[y=32767,dx=0,dy=0,dz=0,tag=uw:spawn_entity_02] uw:entity_uid = @a[tag=uw:spawn,tag=!uw:spawn_error,scores={uw:actionbar=11}] uid
execute @a[tag=uw:spawn,tag=!uw:spawn_error,scores={uw:actionbar=11}] ~ ~ ~ scoreboard players operation @e[y=32767,dx=0,dy=0,dz=0,tag=uw:spawn_entity_02] uw:entity_uid = @a[tag=uw:spawn,tag=!uw:spawn_error,scores={uw:actionbar=11}] uw:time
execute @a[tag=uw:spawn,tag=!uw:spawn_error] ~ ~ ~ function add_UnderWorld/particle
#tag_add_and_score(s)_operation_=
execute @a[tag=uw:spawn,tag=!uw:spawn_error] ~ ~ ~ tag @s add uw:spawned
execute @a[tag=uw:spawn,tag=!uw:spawn_error,scores={uw:actionbar=11}] ~ ~ ~ scoreboard players set @s uw:actionbar 12
execute @a[tag=uw:spawn,tag=!uw:spawn_error,scores={uw:actionbar=10}] ~ ~ ~ scoreboard players set @s uw:actionbar 11
execute @a[tag=uw:spawn] ~ ~ ~ scoreboard objectives remove uw:spawn_math
execute @a[tag=uw:spawn_error] ~ ~ ~ tag @s remove uw:spawn_error
execute @a[tag=uw:spawn] ~ ~ ~ tag @s remove uw:spawn
#end