scoreboard objectives add uw:posx dummy
scoreboard objectives add uw:posy dummy
scoreboard objectives add uw:posz dummy
scoreboard objectives add uw:uid dummy
scoreboard objectives add uw:uid_save dummy
scoreboard objectives add uw:pos_uid dummy
scoreboard objectives add uw:pos_uid_save dummy
#scoreboard_add

execute @e[tag=uw:pos_save_entity] ~ ~ ~ scoreboard players operation @s uw:uid_save = @s uw:uid
execute @e[tag=uw:pos_save_entity] ~ ~ ~ scoreboard players operation @s uw:uid_save -= @a[tag=uw:getpos] uid
execute @e[tag=uw:pos_save_entity] ~ ~ ~ scoreboard players operation @s uw:pos_uid_save = @s uw:pos_uid
execute @e[tag=uw:pos_save_entity] ~ ~ ~ scoreboard players operation @s uw:pos_uid_save -= @a[tag=uw:getpos] uw:pos_uid
#get_right_entity

execute @e[tag=uw:pos_save_entity,scores={uw:uid_save=0,uw:pos_uid_save=0}] ~ ~ ~ tp @s[y=512,dy=-30000000] ~ -32767.0 ~
execute @e[tag=uw:pos_save_entity,scores={uw:uid_save=0,uw:pos_uid_save=0}] ~ ~ ~ kill @s[y=-32767.0,dx=0]
#1
execute @e[tag=uw:pos_save_entity,scores={uw:uid_save=0,uw:pos_uid_save=0}] ~ ~ ~ tp ~ ~-32767.0 ~
#2
#teleport_or_clean

execute @e[tag=uw:pos_save_entity,scores={uw:uid_save=0,uw:pos_uid_save=0}] ~ ~ ~ tag @a[tag=uw:getpos,x=-64,dx=128,z=-64,dz=128,y=-30000000,dy=60000000] add uw:getpos_allow
execute @e[tag=uw:pos_save_entity,scores={uw:uid_save=0,uw:pos_uid_save=0}] ~ ~ ~ tag @a[tag=uw:getpos,x=-7,dx=14,z=-7,dz=14,y=-30000000,dy=60000000] add uw:getpos_allow_distance_1
execute @e[tag=uw:pos_save_entity,scores={uw:uid_save=0,uw:pos_uid_save=0}] ~ ~ ~ tag @a[tag=uw:getpos,x=-15,dx=30,z=-15,dz=30,y=-30000000,dy=60000000,tag=!uw:getpos_allow_distance_1] add uw:getpos_allow_distance_2
execute @e[tag=uw:pos_save_entity,scores={uw:uid_save=0,uw:pos_uid_save=0}] ~ ~ ~ tag @a[tag=uw:getpos,x=-31,dx=62,z=-31,dz=62,y=-30000000,dy=60000000,tag=!uw:getpos_allow_distance_1,tag=!uw:getpos_allow_distance_2] add uw:getpos_allow_distance_3
#get_distance

execute @a[tag=uw:getpos,tag=uw:getpos_allow_distance_1,tag=uw:getpos_allow] ~ ~ ~ function Pos/distance_1
execute @a[tag=uw:getpos,tag=uw:getpos_allow_distance_2,tag=uw:getpos_allow] ~ ~ ~ function Pos/distance_2
execute @a[tag=uw:getpos,tag=uw:getpos_allow_distance_3,tag=uw:getpos_allow] ~ ~ ~ function Pos/distance_3
execute @a[tag=uw:getpos,tag=!uw:getpos_allow_distance_1,tag=!uw:getpos_allow_distance_2,tag=!uw:getpos_allow_distance_3,tag=uw:getpos_allow] ~ ~ ~ function Pos/distance_normal
execute @a[tag=uw:getpos,tag=!uw:getpos_allow] ~ ~ ~ function Pos/world_pos
#getpos

execute @a[tag=uw:getpos,tag=!uw:getpos_allow] ~ ~ ~ kill @e[tag=uw:pos_save_entity,scores={uw:uid_save=0,uw:pos_uid_save=0}]
execute @a[tag=uw:getpos,tag=uw:getpos_allow] ~ ~ ~ tp @e[tag=uw:pos_save_entity,scores={uw:uid_save=0,uw:pos_uid_save=0}] ~ ~32767.0 ~
#1
execute @a[tag=uw:getpos,tag=!uw:getpos_allow] ~ ~ ~ scoreboard players add @s uw:pos_uid 1
execute @a[tag=uw:getpos,tag=!uw:getpos_allow] 0 4.5 0 summon minecraft:armor_stand uw:pos_save_entity
execute @a[tag=uw:getpos,tag=!uw:getpos_allow] 0 4.5 0 scoreboard players operation @e[type=minecraft:armor_stand,name=uw:pos_save_entity,c=1,dx=0] uw:uid = @s uid
execute @a[tag=uw:getpos,tag=!uw:getpos_allow] 0 4.5 0 scoreboard players operation @e[type=minecraft:armor_stand,name=uw:pos_save_entity,c=1,dx=0] uw:pos_uid = @s uw:pos_uid
execute @a[tag=uw:getpos,tag=!uw:getpos_allow] ~ ~ ~ tp @e[type=minecraft:armor_stand,name=uw:pos_save_entity,c=1,dx=0,x=0,y=4.5,z=0] ~ ~32767.0 ~
execute @a[tag=uw:getpos,tag=!uw:getpos_allow] ~ ~ ~ tag @e[type=minecraft:armor_stand,name=uw:pos_save_entity,c=1,dx=0,y=~32767.0] add uw:pos_save_entity
#2
#teleport_entity_or_add_new_entity

execute @a[tag=uw:getpos] ~ ~ ~ tag @s remove uw:getpos_allow
execute @a[tag=uw:getpos] ~ ~ ~ tag @s remove uw:getpos_allow_distance_1
execute @a[tag=uw:getpos] ~ ~ ~ tag @s remove uw:getpos_allow_distance_2
execute @a[tag=uw:getpos] ~ ~ ~ tag @s remove uw:getpos_allow_distance_3
execute @a[tag=uw:getpos] ~ ~ ~ tag @s remove uw:getpos
#tag_set