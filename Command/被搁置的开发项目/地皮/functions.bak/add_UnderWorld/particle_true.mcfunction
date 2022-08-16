execute @a[tag=uw:spawn,tag=!uw:spawn_error] ~ ~ ~ execute @e[tag=uw:particle] ~ ~ ~ detect ~ ~ ~ air -1 tag @s add uw:particle_allow
execute @a[tag=uw:spawn,tag=!uw:spawn_error] ~ ~ ~ execute @e[tag=uw:particle] ~ ~ ~ detect ~ ~ ~ water -1 tag @s add uw:particle_allow
execute @a[tag=uw:spawn,tag=!uw:spawn_error] ~ ~ ~ execute @e[tag=uw:particle] ~ ~ ~ detect ~ ~ ~ lava -1 tag @s add uw:particle_allow
#test_block_situation
execute @a[tag=uw:spawn,tag=!uw:spawn_error] ~ ~ ~ execute @e[tag=uw:particle,tag=!uw:particle_allow,tag=uw:particle_spawn] ~ ~ ~ tag @s remove uw:particle_spawn
execute @a[tag=uw:spawn,tag=!uw:spawn_error] ~ ~ ~ execute @e[tag=uw:particle,tag=uw:particle_allow,tag=!uw:particle_spawn] ~ ~ ~ summon minecraft:armor_stand uw:particle_spawn ~ ~32767 ~
execute @a[tag=uw:spawn,tag=!uw:spawn_error] ~ ~ ~ execute @e[tag=uw:particle,tag=uw:particle_allow,tag=!uw:particle_spawn] ~ ~ ~ tag @e[type=minecraft:armor_stand,name=uw:particle_spawn,dx=0,dy=0,dz=0] add uw:entity
execute @a[tag=uw:spawn,tag=!uw:spawn_error] ~ ~ ~ execute @e[tag=uw:particle,tag=uw:particle_allow,tag=!uw:particle_spawn] ~ ~ ~ tag @e[type=minecraft:armor_stand,name=uw:particle_spawn,dx=0,dy=0,dz=0] add uw:particle_spawn
execute @a[tag=uw:spawn,tag=!uw:spawn_error] ~ ~ ~ execute @e[tag=uw:particle,tag=uw:particle_allow,tag=!uw:particle_spawn] ~ ~ ~ tag @s add uw:particle_spawn
#spawn
execute @a[tag=uw:spawn,tag=!uw:spawn_error] ~ ~ ~ execute @e[tag=uw:particle_allow] ~ ~ ~ tag @s remove uw:particle_allow
#tag_remove
execute @a[tag=uw:spawn,tag=!uw:spawn_error] ~ ~ ~ execute @e[tag=uw:particle] ~ ~ ~ execute @s[x=~,y=256,z=~,dy=30000000] ~ ~ ~ tp ~ 32767 ~
execute @a[tag=uw:spawn,tag=!uw:spawn_error] ~ ~ ~ execute @e[tag=uw:particle] ~ ~ ~ execute @s[x=~,y=256,z=~,dy=30000000] ~ ~ ~ kill @s
execute @a[tag=uw:spawn,tag=!uw:spawn_error] ~ ~ ~ execute @e[tag=uw:particle] ~ ~ ~ function add_UnderWorld/particle_true
#particle_true