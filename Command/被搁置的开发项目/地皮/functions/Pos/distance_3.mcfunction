execute @a[tag=uw:getpos,tag=uw:getpos_allow_distance_3,tag=uw:getpos_allow] ~ ~ ~ summon minecraft:armor_stand uw:getpos_mark_for_master
execute @a[tag=uw:getpos,tag=uw:getpos_allow_distance_3,tag=uw:getpos_allow] ~ ~ ~ tag @e[type=minecraft:armor_stand,name=uw:getpos_mark_for_master,r=0.1,c=1] add uw:getpos_mfm
execute @e[tag=uw:pos_save_entity,scores={uw:uid_save=0,uw:pos_uid_save=0}] ~ ~ ~ summon minecraft:armor_stand uw:getpos_helper
execute @e[tag=uw:pos_save_entity,scores={uw:uid_save=0,uw:pos_uid_save=0}] ~ ~ ~ tag @e[type=minecraft:armor_stand,name=uw:getpos_helper,r=0.1,c=1] add uw:getpos_helper
#summon_entity_and_tag_set

execute @e[tag=uw:getpos_mfm] ~ ~ ~ tag @e[tag=uw:getpos_helper,y=-30000000,z=-300000000,dy=60000000,dz=60000000,dx=-30000000] add uw:getpos_xremove
execute @e[tag=uw:getpos_mfm] ~ ~ ~ execute @e[tag=uw:getpos_helper,y=-30000000,z=-300000000,dy=60000000,dz=60000000,dx=-30000000] ~ ~ ~ tp ~31 ~ ~
#1
execute @e[tag=uw:getpos_mfm] ~ ~ ~ tag @e[tag=uw:getpos_helper,x=-30000000,z=-300000000,dx=60000000,dz=60000000,dy=-30000000] add uw:getpos_yremove
execute @e[tag=uw:getpos_mfm] ~ ~ ~ execute @e[tag=uw:getpos_helper,x=-30000000,z=-300000000,dx=60000000,dz=60000000,dy=-30000000] ~ ~ ~ tp ~ ~31 ~
#2
execute @e[tag=uw:getpos_mfm] ~ ~ ~ tag @e[tag=uw:getpos_helper,x=-30000000,y=-300000000,dx=60000000,dy=60000000,dz=-30000000] add uw:getpos_zremove
execute @e[tag=uw:getpos_mfm] ~ ~ ~ execute @e[tag=uw:getpos_helper,x=-30000000,y=-300000000,dx=60000000,dy=60000000,dz=-30000000] ~ ~ ~ tp ~ ~ ~31
#3
#be_sure_that_is_x-/y-/z-

execute @e[tag=uw:getpos_helper] ~ ~ ~ scoreboard players operation @s uw:posx = @a[tag=uw:getpos,tag=uw:getpos_allow_distance_3,tag=uw:getpos_allow] uw:posx
execute @e[tag=uw:getpos_helper] ~ ~ ~ scoreboard players operation @s posy = @a[tag=uw:getpos,tag=uw:getpos_allow_distance_3,tag=uw:getpos_allow] posy
execute @e[tag=uw:getpos_helper] ~ ~ ~ scoreboard players operation @s uw:posz = @a[tag=uw:getpos,tag=uw:getpos_allow_distance_3,tag=uw:getpos_allow] uw:posz
#score_reset

