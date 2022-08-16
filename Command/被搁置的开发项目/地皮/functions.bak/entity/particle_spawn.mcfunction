execute @e[tag=uw:particle_spawn,scores={uw:entity_time=..0}] ~ ~ ~ tp ~ 32767 ~
execute @e[tag=uw:particle_spawn,scores={uw:entity_time=..0}] ~ ~ ~ kill @s
#1
execute @e[tag=uw:particle_spawn] ~ ~ ~ execute @s[x=~,y=512,z=~,dx=0,dy=-30000000,dz=0] ~ ~ ~ tp ~ -32767 ~
execute @e[tag=uw:particle_spawn] ~ ~ ~ execute @s[x=~,y=512,z=~,dx=0,dy=-30000000,dz=0] ~ ~ ~ kill @s
#2
#be_sure_that_if_can_continue_execute_command_of_this(these)_entity(entities)
summon minecraft:armor_stand uw:entity_particle_spawn_test ~ 32767 ~
tag @e[name=uw:entity_particle_spawn_test,type=minecraft:armor_stand,x=~,y=32767,z=~,dx=0,dy=0,dz=0] add uw:entity_particle_spawn_test
execute @e[tag=uw:entity_particle_spawn_random,c=1] ~ ~ ~ tag @e[tag=uw:entity_particle_spawn_test] remove uw:entity_particle_spawn_test
execute @e[tag=uw:entity_particle_spawn_test] ~ ~ ~ tag @e[tag=uw:particle_spawn] add uw:entity_particle_spawn_random
kill @e[name=uw:entity_particle_spawn_test,type=minecraft:armor_stand,x=~,y=32767,z=~,dx=0,dy=0,dz=0]
#test_if_need_to_reset_list
execute @r[type=minecraft:armor_stand,tag=uw:entity_particle_spawn_random] ~ ~ ~ tag @s add uw:entity_particle_spawn_random_last
#choice_random_entity
execute @e[tag=uw:spawn_entity_01] ~ ~ ~ execute @e[tag=uw:entity_particle_spawn_random_last,x=~,y=-30000000,z=~,dx=0,dy=600000000,dz=0] ~ ~ ~ tag @s add uw:entity_particle_spawn_test_0
execute @e[tag=uw:spawn_entity_02] ~ ~ ~ execute @e[tag=uw:entity_particle_spawn_random_last,x=~,y=-30000000,z=~,dx=0,dy=600000000,dz=0] ~ ~ ~ tag @s add uw:entity_particle_spawn_test_0
execute @e[tag=uw:entity_particle_spawn_random_last,tag=!uw:entity_particle_spawn_test_0] ~ ~ ~ tp ~ 32767 ~
execute @e[tag=uw:entity_particle_spawn_random_last,tag=!uw:entity_particle_spawn_test_0] ~ ~ ~ kill @s
#3
execute @e[tag=uw:entity_particle_spawn_test_0] ~ ~ ~ scoreboard objectives add uw:entity_math_0 dummy
execute @e[tag=uw:entity_particle_spawn_test_0] ~ ~ ~ scoreboard players operation @s uw:entity_math_0 = @s uw:entity_uid
execute @e[tag=uw:entity_particle_spawn_test_0] ~ ~ ~ scoreboard players operation