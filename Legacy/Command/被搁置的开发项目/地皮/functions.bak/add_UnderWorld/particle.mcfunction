<<<<<<< HEAD
execute @a[tag=uw:spawn,tag=!uw:spawn_error] ~ ~ ~ summon minecraft:armor_stand uw:particle ~ 524288 ~
execute @a[tag=uw:spawn,tag=!uw:spawn_error] ~ ~ ~ structure load uw:spawn ~ 524288 ~
execute @a[tag=uw:spawn,tag=!uw:spawn_error] ~ ~ ~ tag @e[x=~,y=524288,z=~,dx=0,dy=0,dz=0,name=uw:particle,type=minecraft:armor_stand] add uw:particle
execute @a[tag=uw:spawn,tag=!uw:spawn_error] ~ ~ ~ tp @e[tag=uw:particle] @e[x=~,y=524288,z=~,dx=0,dy=0,dz=0,name=uw:spawn,type=minecraft:armor_stand]
execute @a[tag=uw:spawn,tag=!uw:spawn_error] ~ ~ ~ kill @e[x=~,y=524288,z=~,dx=0,dy=0,dz=0,name=uw:spawn,type=minecraft:armor_stand]
#fix_pos
execute @a[tag=uw:spawn,tag=!uw:spawn_error] ~ ~ ~ scoreboard players operation @e[tag=uw:particle] uw:entity_uid = @s uid
execute @a[tag=uw:spawn,tag=!uw:spawn_error] ~ ~ ~ scoreboard players operation @e[tag=uw:particle] uw:entity_time = @s uw:time
#scores_operation_=
execute @a[tag=uw:spawn,tag=!uw:spawn_error] ~ ~ ~ tp @e[tag=uw:particle] ~ 1 ~
#teleport
execute @a[tag=uw:spawn,tag=!uw:spawn_error] ~ ~ ~ function add_UnderWorld/particle_true
=======
execute @a[tag=uw:spawn,tag=!uw:spawn_error] ~ ~ ~ summon minecraft:armor_stand uw:particle ~ 524288 ~
execute @a[tag=uw:spawn,tag=!uw:spawn_error] ~ ~ ~ structure load uw:spawn ~ 524288 ~
execute @a[tag=uw:spawn,tag=!uw:spawn_error] ~ ~ ~ tag @e[x=~,y=524288,z=~,dx=0,dy=0,dz=0,name=uw:particle,type=minecraft:armor_stand] add uw:particle
execute @a[tag=uw:spawn,tag=!uw:spawn_error] ~ ~ ~ tp @e[tag=uw:particle] @e[x=~,y=524288,z=~,dx=0,dy=0,dz=0,name=uw:spawn,type=minecraft:armor_stand]
execute @a[tag=uw:spawn,tag=!uw:spawn_error] ~ ~ ~ kill @e[x=~,y=524288,z=~,dx=0,dy=0,dz=0,name=uw:spawn,type=minecraft:armor_stand]
#fix_pos
execute @a[tag=uw:spawn,tag=!uw:spawn_error] ~ ~ ~ scoreboard players operation @e[tag=uw:particle] uw:entity_uid = @s uid
execute @a[tag=uw:spawn,tag=!uw:spawn_error] ~ ~ ~ scoreboard players operation @e[tag=uw:particle] uw:entity_time = @s uw:time
#scores_operation_=
execute @a[tag=uw:spawn,tag=!uw:spawn_error] ~ ~ ~ tp @e[tag=uw:particle] ~ 1 ~
#teleport
execute @a[tag=uw:spawn,tag=!uw:spawn_error] ~ ~ ~ function add_UnderWorld/particle_true
>>>>>>> d95f919c53aa8612409504198bbed77f930d5f64
#particle_true