execute @e[tag=uw:getpos_mfm] ~16 ~ ~ scoreboard players add @e[tag=uw:getpos_helper,y=-30000000,z=-300000000,dy=60000000,dz=60000000,dx=30000000] uw:posx 16
execute @e[tag=uw:getpos_mfm] ~16 ~ ~ execute @e[tag=uw:getpos_helper,y=-30000000,z=-300000000,dy=60000000,dz=60000000,dx=30000000] ~ ~ ~ tp ~-16 ~ ~
#1
execute @e[tag=uw:getpos_mfm] ~8 ~ ~ scoreboard players add @e[tag=uw:getpos_helper,y=-30000000,z=-300000000,dy=60000000,dz=60000000,dx=30000000] uw:posx 8
execute @e[tag=uw:getpos_mfm] ~8 ~ ~ execute @e[tag=uw:getpos_helper,y=-30000000,z=-300000000,dy=60000000,dz=60000000,dx=30000000] ~ ~ ~ tp ~-8 ~ ~
#2
execute @e[tag=uw:getpos_mfm] ~4 ~ ~ scoreboard players add @e[tag=uw:getpos_helper,y=-30000000,z=-300000000,dy=60000000,dz=60000000,dx=30000000] uw:posx 4
execute @e[tag=uw:getpos_mfm] ~4 ~ ~ execute @e[tag=uw:getpos_helper,y=-30000000,z=-300000000,dy=60000000,dz=60000000,dx=30000000] ~ ~ ~ tp ~-4 ~ ~
#3
execute @e[tag=uw:getpos_mfm] ~2 ~ ~ scoreboard players add @e[tag=uw:getpos_helper,y=-30000000,z=-300000000,dy=60000000,dz=60000000,dx=30000000] uw:posx 2
execute @e[tag=uw:getpos_mfm] ~2 ~ ~ execute @e[tag=uw:getpos_helper,y=-30000000,z=-300000000,dy=60000000,dz=60000000,dx=30000000] ~ ~ ~ tp ~-2 ~ ~
#4
execute @e[tag=uw:getpos_mfm] ~1 ~ ~ scoreboard players add @e[tag=uw:getpos_helper,y=-30000000,z=-300000000,dy=60000000,dz=60000000,dx=30000000] uw:posx 1
execute @e[tag=uw:getpos_mfm] ~1 ~ ~ execute @e[tag=uw:getpos_helper,y=-30000000,z=-300000000,dy=60000000,dz=60000000,dx=30000000] ~ ~ ~ tp ~-1 ~ ~
#5
execute @e[tag=uw:getpos_mfm] ~ ~16 ~ scoreboard players add @e[tag=uw:getpos_helper,x=-30000000,z=-300000000,dx=60000000,dz=60000000,dy=30000000] uw:posy 16
execute @e[tag=uw:getpos_mfm] ~ ~16 ~ execute @e[tag=uw:getpos_helper,x=-30000000,z=-300000000,dx=60000000,dz=60000000,dy=30000000] ~ ~ ~ tp ~ ~-16 ~
#6
execute @e[tag=uw:getpos_mfm] ~ ~8 ~ scoreboard players add @e[tag=uw:getpos_helper,x=-30000000,z=-300000000,dx=60000000,dz=60000000,dy=30000000] uw:posy 8
execute @e[tag=uw:getpos_mfm] ~ ~8 ~ execute @e[tag=uw:getpos_helper,x=-30000000,z=-300000000,dx=60000000,dz=60000000,dy=30000000] ~ ~ ~ tp ~ ~-8 ~
#7
execute @e[tag=uw:getpos_mfm] ~ ~4 ~ scoreboard players add @e[tag=uw:getpos_helper,x=-30000000,z=-300000000,dx=60000000,dz=60000000,dy=30000000] uw:posy 4
execute @e[tag=uw:getpos_mfm] ~ ~4 ~ execute @e[tag=uw:getpos_helper,x=-30000000,z=-300000000,dx=60000000,dz=60000000,dy=30000000] ~ ~ ~ tp ~ ~-4 ~
#8
execute @e[tag=uw:getpos_mfm] ~ ~2 ~ scoreboard players add @e[tag=uw:getpos_helper,x=-30000000,z=-300000000,dx=60000000,dz=60000000,dy=30000000] uw:posy 2
execute @e[tag=uw:getpos_mfm] ~ ~2 ~ execute @e[tag=uw:getpos_helper,x=-30000000,z=-300000000,dx=60000000,dz=60000000,dy=30000000] ~ ~ ~ tp ~ ~-2 ~
#9
execute @e[tag=uw:getpos_mfm] ~ ~1 ~ scoreboard players add @e[tag=uw:getpos_helper,x=-30000000,z=-300000000,dx=60000000,dz=60000000,dy=30000000] uw:posy 1
execute @e[tag=uw:getpos_mfm] ~ ~1 ~ execute @e[tag=uw:getpos_helper,x=-30000000,z=-300000000,dx=60000000,dz=60000000,dy=30000000] ~ ~ ~ tp ~ ~-1 ~
#10
execute @e[tag=uw:getpos_mfm] ~ ~ ~16 scoreboard players add @e[tag=uw:getpos_helper,x=-30000000,y=-300000000,dx=60000000,dy=60000000,dz=30000000] uw:posz 16
execute @e[tag=uw:getpos_mfm] ~ ~ ~16 execute @e[tag=uw:getpos_helper,x=-30000000,y=-300000000,dx=60000000,dy=60000000,dz=30000000] ~ ~ ~ tp ~ ~ ~-16
#11
execute @e[tag=uw:getpos_mfm] ~ ~ ~8 scoreboard players add @e[tag=uw:getpos_helper,x=-30000000,y=-300000000,dx=60000000,dy=60000000,dz=30000000] uw:posz 8
execute @e[tag=uw:getpos_mfm] ~ ~ ~8 execute @e[tag=uw:getpos_helper,x=-30000000,y=-300000000,dx=60000000,dy=60000000,dz=30000000] ~ ~ ~ tp ~ ~ ~-8
#12
execute @e[tag=uw:getpos_mfm] ~ ~ ~4 scoreboard players add @e[tag=uw:getpos_helper,x=-30000000,y=-300000000,dx=60000000,dy=60000000,dz=30000000] uw:posz 4
execute @e[tag=uw:getpos_mfm] ~ ~ ~4 execute @e[tag=uw:getpos_helper,x=-30000000,y=-300000000,dx=60000000,dy=60000000,dz=30000000] ~ ~ ~ tp ~ ~ ~-4
#13
execute @e[tag=uw:getpos_mfm] ~ ~ ~2 scoreboard players add @e[tag=uw:getpos_helper,x=-30000000,y=-300000000,dx=60000000,dy=60000000,dz=30000000] uw:posz 2
execute @e[tag=uw:getpos_mfm] ~ ~ ~2 execute @e[tag=uw:getpos_helper,x=-30000000,y=-300000000,dx=60000000,dy=60000000,dz=30000000] ~ ~ ~ tp ~ ~ ~-2
#14
execute @e[tag=uw:getpos_mfm] ~ ~ ~1 scoreboard players add @e[tag=uw:getpos_helper,x=-30000000,y=-300000000,dx=60000000,dy=60000000,dz=30000000] uw:posz 1
execute @e[tag=uw:getpos_mfm] ~ ~ ~1 execute @e[tag=uw:getpos_helper,x=-30000000,y=-300000000,dx=60000000,dy=60000000,dz=30000000] ~ ~ ~ tp ~ ~ ~-1
#15
execute @e[tag=uw:getpos_helper,tag=uw:getpos_xremove] ~ ~ ~ scoreboard players remove @s uw:posx 31
execute @e[tag=uw:getpos_helper,tag=uw:getpos_yremove] ~ ~ ~ scoreboard players remove @s uw:posy 31
execute @e[tag=uw:getpos_helper,tag=uw:getpos_zremove] ~ ~ ~ scoreboard players remove @s uw:posz 31
#16
#getpos

execute @a[tag=uw:getpos,tag=uw:getpos_allow_distance_3,tag=uw:getpos_allow] ~ ~ ~ scoreboard players operation @s uw:posx = @e[tag=uw:getpos_helper] uw:posx
execute @a[tag=uw:getpos,tag=uw:getpos_allow_distance_3,tag=uw:getpos_allow] ~ ~ ~ scoreboard players operation @s uw:posy = @e[tag=uw:getpos_helper] uw:posy
execute @a[tag=uw:getpos,tag=uw:getpos_allow_distance_3,tag=uw:getpos_allow] ~ ~ ~ scoreboard players operation @s uw:posz = @e[tag=uw:getpos_helper] uw:posz
#score_operation_=

execute @e[tag=uw:getpos_helper] ~ ~ ~ scoreboard players reset @s
execute @e[tag=uw:getpos_helper] ~ ~ ~ tp ~ -32767.0 ~
execute @e[tag=uw:getpos_helper] ~ ~ ~ kill @s
execute @e[tag=uw:getpos_mfm] ~ ~ ~ tp ~ -32767.0 ~
execute @e[tag=uw:getpos_mfm] ~ ~ ~ kill @s
#clean_entity