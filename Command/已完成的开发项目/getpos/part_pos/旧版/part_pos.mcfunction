scoreboard objectives add part_pos:x dummy
scoreboard objectives add part_pos:y dummy
scoreboard objectives add part_pos:z dummy
scoreboard objectives add part_pos:save dummy
#scoreboard_add
tag @s add part_pos_master
#tag_set
execute @e[tag=part_pos_another] ~ ~ ~ summon minecraft:armor_stand part_pos:mark_for_another
execute @e[tag=part_pos_another] ~ ~ ~ tag @e[name=part_pos:mark_for_another,type=minecraft:armor_stand,c=1,tag=!part_pos:mfa,dx=0] add part_pos:mfa
execute @s ~ ~ ~ summon minecraft:armor_stand part_pos:mark_for_master
execute @s ~ ~ ~ tag @e[name=part_pos:mark_for_master,c=1,dx=0,type=minecraft:armor_stand] add part_pos:mfm
#summon_entities_and_tag_set
execute @e[tag=part_pos:mfa] ~ ~ ~ tp ~ ~ ~ facing @e[tag=part_pos:mfm]
#get_ry
execute @e[tag=part_pos:mfa,ry=0.00001,rym=-179.99999] ~ ~ ~ tag @s add part_pos:x_remove
execute @e[tag=part_pos:mfa,ry=0.00001,rym=-179.99999] ~ ~ ~ tp ~256 ~ ~
#tp_to_x+
execute @e[tag=part_pos:mfa,rx=0.00001,rym=-90] ~ ~ ~ tag @s add part_pos:y_remove
execute @e[tag=part_pos:mfa,rx=0.00001,rym=-90] ~ ~ ~ tp ~ ~256 ~
#tp_to_y+
execute @e[tag=part_pos:mfa,ry=90.00001,rym=-89.99999] ~ ~ ~ tag @s add part_pos:z_remove
execute @e[tag=part_pos:mfa,ry=90.00001,rym=-89.99999] ~ ~ ~ tp ~ ~ ~256
#tp_to_z+
execute @e[tag=part_pos:mfa] ~ ~ ~ scoreboard players add @s part_pos:x 0
execute @e[tag=part_pos:mfa] ~ ~ ~ scoreboard players add @s part_pos:y 0
execute @e[tag=part_pos:mfa] ~ ~ ~ scoreboard players add @s part_pos:z 0
#scores_reset
execute @e[tag=part_pos:mfa] ~ ~ ~ tp ~ ~ ~ facing ~-1 ~ ~
#facing
execute @e[tag=part_pos:mfa] ~ ~ ~ scoreboard players add @s part_pos:x 128000000
execute @e[tag=part_pos:mfa] ~ ~ ~ tp ^ ^ ^128
execute @e[tag=part_pos:mfm] ~ ~ ~ execute @e[tag=part_pos:mfa,y=-30000000,z=-30000000,dy=60000000,dz=60000000,dx=-30000000,x=~-1] ~ ~ ~ scoreboard players remove @s part_pos:x 128000000
execute @e[tag=part_pos:mfm] ~ ~ ~ execute @e[tag=part_pos:mfa,y=-30000000,z=-30000000,dy=60000000,dz=60000000,dx=-30000000,x=~-1] ~ ~ ~ tp ^ ^ ^-128
#1
execute @e[tag=part_pos:mfa] ~ ~ ~ scoreboard players add @s part_pos:x 63000000
execute @e[tag=part_pos:mfa] ~ ~ ~ tp ^ ^ ^63
execute @e[tag=part_pos:mfm] ~ ~ ~ execute @e[tag=part_pos:mfa,y=-30000000,z=-30000000,dy=60000000,dz=60000000,dx=-30000000,x=~-1] ~ ~ ~ scoreboard players remove @s part_pos:x 63000000
execute @e[tag=part_pos:mfm] ~ ~ ~ execute @e[tag=part_pos:mfa,y=-30000000,z=-30000000,dy=60000000,dz=60000000,dx=-30000000,x=~-1] ~ ~ ~ tp ^ ^ ^-63
#2
execute @e[tag=part_pos:mfa] ~ ~ ~ scoreboard players add @s part_pos:x 32000000
execute @e[tag=part_pos:mfa] ~ ~ ~ tp ^ ^ ^32
execute @e[tag=part_pos:mfm] ~ ~ ~ execute @e[tag=part_pos:mfa,y=-30000000,z=-30000000,dy=60000000,dz=60000000,dx=-30000000,x=~-1] ~ ~ ~ scoreboard players remove @s part_pos:x 32000000
execute @e[tag=part_pos:mfm] ~ ~ ~ execute @e[tag=part_pos:mfa,y=-30000000,z=-30000000,dy=60000000,dz=60000000,dx=-30000000,x=~-1] ~ ~ ~ tp ^ ^ ^-32
#3
execute @e[tag=part_pos:mfa] ~ ~ ~ scoreboard players add @s part_pos:x 16000000
execute @e[tag=part_pos:mfa] ~ ~ ~ tp ^ ^ ^16
execute @e[tag=part_pos:mfm] ~ ~ ~ execute @e[tag=part_pos:mfa,y=-30000000,z=-30000000,dy=60000000,dz=60000000,dx=-30000000,x=~-1] ~ ~ ~ scoreboard players remove @s part_pos:x 16000000
execute @e[tag=part_pos:mfm] ~ ~ ~ execute @e[tag=part_pos:mfa,y=-30000000,z=-30000000,dy=60000000,dz=60000000,dx=-30000000,x=~-1] ~ ~ ~ tp ^ ^ ^-16
#4
execute @e[tag=part_pos:mfa] ~ ~ ~ scoreboard players add @s part_pos:x 8000000
execute @e[tag=part_pos:mfa] ~ ~ ~ tp ^ ^ ^8
execute @e[tag=part_pos:mfm] ~ ~ ~ execute @e[tag=part_pos:mfa,y=-30000000,z=-30000000,dy=60000000,dz=60000000,dx=-30000000,x=~-1] ~ ~ ~ scoreboard players remove @s part_pos:x 8000000
execute @e[tag=part_pos:mfm] ~ ~ ~ execute @e[tag=part_pos:mfa,y=-30000000,z=-30000000,dy=60000000,dz=60000000,dx=-30000000,x=~-1] ~ ~ ~ tp ^ ^ ^-8
#5
execute @e[tag=part_pos:mfa] ~ ~ ~ scoreboard players add @s part_pos:x 4000000
execute @e[tag=part_pos:mfa] ~ ~ ~ tp ^ ^ ^4
execute @e[tag=part_pos:mfm] ~ ~ ~ execute @e[tag=part_pos:mfa,y=-30000000,z=-30000000,dy=60000000,dz=60000000,dx=-30000000,x=~-1] ~ ~ ~ scoreboard players remove @s part_pos:x 4000000
execute @e[tag=part_pos:mfm] ~ ~ ~ execute @e[tag=part_pos:mfa,y=-30000000,z=-30000000,dy=60000000,dz=60000000,dx=-30000000,x=~-1] ~ ~ ~ tp ^ ^ ^-4
#6
execute @e[tag=part_pos:mfa] ~ ~ ~ scoreboard players add @s part_pos:x 2000000
execute @e[tag=part_pos:mfa] ~ ~ ~ tp ^ ^ ^2
execute @e[tag=part_pos:mfm] ~ ~ ~ execute @e[tag=part_pos:mfa,y=-30000000,z=-30000000,dy=60000000,dz=60000000,dx=-30000000,x=~-1] ~ ~ ~ scoreboard players remove @s part_pos:x 2000000
execute @e[tag=part_pos:mfm] ~ ~ ~ execute @e[tag=part_pos:mfa,y=-30000000,z=-30000000,dy=60000000,dz=60000000,dx=-30000000,x=~-1] ~ ~ ~ tp ^ ^ ^-2
#7
execute @e[tag=part_pos:mfa] ~ ~ ~ scoreboard players add @s part_pos:x 1000000
execute @e[tag=part_pos:mfa] ~ ~ ~ tp ^ ^ ^1
execute @e[tag=part_pos:mfm] ~ ~ ~ execute @e[tag=part_pos:mfa,y=-30000000,z=-30000000,dy=60000000,dz=60000000,dx=-30000000,x=~-1] ~ ~ ~ scoreboard players remove @s part_pos:x 1000000
execute @e[tag=part_pos:mfm] ~ ~ ~ execute @e[tag=part_pos:mfa,y=-30000000,z=-30000000,dy=60000000,dz=60000000,dx=-30000000,x=~-1] ~ ~ ~ tp ^ ^ ^-1
#8
execute @e[tag=part_pos:mfa] ~ ~ ~ scoreboard players add @s part_pos:x 1000000
execute @e[tag=part_pos:mfa] ~ ~ ~ tp ^ ^ ^1
execute @e[tag=part_pos:mfm] ~ ~ ~ execute @e[tag=part_pos:mfa,y=-30000000,z=-30000000,dy=60000000,dz=60000000,dx=-30000000,x=~-1] ~ ~ ~ scoreboard players remove @s part_pos:x 1000000
execute @e[tag=part_pos:mfm] ~ ~ ~ execute @e[tag=part_pos:mfa,y=-30000000,z=-30000000,dy=60000000,dz=60000000,dx=-30000000,x=~-1] ~ ~ ~ tp ^ ^ ^-1
#9
execute @e[tag=part_pos:mfa] ~ ~ ~ scoreboard players add @s part_pos:x 1000000
execute @e[tag=part_pos:mfa] ~ ~ ~ tp ^ ^ ^1
execute @e[tag=part_pos:mfm] ~ ~ ~ execute @e[tag=part_pos:mfa,y=-30000000,z=-30000000,dy=60000000,dz=60000000,dx=-30000000,x=~-1] ~ ~ ~ scoreboard players remove @s part_pos:x 1000000
execute @e[tag=part_pos:mfm] ~ ~ ~ execute @e[tag=part_pos:mfa,y=-30000000,z=-30000000,dy=60000000,dz=60000000,dx=-30000000,x=~-1] ~ ~ ~ tp ^ ^ ^-1
#10
execute @e[tag=part_pos:mfa] ~ ~ ~ scoreboard players add @s part_pos:x 800000
execute @e[tag=part_pos:mfa] ~ ~ ~ tp ^ ^ ^0.8 facing @e[tag=part_pos:mfm]
execute @e[tag=part_pos:mfa,ry=0,rym=-180] ~ ~ ~ scoreboard players remove @s part_pos:x 800000
execute @e[tag=part_pos:mfa,ry=0,rym=-180] ~ ~ ~ tp ~0.8 ~ ~
execute @e[tag=part_pos:mfa] ~ ~ ~ tp ~ ~ ~ facing ~-1 ~ ~
#11
execute @e[tag=part_pos:mfa] ~ ~ ~ scoreboard players add @s part_pos:x 400000
execute @e[tag=part_pos:mfa] ~ ~ ~ tp ^ ^ ^0.4 facing @e[tag=part_pos:mfm]
execute @e[tag=part_pos:mfa,ry=0,rym=-180] ~ ~ ~ scoreboard players remove @s part_pos:x 400000
execute @e[tag=part_pos:mfa,ry=0,rym=-180] ~ ~ ~ tp ~0.4 ~ ~
execute @e[tag=part_pos:mfa] ~ ~ ~ tp ~ ~ ~ facing ~-1 ~ ~
#12
execute @e[tag=part_pos:mfa] ~ ~ ~ scoreboard players add @s part_pos:x 200000
execute @e[tag=part_pos:mfa] ~ ~ ~ tp ^ ^ ^0.2 facing @e[tag=part_pos:mfm]
execute @e[tag=part_pos:mfa,ry=0,rym=-180] ~ ~ ~ scoreboard players remove @s part_pos:x 200000
execute @e[tag=part_pos:mfa,ry=0,rym=-180] ~ ~ ~ tp ~0.2 ~ ~
execute @e[tag=part_pos:mfa] ~ ~ ~ tp ~ ~ ~ facing ~-1 ~ ~
#13
execute @e[tag=part_pos:mfa] ~ ~ ~ scoreboard players add @s part_pos:x 100000
execute @e[tag=part_pos:mfa] ~ ~ ~ tp ^ ^ ^0.1 facing @e[tag=part_pos:mfm]
execute @e[tag=part_pos:mfa,ry=0,rym=-180] ~ ~ ~ scoreboard players remove @s part_pos:x 100000
execute @e[tag=part_pos:mfa,ry=0,rym=-180] ~ ~ ~ tp ~0.1 ~ ~
execute @e[tag=part_pos:mfa] ~ ~ ~ tp ~ ~ ~ facing ~-1 ~ ~
#14
execute @e[tag=part_pos:mfa] ~ ~ ~ scoreboard players add @s part_pos:x 80000
execute @e[tag=part_pos:mfa] ~ ~ ~ tp ^ ^ ^0.08 facing @e[tag=part_pos:mfm]
execute @e[tag=part_pos:mfa,ry=0,rym=-180] ~ ~ ~ scoreboard players remove @s part_pos:x 80000
execute @e[tag=part_pos:mfa,ry=0,rym=-180] ~ ~ ~ tp ~0.08 ~ ~
execute @e[tag=part_pos:mfa] ~ ~ ~ tp ~ ~ ~ facing ~-1 ~ ~
#15
execute @e[tag=part_pos:mfa] ~ ~ ~ scoreboard players add @s part_pos:x 40000
execute @e[tag=part_pos:mfa] ~ ~ ~ tp ^ ^ ^0.04 facing @e[tag=part_pos:mfm]
execute @e[tag=part_pos:mfa,ry=0,rym=-180] ~ ~ ~ scoreboard players remove @s part_pos:x 40000
execute @e[tag=part_pos:mfa,ry=0,rym=-180] ~ ~ ~ tp ~0.04 ~ ~
execute @e[tag=part_pos:mfa] ~ ~ ~ tp ~ ~ ~ facing ~-1 ~ ~
#16
execute @e[tag=part_pos:mfa] ~ ~ ~ scoreboard players add @s part_pos:x 20000
execute @e[tag=part_pos:mfa] ~ ~ ~ tp ^ ^ ^0.02 facing @e[tag=part_pos:mfm]
execute @e[tag=part_pos:mfa,ry=0,rym=-180] ~ ~ ~ scoreboard players remove @s part_pos:x 20000
execute @e[tag=part_pos:mfa,ry=0,rym=-180] ~ ~ ~ tp ~0.02 ~ ~
execute @e[tag=part_pos:mfa] ~ ~ ~ tp ~ ~ ~ facing ~-1 ~ ~
#17
execute @e[tag=part_pos:mfa] ~ ~ ~ scoreboard players add @s part_pos:x 10000
execute @e[tag=part_pos:mfa] ~ ~ ~ tp ^ ^ ^0.01 facing @e[tag=part_pos:mfm]
execute @e[tag=part_pos:mfa,ry=0,rym=-180] ~ ~ ~ scoreboard players remove @s part_pos:x 10000
execute @e[tag=part_pos:mfa,ry=0,rym=-180] ~ ~ ~ tp ~0.01 ~ ~
execute @e[tag=part_pos:mfa] ~ ~ ~ tp ~ ~ ~ facing ~-1 ~ ~
#18
execute @e[tag=part_pos:mfa] ~ ~ ~ scoreboard players add @s part_pos:x 8000
execute @e[tag=part_pos:mfa] ~ ~ ~ tp ^ ^ ^0.008 facing @e[tag=part_pos:mfm]
execute @e[tag=part_pos:mfa,ry=0,rym=-180] ~ ~ ~ scoreboard players remove @s part_pos:x 8000
execute @e[tag=part_pos:mfa,ry=0,rym=-180] ~ ~ ~ tp ~0.008 ~ ~
execute @e[tag=part_pos:mfa] ~ ~ ~ tp ~ ~ ~ facing ~-1 ~ ~
#19
execute @e[tag=part_pos:mfa] ~ ~ ~ scoreboard players add @s part_pos:x 4000
execute @e[tag=part_pos:mfa] ~ ~ ~ tp ^ ^ ^0.004 facing @e[tag=part_pos:mfm]
execute @e[tag=part_pos:mfa,ry=0,rym=-180] ~ ~ ~ scoreboard players remove @s part_pos:x 4000
execute @e[tag=part_pos:mfa,ry=0,rym=-180] ~ ~ ~ tp ~0.004 ~ ~
execute @e[tag=part_pos:mfa] ~ ~ ~ tp ~ ~ ~ facing ~-1 ~ ~
#20
execute @e[tag=part_pos:mfa] ~ ~ ~ scoreboard players add @s part_pos:x 2000
execute @e[tag=part_pos:mfa] ~ ~ ~ tp ^ ^ ^0.002 facing @e[tag=part_pos:mfm]
execute @e[tag=part_pos:mfa,ry=0,rym=-180] ~ ~ ~ scoreboard players remove @s part_pos:x 2000
execute @e[tag=part_pos:mfa,ry=0,rym=-180] ~ ~ ~ tp ~0.002 ~ ~
execute @e[tag=part_pos:mfa] ~ ~ ~ tp ~ ~ ~ facing ~-1 ~ ~
#21
execute @e[tag=part_pos:mfa] ~ ~ ~ scoreboard players add @s part_pos:x 1000
execute @e[tag=part_pos:mfa] ~ ~ ~ tp ^ ^ ^0.001 facing @e[tag=part_pos:mfm]
execute @e[tag=part_pos:mfa,ry=0,rym=-180] ~ ~ ~ scoreboard players remove @s part_pos:x 1000
execute @e[tag=part_pos:mfa,ry=0,rym=-180] ~ ~ ~ tp ~0.001 ~ ~
execute @e[tag=part_pos:mfa] ~ ~ ~ tp ~ ~ ~ facing ~-1 ~ ~
#22
execute @e[tag=part_pos:mfa] ~ ~ ~ scoreboard players add @s part_pos:x 800
execute @e[tag=part_pos:mfa] ~ ~ ~ tp ^ ^ ^0.0008 facing @e[tag=part_pos:mfm]
execute @e[tag=part_pos:mfa,ry=0,rym=-180] ~ ~ ~ scoreboard players remove @s part_pos:x 800
execute @e[tag=part_pos:mfa,ry=0,rym=-180] ~ ~ ~ tp ~0.0008 ~ ~
execute @e[tag=part_pos:mfa] ~ ~ ~ tp ~ ~ ~ facing ~-1 ~ ~
#22
execute @e[tag=part_pos:mfa] ~ ~ ~ scoreboard players add @s part_pos:x 400
execute @e[tag=part_pos:mfa] ~ ~ ~ tp ^ ^ ^0.0004 facing @e[tag=part_pos:mfm]
execute @e[tag=part_pos:mfa,ry=0,rym=-180] ~ ~ ~ scoreboard players remove @s part_pos:x 400
execute @e[tag=part_pos:mfa,ry=0,rym=-180] ~ ~ ~ tp ~0.0004 ~ ~
execute @e[tag=part_pos:mfa] ~ ~ ~ tp ~ ~ ~ facing ~-1 ~ ~
#23
execute @e[tag=part_pos:mfa] ~ ~ ~ scoreboard players add @s part_pos:x 200
execute @e[tag=part_pos:mfa] ~ ~ ~ tp ^ ^ ^0.0002 facing @e[tag=part_pos:mfm]
execute @e[tag=part_pos:mfa,ry=0,rym=-180] ~ ~ ~ scoreboard players remove @s part_pos:x 200
execute @e[tag=part_pos:mfa,ry=0,rym=-180] ~ ~ ~ tp ~0.0002 ~ ~
execute @e[tag=part_pos:mfa] ~ ~ ~ tp ~ ~ ~ facing ~-1 ~ ~
#24
execute @e[tag=part_pos:mfa] ~ ~ ~ scoreboard players add @s part_pos:x 100
execute @e[tag=part_pos:mfa] ~ ~ ~ tp ^ ^ ^0.0001 facing @e[tag=part_pos:mfm]
execute @e[tag=part_pos:mfa,ry=0,rym=-180] ~ ~ ~ scoreboard players remove @s part_pos:x 100
execute @e[tag=part_pos:mfa,ry=0,rym=-180] ~ ~ ~ tp ~0.0001 ~ ~
execute @e[tag=part_pos:mfa] ~ ~ ~ tp ~ ~ ~ facing ~-1 ~ ~
#25
execute @e[tag=part_pos:mfa] ~ ~ ~ scoreboard players add @s part_pos:x 80
execute @e[tag=part_pos:mfa] ~ ~ ~ tp ^ ^ ^0.00008 facing @e[tag=part_pos:mfm]
execute @e[tag=part_pos:mfa,ry=0,rym=-180] ~ ~ ~ scoreboard players remove @s part_pos:x 80
execute @e[tag=part_pos:mfa,ry=0,rym=-180] ~ ~ ~ tp ~0.00008 ~ ~
execute @e[tag=part_pos:mfa] ~ ~ ~ tp ~ ~ ~ facing ~-1 ~ ~
#26
execute @e[tag=part_pos:mfa] ~ ~ ~ scoreboard players add @s part_pos:x 40
execute @e[tag=part_pos:mfa] ~ ~ ~ tp ^ ^ ^0.00004 facing @e[tag=part_pos:mfm]
execute @e[tag=part_pos:mfa,ry=0,rym=-180] ~ ~ ~ scoreboard players remove @s part_pos:x 40
execute @e[tag=part_pos:mfa,ry=0,rym=-180] ~ ~ ~ tp ~0.00004 ~ ~
execute @e[tag=part_pos:mfa] ~ ~ ~ tp ~ ~ ~ facing ~-1 ~ ~
#27
execute @e[tag=part_pos:mfa] ~ ~ ~ scoreboard players add @s part_pos:x 20
execute @e[tag=part_pos:mfa] ~ ~ ~ tp ^ ^ ^0.00002 facing @e[tag=part_pos:mfm]
execute @e[tag=part_pos:mfa,ry=0,rym=-180] ~ ~ ~ scoreboard players remove @s part_pos:x 20
execute @e[tag=part_pos:mfa,ry=0,rym=-180] ~ ~ ~ tp ~0.00002 ~ ~
execute @e[tag=part_pos:mfa] ~ ~ ~ tp ~ ~ ~ facing ~-1 ~ ~
#28
execute @e[tag=part_pos:mfa] ~ ~ ~ scoreboard players add @s part_pos:x 10
execute @e[tag=part_pos:mfa] ~ ~ ~ tp ^ ^ ^0.00001 facing @e[tag=part_pos:mfm]
execute @e[tag=part_pos:mfa,ry=0,rym=-180] ~ ~ ~ scoreboard players remove @s part_pos:x 10
execute @e[tag=part_pos:mfa,ry=0,rym=-180] ~ ~ ~ tp ~0.00001 ~ ~
execute @e[tag=part_pos:mfa] ~ ~ ~ tp ~ ~ ~ facing ~-1 ~ ~
#29
execute @e[tag=part_pos:mfa] ~ ~ ~ scoreboard players add @s part_pos:x 8
execute @e[tag=part_pos:mfa] ~ ~ ~ tp ^ ^ ^0.000008 facing @e[tag=part_pos:mfm]
execute @e[tag=part_pos:mfa,ry=0,rym=-180] ~ ~ ~ scoreboard players remove @s part_pos:x 8
execute @e[tag=part_pos:mfa,ry=0,rym=-180] ~ ~ ~ tp ~0.000008 ~ ~
execute @e[tag=part_pos:mfa] ~ ~ ~ tp ~ ~ ~ facing ~-1 ~ ~
#30
execute @e[tag=part_pos:mfa] ~ ~ ~ scoreboard players add @s part_pos:x 4
execute @e[tag=part_pos:mfa] ~ ~ ~ tp ^ ^ ^0.000004 facing @e[tag=part_pos:mfm]
execute @e[tag=part_pos:mfa,ry=0,rym=-180] ~ ~ ~ scoreboard players remove @s part_pos:x 4
execute @e[tag=part_pos:mfa,ry=0,rym=-180] ~ ~ ~ tp ~0.000004 ~ ~
execute @e[tag=part_pos:mfa] ~ ~ ~ tp ~ ~ ~ facing ~-1 ~ ~
#31
execute @e[tag=part_pos:mfa] ~ ~ ~ scoreboard players add @s part_pos:x 2
execute @e[tag=part_pos:mfa] ~ ~ ~ tp ^ ^ ^0.000002 facing @e[tag=part_pos:mfm]
execute @e[tag=part_pos:mfa,ry=0,rym=-180] ~ ~ ~ scoreboard players remove @s part_pos:x 2
execute @e[tag=part_pos:mfa,ry=0,rym=-180] ~ ~ ~ tp ~0.000002 ~ ~
execute @e[tag=part_pos:mfa] ~ ~ ~ tp ~ ~ ~ facing ~-1 ~ ~
#32
execute @e[tag=part_pos:mfa] ~ ~ ~ scoreboard players add @s part_pos:x 1
execute @e[tag=part_pos:mfa] ~ ~ ~ tp ^ ^ ^0.000001 facing @e[tag=part_pos:mfm]
execute @e[tag=part_pos:mfa,ry=0,rym=-180] ~ ~ ~ scoreboard players remove @s part_pos:x 1
execute @e[tag=part_pos:mfa,ry=0,rym=-180] ~ ~ ~ tp ~0.000001 ~ ~
execute @e[tag=part_pos:mfa] ~ ~ ~ tp ~ ~ ~ facing ~-1 ~ ~
#33
#posx
execute @e[tag=part_pos:mfa] ~ ~ ~ scoreboard players add @s part_pos:y 128000000
execute @e[tag=part_pos:mfa] ~ ~ ~ tp ~ ~-128 ~
execute @e[tag=part_pos:mfm] ~ ~ ~ execute @e[tag=part_pos:mfa,x=-30000000,z=-30000000,dx=60000000,dz=60000000,dy=-30000000,y=~-1] ~ ~ ~ scoreboard players remove @s part_pos:y 128000000
execute @e[tag=part_pos:mfm] ~ ~ ~ execute @e[tag=part_pos:mfa,x=-30000000,z=-30000000,dx=60000000,dz=60000000,dy=-30000000,y=~-1] ~ ~ ~ tp ~ ~128 ~
#1
execute @e[tag=part_pos:mfa] ~ ~ ~ scoreboard players add @s part_pos:y 63000000
execute @e[tag=part_pos:mfa] ~ ~ ~ tp ~ ~-63 ~
execute @e[tag=part_pos:mfm] ~ ~ ~ execute @e[tag=part_pos:mfa,x=-30000000,z=-30000000,dx=60000000,dz=60000000,dy=-30000000,y=~-1] ~ ~ ~ scoreboard players remove @s part_pos:y 63000000
execute @e[tag=part_pos:mfm] ~ ~ ~ execute @e[tag=part_pos:mfa,x=-30000000,z=-30000000,dx=60000000,dz=60000000,dy=-30000000,y=~-1] ~ ~ ~ tp ~ ~63 ~
#2
execute @e[tag=part_pos:mfa] ~ ~ ~ scoreboard players add @s part_pos:y 32000000
execute @e[tag=part_pos:mfa] ~ ~ ~ tp ~ ~-32 ~
execute @e[tag=part_pos:mfm] ~ ~ ~ execute @e[tag=part_pos:mfa,x=-30000000,z=-30000000,dx=60000000,dz=60000000,dy=-30000000,y=~-1] ~ ~ ~ scoreboard players remove @s part_pos:y 32000000
execute @e[tag=part_pos:mfm] ~ ~ ~ execute @e[tag=part_pos:mfa,x=-30000000,z=-30000000,dx=60000000,dz=60000000,dy=-30000000,y=~-1] ~ ~ ~ tp ~ ~32 ~
#3
execute @e[tag=part_pos:mfa] ~ ~ ~ scoreboard players add @s part_pos:y 16000000
execute @e[tag=part_pos:mfa] ~ ~ ~ tp ~ ~-16 ~
execute @e[tag=part_pos:mfm] ~ ~ ~ execute @e[tag=part_pos:mfa,x=-30000000,z=-30000000,dx=60000000,dz=60000000,dy=-30000000,y=~-1] ~ ~ ~ scoreboard players remove @s part_pos:y 16000000
execute @e[tag=part_pos:mfm] ~ ~ ~ execute @e[tag=part_pos:mfa,x=-30000000,z=-30000000,dx=60000000,dz=60000000,dy=-30000000,y=~-1] ~ ~ ~ tp ~ ~16 ~
#4
execute @e[tag=part_pos:mfa] ~ ~ ~ scoreboard players add @s part_pos:y 8000000
execute @e[tag=part_pos:mfa] ~ ~ ~ tp ~ ~-8 ~
execute @e[tag=part_pos:mfm] ~ ~ ~ execute @e[tag=part_pos:mfa,x=-30000000,z=-30000000,dx=60000000,dz=60000000,dy=-30000000,y=~-1] ~ ~ ~ scoreboard players remove @s part_pos:y 8000000
execute @e[tag=part_pos:mfm] ~ ~ ~ execute @e[tag=part_pos:mfa,x=-30000000,z=-30000000,dx=60000000,dz=60000000,dy=-30000000,y=~-1] ~ ~ ~ tp ~ ~8 ~
#5
execute @e[tag=part_pos:mfa] ~ ~ ~ scoreboard players add @s part_pos:y 4000000
execute @e[tag=part_pos:mfa] ~ ~ ~ tp ~ ~-4 ~
execute @e[tag=part_pos:mfm] ~ ~ ~ execute @e[tag=part_pos:mfa,x=-30000000,z=-30000000,dx=60000000,dz=60000000,dy=-30000000,y=~-1] ~ ~ ~ scoreboard players remove @s part_pos:y 4000000
execute @e[tag=part_pos:mfm] ~ ~ ~ execute @e[tag=part_pos:mfa,x=-30000000,z=-30000000,dx=60000000,dz=60000000,dy=-30000000,y=~-1] ~ ~ ~ tp ~ ~4 ~
#6
execute @e[tag=part_pos:mfa] ~ ~ ~ scoreboard players add @s part_pos:y 2000000
execute @e[tag=part_pos:mfa] ~ ~ ~ tp ~ ~-2 ~
execute @e[tag=part_pos:mfm] ~ ~ ~ execute @e[tag=part_pos:mfa,x=-30000000,z=-30000000,dx=60000000,dz=60000000,dy=-30000000,y=~-1] ~ ~ ~ scoreboard players remove @s part_pos:y 2000000
execute @e[tag=part_pos:mfm] ~ ~ ~ execute @e[tag=part_pos:mfa,x=-30000000,z=-30000000,dx=60000000,dz=60000000,dy=-30000000,y=~-1] ~ ~ ~ tp ~ ~2 ~
#7
execute @e[tag=part_pos:mfa] ~ ~ ~ scoreboard players add @s part_pos:y 1000000
execute @e[tag=part_pos:mfa] ~ ~ ~ tp ~ ~-1 ~
execute @e[tag=part_pos:mfm] ~ ~ ~ execute @e[tag=part_pos:mfa,x=-30000000,z=-30000000,dx=60000000,dz=60000000,dy=-30000000,y=~-1] ~ ~ ~ scoreboard players remove @s part_pos:y 1000000
execute @e[tag=part_pos:mfm] ~ ~ ~ execute @e[tag=part_pos:mfa,x=-30000000,z=-30000000,dx=60000000,dz=60000000,dy=-30000000,y=~-1] ~ ~ ~ tp ~ ~1 ~
#8
execute @e[tag=part_pos:mfa] ~ ~ ~ scoreboard players add @s part_pos:y 1000000
execute @e[tag=part_pos:mfa] ~ ~ ~ tp ~ ~-1 ~
execute @e[tag=part_pos:mfm] ~ ~ ~ execute @e[tag=part_pos:mfa,x=-30000000,z=-30000000,dx=60000000,dz=60000000,dy=-30000000,y=~-1] ~ ~ ~ scoreboard players remove @s part_pos:y 1000000
execute @e[tag=part_pos:mfm] ~ ~ ~ execute @e[tag=part_pos:mfa,x=-30000000,z=-30000000,dx=60000000,dz=60000000,dy=-30000000,y=~-1] ~ ~ ~ tp ~ ~1 ~
#9
execute @e[tag=part_pos:mfa] ~ ~ ~ scoreboard players add @s part_pos:y 1000000
execute @e[tag=part_pos:mfa] ~ ~ ~ tp ~ ~-1 ~
execute @e[tag=part_pos:mfm] ~ ~ ~ execute @e[tag=part_pos:mfa,x=-30000000,z=-30000000,dx=60000000,dz=60000000,dy=-30000000,y=~-1] ~ ~ ~ scoreboard players remove @s part_pos:y 1000000
execute @e[tag=part_pos:mfm] ~ ~ ~ execute @e[tag=part_pos:mfa,x=-30000000,z=-30000000,dx=60000000,dz=60000000,dy=-30000000,y=~-1] ~ ~ ~ tp ~ ~1 ~
#10
execute @e[tag=part_pos:mfa] ~ ~ ~ scoreboard players add @s part_pos:y 800000
execute @e[tag=part_pos:mfa] ~ ~ ~ tp ~ ~-0.8 ~ facing @e[tag=part_pos:mfm]
execute @e[tag=part_pos:mfa,rx=0,rxm=-90] ~ ~ ~ scoreboard players remove @s part_pos:y 800000
execute @e[tag=part_pos:mfa,rx=0,rxm=-90] ~ ~ ~ tp ~ ~0.8 ~
#11
execute @e[tag=part_pos:mfa] ~ ~ ~ scoreboard players add @s part_pos:y 400000
execute @e[tag=part_pos:mfa] ~ ~ ~ tp ~ ~-0.4 ~ facing @e[tag=part_pos:mfm]
execute @e[tag=part_pos:mfa,rx=0,rxm=-90] ~ ~ ~ scoreboard players remove @s part_pos:y 400000
execute @e[tag=part_pos:mfa,rx=0,rxm=-90] ~ ~ ~ tp ~ ~0.4 ~
#12
execute @e[tag=part_pos:mfa] ~ ~ ~ scoreboard players add @s part_pos:y 200000
execute @e[tag=part_pos:mfa] ~ ~ ~ tp ~ ~-0.2 ~ facing @e[tag=part_pos:mfm]
execute @e[tag=part_pos:mfa,rx=0,rxm=-90] ~ ~ ~ scoreboard players remove @s part_pos:y 200000
execute @e[tag=part_pos:mfa,rx=0,rxm=-90] ~ ~ ~ tp ~ ~0.2 ~
#13
execute @e[tag=part_pos:mfa] ~ ~ ~ scoreboard players add @s part_pos:y 100000
execute @e[tag=part_pos:mfa] ~ ~ ~ tp ~ ~-0.1 ~ facing @e[tag=part_pos:mfm]
execute @e[tag=part_pos:mfa,rx=0,rxm=-90] ~ ~ ~ scoreboard players remove @s part_pos:y 100000
execute @e[tag=part_pos:mfa,rx=0,rxm=-90] ~ ~ ~ tp ~ ~0.1 ~
#14
execute @e[tag=part_pos:mfa] ~ ~ ~ scoreboard players add @s part_pos:y 80000
execute @e[tag=part_pos:mfa] ~ ~ ~ tp ~ ~-0.08 ~ facing @e[tag=part_pos:mfm]
execute @e[tag=part_pos:mfa,rx=0,rxm=-90] ~ ~ ~ scoreboard players remove @s part_pos:y 80000
execute @e[tag=part_pos:mfa,rx=0,rxm=-90] ~ ~ ~ tp ~ ~0.08 ~
#15
execute @e[tag=part_pos:mfa] ~ ~ ~ scoreboard players add @s part_pos:y 40000
execute @e[tag=part_pos:mfa] ~ ~ ~ tp ~ ~-0.04 ~ facing @e[tag=part_pos:mfm]
execute @e[tag=part_pos:mfa,rx=0,rxm=-90] ~ ~ ~ scoreboard players remove @s part_pos:y 40000
execute @e[tag=part_pos:mfa,rx=0,rxm=-90] ~ ~ ~ tp ~ ~0.04 ~
#16
execute @e[tag=part_pos:mfa] ~ ~ ~ scoreboard players add @s part_pos:y 20000
execute @e[tag=part_pos:mfa] ~ ~ ~ tp ~ ~-0.02 ~ facing @e[tag=part_pos:mfm]
execute @e[tag=part_pos:mfa,rx=0,rxm=-90] ~ ~ ~ scoreboard players remove @s part_pos:y 20000
execute @e[tag=part_pos:mfa,rx=0,rxm=-90] ~ ~ ~ tp ~ ~0.02 ~
#17
execute @e[tag=part_pos:mfa] ~ ~ ~ scoreboard players add @s part_pos:y 10000
execute @e[tag=part_pos:mfa] ~ ~ ~ tp ~ ~-0.01 ~ facing @e[tag=part_pos:mfm]
execute @e[tag=part_pos:mfa,rx=0,rxm=-90] ~ ~ ~ scoreboard players remove @s part_pos:y 10000
execute @e[tag=part_pos:mfa,rx=0,rxm=-90] ~ ~ ~ tp ~ ~0.01 ~
#18
execute @e[tag=part_pos:mfa] ~ ~ ~ scoreboard players add @s part_pos:y 8000
execute @e[tag=part_pos:mfa] ~ ~ ~ tp ~ ~-0.008 ~ facing @e[tag=part_pos:mfm]
execute @e[tag=part_pos:mfa,rx=0,rxm=-90] ~ ~ ~ scoreboard players remove @s part_pos:y 8000
execute @e[tag=part_pos:mfa,rx=0,rxm=-90] ~ ~ ~ tp ~ ~0.008 ~
#19
execute @e[tag=part_pos:mfa] ~ ~ ~ scoreboard players add @s part_pos:y 4000
execute @e[tag=part_pos:mfa] ~ ~ ~ tp ~ ~-0.004 ~ facing @e[tag=part_pos:mfm]
execute @e[tag=part_pos:mfa,rx=0,rxm=-90] ~ ~ ~ scoreboard players remove @s part_pos:y 4000
execute @e[tag=part_pos:mfa,rx=0,rxm=-90] ~ ~ ~ tp ~ ~0.004 ~
#20
execute @e[tag=part_pos:mfa] ~ ~ ~ scoreboard players add @s part_pos:y 2000
execute @e[tag=part_pos:mfa] ~ ~ ~ tp ~ ~-0.002 ~ facing @e[tag=part_pos:mfm]
execute @e[tag=part_pos:mfa,rx=0,rxm=-90] ~ ~ ~ scoreboard players remove @s part_pos:y 2000
execute @e[tag=part_pos:mfa,rx=0,rxm=-90] ~ ~ ~ tp ~ ~0.002 ~
#21
execute @e[tag=part_pos:mfa] ~ ~ ~ scoreboard players add @s part_pos:y 1000
execute @e[tag=part_pos:mfa] ~ ~ ~ tp ~ ~-0.001 ~ facing @e[tag=part_pos:mfm]
execute @e[tag=part_pos:mfa,rx=0,rxm=-90] ~ ~ ~ scoreboard players remove @s part_pos:y 1000
execute @e[tag=part_pos:mfa,rx=0,rxm=-90] ~ ~ ~ tp ~ ~0.001 ~
#22
execute @e[tag=part_pos:mfa] ~ ~ ~ scoreboard players add @s part_pos:y 800
execute @e[tag=part_pos:mfa] ~ ~ ~ tp ~ ~-0.0008 ~ facing @e[tag=part_pos:mfm]
execute @e[tag=part_pos:mfa,rx=0,rxm=-90] ~ ~ ~ scoreboard players remove @s part_pos:y 800
execute @e[tag=part_pos:mfa,rx=0,rxm=-90] ~ ~ ~ tp ~ ~0.0008 ~
#22
execute @e[tag=part_pos:mfa] ~ ~ ~ scoreboard players add @s part_pos:y 400
execute @e[tag=part_pos:mfa] ~ ~ ~ tp ~ ~-0.0004 ~ facing @e[tag=part_pos:mfm]
execute @e[tag=part_pos:mfa,rx=0,rxm=-90] ~ ~ ~ scoreboard players remove @s part_pos:y 400
execute @e[tag=part_pos:mfa,rx=0,rxm=-90] ~ ~ ~ tp ~ ~0.0004 ~
#23
execute @e[tag=part_pos:mfa] ~ ~ ~ scoreboard players add @s part_pos:y 200
execute @e[tag=part_pos:mfa] ~ ~ ~ tp ~ ~-0.0002 ~ facing @e[tag=part_pos:mfm]
execute @e[tag=part_pos:mfa,rx=0,rxm=-90] ~ ~ ~ scoreboard players remove @s part_pos:y 200
execute @e[tag=part_pos:mfa,rx=0,rxm=-90] ~ ~ ~ tp ~ ~0.0002 ~
#24
execute @e[tag=part_pos:mfa] ~ ~ ~ scoreboard players add @s part_pos:y 100
execute @e[tag=part_pos:mfa] ~ ~ ~ tp ~ ~-0.0001 ~ facing @e[tag=part_pos:mfm]
execute @e[tag=part_pos:mfa,rx=0,rxm=-90] ~ ~ ~ scoreboard players remove @s part_pos:y 100
execute @e[tag=part_pos:mfa,rx=0,rxm=-90] ~ ~ ~ tp ~ ~0.0001 ~
#25
execute @e[tag=part_pos:mfa] ~ ~ ~ scoreboard players add @s part_pos:y 80
execute @e[tag=part_pos:mfa] ~ ~ ~ tp ~ ~-0.00008 ~ facing @e[tag=part_pos:mfm]
execute @e[tag=part_pos:mfa,rx=0,rxm=-90] ~ ~ ~ scoreboard players remove @s part_pos:y 80
execute @e[tag=part_pos:mfa,rx=0,rxm=-90] ~ ~ ~ tp ~ ~0.00008 ~
#26
execute @e[tag=part_pos:mfa] ~ ~ ~ scoreboard players add @s part_pos:y 40
execute @e[tag=part_pos:mfa] ~ ~ ~ tp ~ ~-0.00004 ~ facing @e[tag=part_pos:mfm]
execute @e[tag=part_pos:mfa,rx=0,rxm=-90] ~ ~ ~ scoreboard players remove @s part_pos:y 40
execute @e[tag=part_pos:mfa,rx=0,rxm=-90] ~ ~ ~ tp ~ ~0.00004 ~
#27
execute @e[tag=part_pos:mfa] ~ ~ ~ scoreboard players add @s part_pos:y 20
execute @e[tag=part_pos:mfa] ~ ~ ~ tp ~ ~-0.00002 ~ facing @e[tag=part_pos:mfm]
execute @e[tag=part_pos:mfa,rx=0,rxm=-90] ~ ~ ~ scoreboard players remove @s part_pos:y 20
execute @e[tag=part_pos:mfa,rx=0,rxm=-90] ~ ~ ~ tp ~ ~0.00002 ~
#28
execute @e[tag=part_pos:mfa] ~ ~ ~ scoreboard players add @s part_pos:y 10
execute @e[tag=part_pos:mfa] ~ ~ ~ tp ~ ~-0.00001~ facing @e[tag=part_pos:mfm]
execute @e[tag=part_pos:mfa,rx=0,rxm=-90] ~ ~ ~ scoreboard players remove @s part_pos:y 10
execute @e[tag=part_pos:mfa,rx=0,rxm=-90] ~ ~ ~ tp ~ ~0.00001
#29
execute @e[tag=part_pos:mfa] ~ ~ ~ scoreboard players add @s part_pos:y 8
execute @e[tag=part_pos:mfa] ~ ~ ~ tp ~ ~-0.000008 ~ facing @e[tag=part_pos:mfm]
execute @e[tag=part_pos:mfa,rx=0,rxm=-90] ~ ~ ~ scoreboard players remove @s part_pos:y 8
execute @e[tag=part_pos:mfa,rx=0,rxm=-90] ~ ~ ~ tp ~ ~0.000008 ~
#30
execute @e[tag=part_pos:mfa] ~ ~ ~ scoreboard players add @s part_pos:y 4
execute @e[tag=part_pos:mfa] ~ ~ ~ tp ~ ~-0.000004 ~ facing @e[tag=part_pos:mfm]
execute @e[tag=part_pos:mfa,rx=0,rxm=-90] ~ ~ ~ scoreboard players remove @s part_pos:y 4
execute @e[tag=part_pos:mfa,rx=0,rxm=-90] ~ ~ ~ tp ~ ~0.000004 ~
#31
execute @e[tag=part_pos:mfa] ~ ~ ~ scoreboard players add @s part_pos:y 2
execute @e[tag=part_pos:mfa] ~ ~ ~ tp ~ ~-0.000002 ~ facing @e[tag=part_pos:mfm]
execute @e[tag=part_pos:mfa,rx=0,rxm=-90] ~ ~ ~ scoreboard players remove @s part_pos:y 2
execute @e[tag=part_pos:mfa,rx=0,rxm=-90] ~ ~ ~ tp ~ ~0.000002 ~
#32
execute @e[tag=part_pos:mfa] ~ ~ ~ scoreboard players add @s part_pos:y 1
execute @e[tag=part_pos:mfa] ~ ~ ~ tp ~ ~-0.000001 ~ facing @e[tag=part_pos:mfm]
execute @e[tag=part_pos:mfa,rx=0,rxm=-90] ~ ~ ~ scoreboard players remove @s part_pos:y 1
execute @e[tag=part_pos:mfa,rx=0,rxm=-90] ~ ~ ~ tp ~ ~0.000001 ~
#33
#posy
execute @e[tag=part_pos:mfa] ~ ~ ~ tp ~ ~ ~ facing ~ ~ ~-1
#facing
execute @e[tag=part_pos:mfa] ~ ~ ~ scoreboard players add @s part_pos:z 128000000
execute @e[tag=part_pos:mfa] ~ ~ ~ tp ^ ^ ^128
execute @e[tag=part_pos:mfm] ~ ~ ~ execute @e[tag=part_pos:mfa,x=-30000000,y=-30000000,dx=60000000,dy=60000000,dz=-30000000,z=~-1] ~ ~ ~ scoreboard players remove @s part_pos:z 128000000
execute @e[tag=part_pos:mfm] ~ ~ ~ execute @e[tag=part_pos:mfa,x=-30000000,y=-30000000,dx=60000000,dy=60000000,dz=-30000000,z=~-1] ~ ~ ~ tp ^ ^ ^-128
#1
execute @e[tag=part_pos:mfa] ~ ~ ~ scoreboard players add @s part_pos:z 63000000
execute @e[tag=part_pos:mfa] ~ ~ ~ tp ^ ^ ^63
execute @e[tag=part_pos:mfm] ~ ~ ~ execute @e[tag=part_pos:mfa,x=-30000000,y=-30000000,dx=60000000,dy=60000000,dz=-30000000,z=~-1] ~ ~ ~ scoreboard players remove @s part_pos:z 63000000
execute @e[tag=part_pos:mfm] ~ ~ ~ execute @e[tag=part_pos:mfa,x=-30000000,y=-30000000,dx=60000000,dy=60000000,dz=-30000000,z=~-1] ~ ~ ~ tp ^ ^ ^-63
#2
execute @e[tag=part_pos:mfa] ~ ~ ~ scoreboard players add @s part_pos:z 32000000
execute @e[tag=part_pos:mfa] ~ ~ ~ tp ^ ^ ^32
execute @e[tag=part_pos:mfm] ~ ~ ~ execute @e[tag=part_pos:mfa,x=-30000000,y=-30000000,dx=60000000,dy=60000000,dz=-30000000,z=~-1] ~ ~ ~ scoreboard players remove @s part_pos:z 32000000
execute @e[tag=part_pos:mfm] ~ ~ ~ execute @e[tag=part_pos:mfa,x=-30000000,y=-30000000,dx=60000000,dy=60000000,dz=-30000000,z=~-1] ~ ~ ~ tp ^ ^ ^-32
#3
execute @e[tag=part_pos:mfa] ~ ~ ~ scoreboard players add @s part_pos:z 16000000
execute @e[tag=part_pos:mfa] ~ ~ ~ tp ^ ^ ^16
execute @e[tag=part_pos:mfm] ~ ~ ~ execute @e[tag=part_pos:mfa,x=-30000000,y=-30000000,dx=60000000,dy=60000000,dz=-30000000,z=~-1] ~ ~ ~ scoreboard players remove @s part_pos:z 16000000
execute @e[tag=part_pos:mfm] ~ ~ ~ execute @e[tag=part_pos:mfa,x=-30000000,y=-30000000,dx=60000000,dy=60000000,dz=-30000000,z=~-1] ~ ~ ~ tp ^ ^ ^-16
#4
execute @e[tag=part_pos:mfa] ~ ~ ~ scoreboard players add @s part_pos:z 8000000
execute @e[tag=part_pos:mfa] ~ ~ ~ tp ^ ^ ^8
execute @e[tag=part_pos:mfm] ~ ~ ~ execute @e[tag=part_pos:mfa,x=-30000000,y=-30000000,dx=60000000,dy=60000000,dz=-30000000,z=~-1] ~ ~ ~ scoreboard players remove @s part_pos:z 8000000
execute @e[tag=part_pos:mfm] ~ ~ ~ execute @e[tag=part_pos:mfa,x=-30000000,y=-30000000,dx=60000000,dy=60000000,dz=-30000000,z=~-1] ~ ~ ~ tp ^ ^ ^-8
#5
execute @e[tag=part_pos:mfa] ~ ~ ~ scoreboard players add @s part_pos:z 4000000
execute @e[tag=part_pos:mfa] ~ ~ ~ tp ^ ^ ^4
execute @e[tag=part_pos:mfm] ~ ~ ~ execute @e[tag=part_pos:mfa,x=-30000000,y=-30000000,dx=60000000,dy=60000000,dz=-30000000,z=~-1] ~ ~ ~ scoreboard players remove @s part_pos:z 4000000
execute @e[tag=part_pos:mfm] ~ ~ ~ execute @e[tag=part_pos:mfa,x=-30000000,y=-30000000,dx=60000000,dy=60000000,dz=-30000000,z=~-1] ~ ~ ~ tp ^ ^ ^-4
#6
execute @e[tag=part_pos:mfa] ~ ~ ~ scoreboard players add @s part_pos:z 2000000
execute @e[tag=part_pos:mfa] ~ ~ ~ tp ^ ^ ^2
execute @e[tag=part_pos:mfm] ~ ~ ~ execute @e[tag=part_pos:mfa,x=-30000000,y=-30000000,dx=60000000,dy=60000000,dz=-30000000,z=~-1] ~ ~ ~ scoreboard players remove @s part_pos:z 2000000
execute @e[tag=part_pos:mfm] ~ ~ ~ execute @e[tag=part_pos:mfa,x=-30000000,y=-30000000,dx=60000000,dy=60000000,dz=-30000000,z=~-1] ~ ~ ~ tp ^ ^ ^-2
#7
execute @e[tag=part_pos:mfa] ~ ~ ~ scoreboard players add @s part_pos:z 1000000
execute @e[tag=part_pos:mfa] ~ ~ ~ tp ^ ^ ^1
execute @e[tag=part_pos:mfm] ~ ~ ~ execute @e[tag=part_pos:mfa,x=-30000000,y=-30000000,dx=60000000,dy=60000000,dz=-30000000,z=~-1] ~ ~ ~ scoreboard players remove @s part_pos:z 1000000
execute @e[tag=part_pos:mfm] ~ ~ ~ execute @e[tag=part_pos:mfa,x=-30000000,y=-30000000,dx=60000000,dy=60000000,dz=-30000000,z=~-1] ~ ~ ~ tp ^ ^ ^-1
#8
execute @e[tag=part_pos:mfa] ~ ~ ~ scoreboard players add @s part_pos:z 1000000
execute @e[tag=part_pos:mfa] ~ ~ ~ tp ^ ^ ^1
execute @e[tag=part_pos:mfm] ~ ~ ~ execute @e[tag=part_pos:mfa,x=-30000000,y=-30000000,dx=60000000,dy=60000000,dz=-30000000,z=~-1] ~ ~ ~ scoreboard players remove @s part_pos:z 1000000
execute @e[tag=part_pos:mfm] ~ ~ ~ execute @e[tag=part_pos:mfa,x=-30000000,y=-30000000,dx=60000000,dy=60000000,dz=-30000000,z=~-1] ~ ~ ~ tp ^ ^ ^-1
#9
execute @e[tag=part_pos:mfa] ~ ~ ~ scoreboard players add @s part_pos:z 1000000
execute @e[tag=part_pos:mfa] ~ ~ ~ tp ^ ^ ^1
execute @e[tag=part_pos:mfm] ~ ~ ~ execute @e[tag=part_pos:mfa,x=-30000000,y=-30000000,dx=60000000,dy=60000000,dz=-30000000,z=~-1] ~ ~ ~ scoreboard players remove @s part_pos:z 1000000
execute @e[tag=part_pos:mfm] ~ ~ ~ execute @e[tag=part_pos:mfa,x=-30000000,y=-30000000,dx=60000000,dy=60000000,dz=-30000000,z=~-1] ~ ~ ~ tp ^ ^ ^-1
#10
execute @e[tag=part_pos:mfa] ~ ~ ~ scoreboard players add @s part_pos:z 800000
execute @e[tag=part_pos:mfa] ~ ~ ~ tp ^ ^ ^0.8 facing @e[tag=part_pos:mfm]
execute @e[tag=part_pos:mfa,ry=90,rym=-90] ~ ~ ~ scoreboard players remove @s part_pos:z 800000
execute @e[tag=part_pos:mfa,ry=90,rym=-90] ~ ~ ~ tp ~ ~ ~0.8
execute @e[tag=part_pos:mfa] ~ ~ ~ tp ~ ~ ~ facing ~ ~ ~-1
#11
execute @e[tag=part_pos:mfa] ~ ~ ~ scoreboard players add @s part_pos:z 400000
execute @e[tag=part_pos:mfa] ~ ~ ~ tp ^ ^ ^0.4 facing @e[tag=part_pos:mfm]
execute @e[tag=part_pos:mfa,ry=90,rym=-90] ~ ~ ~ scoreboard players remove @s part_pos:z 400000
execute @e[tag=part_pos:mfa,ry=90,rym=-90] ~ ~ ~ tp ~ ~ ~0.4
execute @e[tag=part_pos:mfa] ~ ~ ~ tp ~ ~ ~ facing ~ ~ ~-1
#12
execute @e[tag=part_pos:mfa] ~ ~ ~ scoreboard players add @s part_pos:z 200000
execute @e[tag=part_pos:mfa] ~ ~ ~ tp ^ ^ ^0.2 facing @e[tag=part_pos:mfm]
execute @e[tag=part_pos:mfa,ry=90,rym=-90] ~ ~ ~ scoreboard players remove @s part_pos:z 200000
execute @e[tag=part_pos:mfa,ry=90,rym=-90] ~ ~ ~ tp ~ ~ ~0.2
execute @e[tag=part_pos:mfa] ~ ~ ~ tp ~ ~ ~ facing ~ ~ ~-1
#13
execute @e[tag=part_pos:mfa] ~ ~ ~ scoreboard players add @s part_pos:z 100000
execute @e[tag=part_pos:mfa] ~ ~ ~ tp ^ ^ ^0.1 facing @e[tag=part_pos:mfm]
execute @e[tag=part_pos:mfa,ry=90,rym=-90] ~ ~ ~ scoreboard players remove @s part_pos:z 100000
execute @e[tag=part_pos:mfa,ry=90,rym=-90] ~ ~ ~ tp ~ ~ ~0.1
execute @e[tag=part_pos:mfa] ~ ~ ~ tp ~ ~ ~ facing ~ ~ ~-1
#14
execute @e[tag=part_pos:mfa] ~ ~ ~ scoreboard players add @s part_pos:z 80000
execute @e[tag=part_pos:mfa] ~ ~ ~ tp ^ ^ ^0.08 facing @e[tag=part_pos:mfm]
execute @e[tag=part_pos:mfa,ry=90,rym=-90] ~ ~ ~ scoreboard players remove @s part_pos:z 80000
execute @e[tag=part_pos:mfa,ry=90,rym=-90] ~ ~ ~ tp ~ ~ ~0.08
execute @e[tag=part_pos:mfa] ~ ~ ~ tp ~ ~ ~ facing ~ ~ ~-1
#15
execute @e[tag=part_pos:mfa] ~ ~ ~ scoreboard players add @s part_pos:z 40000
execute @e[tag=part_pos:mfa] ~ ~ ~ tp ^ ^ ^0.04 facing @e[tag=part_pos:mfm]
execute @e[tag=part_pos:mfa,ry=90,rym=-90] ~ ~ ~ scoreboard players remove @s part_pos:z 40000
execute @e[tag=part_pos:mfa,ry=90,rym=-90] ~ ~ ~ tp ~ ~ ~0.04
execute @e[tag=part_pos:mfa] ~ ~ ~ tp ~ ~ ~ facing ~ ~ ~-1
#16
execute @e[tag=part_pos:mfa] ~ ~ ~ scoreboard players add @s part_pos:z 20000
execute @e[tag=part_pos:mfa] ~ ~ ~ tp ^ ^ ^0.02 facing @e[tag=part_pos:mfm]
execute @e[tag=part_pos:mfa,ry=90,rym=-90] ~ ~ ~ scoreboard players remove @s part_pos:z 20000
execute @e[tag=part_pos:mfa,ry=90,rym=-90] ~ ~ ~ tp ~ ~ ~0.02
execute @e[tag=part_pos:mfa] ~ ~ ~ tp ~ ~ ~ facing ~ ~ ~-1
#17
execute @e[tag=part_pos:mfa] ~ ~ ~ scoreboard players add @s part_pos:z 10000
execute @e[tag=part_pos:mfa] ~ ~ ~ tp ^ ^ ^0.01 facing @e[tag=part_pos:mfm]
execute @e[tag=part_pos:mfa,ry=90,rym=-90] ~ ~ ~ scoreboard players remove @s part_pos:z 10000
execute @e[tag=part_pos:mfa,ry=90,rym=-90] ~ ~ ~ tp ~ ~ ~0.01
execute @e[tag=part_pos:mfa] ~ ~ ~ tp ~ ~ ~ facing ~ ~ ~-1
#18
execute @e[tag=part_pos:mfa] ~ ~ ~ scoreboard players add @s part_pos:z 8000
execute @e[tag=part_pos:mfa] ~ ~ ~ tp ^ ^ ^0.008 facing @e[tag=part_pos:mfm]
execute @e[tag=part_pos:mfa,ry=90,rym=-90] ~ ~ ~ scoreboard players remove @s part_pos:z 8000
execute @e[tag=part_pos:mfa,ry=90,rym=-90] ~ ~ ~ tp ~ ~ ~0.008
execute @e[tag=part_pos:mfa] ~ ~ ~ tp ~ ~ ~ facing ~ ~ ~-1
#19
execute @e[tag=part_pos:mfa] ~ ~ ~ scoreboard players add @s part_pos:z 4000
execute @e[tag=part_pos:mfa] ~ ~ ~ tp ^ ^ ^0.004 facing @e[tag=part_pos:mfm]
execute @e[tag=part_pos:mfa,ry=90,rym=-90] ~ ~ ~ scoreboard players remove @s part_pos:z 4000
execute @e[tag=part_pos:mfa,ry=90,rym=-90] ~ ~ ~ tp ~ ~ ~0.004
execute @e[tag=part_pos:mfa] ~ ~ ~ tp ~ ~ ~ facing ~ ~ ~-1
#20
execute @e[tag=part_pos:mfa] ~ ~ ~ scoreboard players add @s part_pos:z 2000
execute @e[tag=part_pos:mfa] ~ ~ ~ tp ^ ^ ^0.002 facing @e[tag=part_pos:mfm]
execute @e[tag=part_pos:mfa,ry=90,rym=-90] ~ ~ ~ scoreboard players remove @s part_pos:z 2000
execute @e[tag=part_pos:mfa,ry=90,rym=-90] ~ ~ ~ tp ~ ~ ~0.002
execute @e[tag=part_pos:mfa] ~ ~ ~ tp ~ ~ ~ facing ~ ~ ~-1
#21
execute @e[tag=part_pos:mfa] ~ ~ ~ scoreboard players add @s part_pos:z 1000
execute @e[tag=part_pos:mfa] ~ ~ ~ tp ^ ^ ^0.001 facing @e[tag=part_pos:mfm]
execute @e[tag=part_pos:mfa,ry=90,rym=-90] ~ ~ ~ scoreboard players remove @s part_pos:z 1000
execute @e[tag=part_pos:mfa,ry=90,rym=-90] ~ ~ ~ tp ~ ~ ~0.001
execute @e[tag=part_pos:mfa] ~ ~ ~ tp ~ ~ ~ facing ~ ~ ~-1
#22
execute @e[tag=part_pos:mfa] ~ ~ ~ scoreboard players add @s part_pos:z 800
execute @e[tag=part_pos:mfa] ~ ~ ~ tp ^ ^ ^0.0008 facing @e[tag=part_pos:mfm]
execute @e[tag=part_pos:mfa,ry=90,rym=-90] ~ ~ ~ scoreboard players remove @s part_pos:z 800
execute @e[tag=part_pos:mfa,ry=90,rym=-90] ~ ~ ~ tp ~ ~ ~0.0008
execute @e[tag=part_pos:mfa] ~ ~ ~ tp ~ ~ ~ facing ~ ~ ~-1
#22
execute @e[tag=part_pos:mfa] ~ ~ ~ scoreboard players add @s part_pos:z 400
execute @e[tag=part_pos:mfa] ~ ~ ~ tp ^ ^ ^0.0004 facing @e[tag=part_pos:mfm]
execute @e[tag=part_pos:mfa,ry=90,rym=-90] ~ ~ ~ scoreboard players remove @s part_pos:z 400
execute @e[tag=part_pos:mfa,ry=90,rym=-90] ~ ~ ~ tp ~ ~ ~0.0004
execute @e[tag=part_pos:mfa] ~ ~ ~ tp ~ ~ ~ facing ~ ~ ~-1
#23
execute @e[tag=part_pos:mfa] ~ ~ ~ scoreboard players add @s part_pos:z 200
execute @e[tag=part_pos:mfa] ~ ~ ~ tp ^ ^ ^0.0002 facing @e[tag=part_pos:mfm]
execute @e[tag=part_pos:mfa,ry=90,rym=-90] ~ ~ ~ scoreboard players remove @s part_pos:z 200
execute @e[tag=part_pos:mfa,ry=90,rym=-90] ~ ~ ~ tp ~ ~ ~0.0002
execute @e[tag=part_pos:mfa] ~ ~ ~ tp ~ ~ ~ facing ~ ~ ~-1
#24
execute @e[tag=part_pos:mfa] ~ ~ ~ scoreboard players add @s part_pos:z 100
execute @e[tag=part_pos:mfa] ~ ~ ~ tp ^ ^ ^0.0001 facing @e[tag=part_pos:mfm]
execute @e[tag=part_pos:mfa,ry=90,rym=-90] ~ ~ ~ scoreboard players remove @s part_pos:z 100
execute @e[tag=part_pos:mfa,ry=90,rym=-90] ~ ~ ~ tp ~ ~ ~0.0001
execute @e[tag=part_pos:mfa] ~ ~ ~ tp ~ ~ ~ facing ~ ~ ~-1
#25
execute @e[tag=part_pos:mfa] ~ ~ ~ scoreboard players add @s part_pos:z 80
execute @e[tag=part_pos:mfa] ~ ~ ~ tp ^ ^ ^0.00008 facing @e[tag=part_pos:mfm]
execute @e[tag=part_pos:mfa,ry=90,rym=-90] ~ ~ ~ scoreboard players remove @s part_pos:z 80
execute @e[tag=part_pos:mfa,ry=90,rym=-90] ~ ~ ~ tp ~ ~ ~0.00008
execute @e[tag=part_pos:mfa] ~ ~ ~ tp ~ ~ ~ facing ~ ~ ~-1
#26
execute @e[tag=part_pos:mfa] ~ ~ ~ scoreboard players add @s part_pos:z 40
execute @e[tag=part_pos:mfa] ~ ~ ~ tp ^ ^ ^0.00004 facing @e[tag=part_pos:mfm]
execute @e[tag=part_pos:mfa,ry=90,rym=-90] ~ ~ ~ scoreboard players remove @s part_pos:z 40
execute @e[tag=part_pos:mfa,ry=90,rym=-90] ~ ~ ~ tp ~ ~ ~0.00004
execute @e[tag=part_pos:mfa] ~ ~ ~ tp ~ ~ ~ facing ~ ~ ~-1
#27
execute @e[tag=part_pos:mfa] ~ ~ ~ scoreboard players add @s part_pos:z 20
execute @e[tag=part_pos:mfa] ~ ~ ~ tp ^ ^ ^0.00002 facing @e[tag=part_pos:mfm]
execute @e[tag=part_pos:mfa,ry=90,rym=-90] ~ ~ ~ scoreboard players remove @s part_pos:z 20
execute @e[tag=part_pos:mfa,ry=90,rym=-90] ~ ~ ~ tp ~ ~ ~0.00002
execute @e[tag=part_pos:mfa] ~ ~ ~ tp ~ ~ ~ facing ~ ~ ~-1
#28
execute @e[tag=part_pos:mfa] ~ ~ ~ scoreboard players add @s part_pos:z 10
execute @e[tag=part_pos:mfa] ~ ~ ~ tp ^ ^ ^0.00001 facing @e[tag=part_pos:mfm]
execute @e[tag=part_pos:mfa,ry=90,rym=-90] ~ ~ ~ scoreboard players remove @s part_pos:z 10
execute @e[tag=part_pos:mfa,ry=90,rym=-90] ~ ~ ~ tp ~ ~ ~0.00001
execute @e[tag=part_pos:mfa] ~ ~ ~ tp ~ ~ ~ facing ~ ~ ~-1
#29
execute @e[tag=part_pos:mfa] ~ ~ ~ scoreboard players add @s part_pos:z 8
execute @e[tag=part_pos:mfa] ~ ~ ~ tp ^ ^ ^0.000008 facing @e[tag=part_pos:mfm]
execute @e[tag=part_pos:mfa,ry=90,rym=-90] ~ ~ ~ scoreboard players remove @s part_pos:z 8
execute @e[tag=part_pos:mfa,ry=90,rym=-90] ~ ~ ~ tp ~ ~ ~0.000008
execute @e[tag=part_pos:mfa] ~ ~ ~ tp ~ ~ ~ facing ~ ~ ~-1
#30
execute @e[tag=part_pos:mfa] ~ ~ ~ scoreboard players add @s part_pos:z 4
execute @e[tag=part_pos:mfa] ~ ~ ~ tp ^ ^ ^0.000004 facing @e[tag=part_pos:mfm]
execute @e[tag=part_pos:mfa,ry=90,rym=-90] ~ ~ ~ scoreboard players remove @s part_pos:z 4
execute @e[tag=part_pos:mfa,ry=90,rym=-90] ~ ~ ~ tp ~ ~ ~0.000004
execute @e[tag=part_pos:mfa] ~ ~ ~ tp ~ ~ ~ facing ~ ~ ~-1
#31
execute @e[tag=part_pos:mfa] ~ ~ ~ scoreboard players add @s part_pos:z 2
execute @e[tag=part_pos:mfa] ~ ~ ~ tp ^ ^ ^0.000002 facing @e[tag=part_pos:mfm]
execute @e[tag=part_pos:mfa,ry=90,rym=-90] ~ ~ ~ scoreboard players remove @s part_pos:z 2
execute @e[tag=part_pos:mfa,ry=90,rym=-90] ~ ~ ~ tp ~ ~ ~0.000002
execute @e[tag=part_pos:mfa] ~ ~ ~ tp ~ ~ ~ facing ~ ~ ~-1
#32
execute @e[tag=part_pos:mfa] ~ ~ ~ scoreboard players add @s part_pos:z 1
execute @e[tag=part_pos:mfa] ~ ~ ~ tp ^ ^ ^0.000001 facing @e[tag=part_pos:mfm]
execute @e[tag=part_pos:mfa,ry=90,rym=-90] ~ ~ ~ scoreboard players remove @s part_pos:z 1
execute @e[tag=part_pos:mfa,ry=90,rym=-90] ~ ~ ~ tp ~ ~ ~0.000001
execute @e[tag=part_pos:mfa] ~ ~ ~ tp ~ ~ ~ facing ~ ~ ~-1
#33
#posz
execute @e[tag=part_pos:mfa] ~ ~ ~ scoreboard players operation @s part_pos:save = @s part_pos:x
#scores(s)_operation_=
execute @e[tag=part_pos:mfa] ~ ~ ~ tp ~ ~ ~ facing ~1 ~ ~
#facing
execute @e[tag=part_pos:mfa,scores={part_pos:save=128000000..}] ~ ~ ~ tp ^ ^ ^128
execute @e[tag=part_pos:mfa,scores={part_pos:save=128000000..}] ~ ~ ~ scoreboard players remove @s part_pos:save 128000000
#1
execute @e[tag=part_pos:mfa,scores={part_pos:save=63000000..}] ~ ~ ~ tp ^ ^ ^63
execute @e[tag=part_pos:mfa,scores={part_pos:save=63000000..}] ~ ~ ~ scoreboard players remove @s part_pos:save 63000000
#2
execute @e[tag=part_pos:mfa,scores={part_pos:save=32000000..}] ~ ~ ~ tp ^ ^ ^32
execute @e[tag=part_pos:mfa,scores={part_pos:save=32000000..}] ~ ~ ~ scoreboard players remove @s part_pos:save 32000000
#3
execute @e[tag=part_pos:mfa,scores={part_pos:save=16000000..}] ~ ~ ~ tp ^ ^ ^16
execute @e[tag=part_pos:mfa,scores={part_pos:save=16000000..}] ~ ~ ~ scoreboard players remove @s part_pos:save 16000000
#4
execute @e[tag=part_pos:mfa,scores={part_pos:save=8000000..}] ~ ~ ~ tp ^ ^ ^8
execute @e[tag=part_pos:mfa,scores={part_pos:save=8000000..}] ~ ~ ~ scoreboard players remove @s part_pos:save 8000000
#5
execute @e[tag=part_pos:mfa,scores={part_pos:save=4000000..}] ~ ~ ~ tp ^ ^ ^4
execute @e[tag=part_pos:mfa,scores={part_pos:save=4000000..}] ~ ~ ~ scoreboard players remove @s part_pos:save 4000000
#6
execute @e[tag=part_pos:mfa,scores={part_pos:save=2000000..}] ~ ~ ~ tp ^ ^ ^2
execute @e[tag=part_pos:mfa,scores={part_pos:save=2000000..}] ~ ~ ~ scoreboard players remove @s part_pos:save 2000000
#7
execute @e[tag=part_pos:mfa,scores={part_pos:save=1000000..}] ~ ~ ~ tp ^ ^ ^1
execute @e[tag=part_pos:mfa,scores={part_pos:save=1000000..}] ~ ~ ~ scoreboard players remove @s part_pos:save 1000000
#8
execute @e[tag=part_pos:mfa,scores={part_pos:save=1000000..}] ~ ~ ~ tp ^ ^ ^1
execute @e[tag=part_pos:mfa,scores={part_pos:save=1000000..}] ~ ~ ~ scoreboard players remove @s part_pos:save 1000000
#9
execute @e[tag=part_pos:mfa,scores={part_pos:save=1000000..}] ~ ~ ~ tp ^ ^ ^1
execute @e[tag=part_pos:mfa,scores={part_pos:save=1000000..}] ~ ~ ~ scoreboard players remove @s part_pos:save 1000000
#10
execute @e[tag=part_pos:mfa,scores={part_pos:save=800000..}] ~ ~ ~ tp ^ ^ ^0.8
execute @e[tag=part_pos:mfa,scores={part_pos:save=800000..}] ~ ~ ~ scoreboard players remove @s part_pos:save 800000
#11
execute @e[tag=part_pos:mfa,scores={part_pos:save=400000..}] ~ ~ ~ tp ^ ^ ^0.4
execute @e[tag=part_pos:mfa,scores={part_pos:save=400000..}] ~ ~ ~ scoreboard players remove @s part_pos:save 400000
#12
execute @e[tag=part_pos:mfa,scores={part_pos:save=200000..}] ~ ~ ~ tp ^ ^ ^0.2
execute @e[tag=part_pos:mfa,scores={part_pos:save=200000..}] ~ ~ ~ scoreboard players remove @s part_pos:save 200000
#13
execute @e[tag=part_pos:mfa,scores={part_pos:save=100000..}] ~ ~ ~ tp ^ ^ ^0.1
execute @e[tag=part_pos:mfa,scores={part_pos:save=100000..}] ~ ~ ~ scoreboard players remove @s part_pos:save 100000
#14
execute @e[tag=part_pos:mfa,scores={part_pos:save=80000..}] ~ ~ ~ tp ^ ^ ^0.08
execute @e[tag=part_pos:mfa,scores={part_pos:save=80000..}] ~ ~ ~ scoreboard players remove @s part_pos:save 80000
#15
execute @e[tag=part_pos:mfa,scores={part_pos:save=40000..}] ~ ~ ~ tp ^ ^ ^0.04
execute @e[tag=part_pos:mfa,scores={part_pos:save=40000..}] ~ ~ ~ scoreboard players remove @s part_pos:save 40000
#16
execute @e[tag=part_pos:mfa,scores={part_pos:save=20000..}] ~ ~ ~ tp ^ ^ ^0.02
execute @e[tag=part_pos:mfa,scores={part_pos:save=20000..}] ~ ~ ~ scoreboard players remove @s part_pos:save 20000
#17
execute @e[tag=part_pos:mfa,scores={part_pos:save=10000..}] ~ ~ ~ tp ^ ^ ^0.01
execute @e[tag=part_pos:mfa,scores={part_pos:save=10000..}] ~ ~ ~ scoreboard players remove @s part_pos:save 10000
#18
execute @e[tag=part_pos:mfa,scores={part_pos:save=8000..}] ~ ~ ~ tp ^ ^ ^0.008
execute @e[tag=part_pos:mfa,scores={part_pos:save=8000..}] ~ ~ ~ scoreboard players remove @s part_pos:save 8000
#19
execute @e[tag=part_pos:mfa,scores={part_pos:save=4000..}] ~ ~ ~ tp ^ ^ ^0.004
execute @e[tag=part_pos:mfa,scores={part_pos:save=4000..}] ~ ~ ~ scoreboard players remove @s part_pos:save 4000
#20
execute @e[tag=part_pos:mfa,scores={part_pos:save=2000..}] ~ ~ ~ tp ^ ^ ^0.002
execute @e[tag=part_pos:mfa,scores={part_pos:save=2000..}] ~ ~ ~ scoreboard players remove @s part_pos:save 2000
#21
execute @e[tag=part_pos:mfa,scores={part_pos:save=1000..}] ~ ~ ~ tp ^ ^ ^0.001
execute @e[tag=part_pos:mfa,scores={part_pos:save=1000..}] ~ ~ ~ scoreboard players remove @s part_pos:save 1000
#22
execute @e[tag=part_pos:mfa,scores={part_pos:save=800..}] ~ ~ ~ tp ^ ^ ^0.0008
execute @e[tag=part_pos:mfa,scores={part_pos:save=800..}] ~ ~ ~ scoreboard players remove @s part_pos:save 800
#23
execute @e[tag=part_pos:mfa,scores={part_pos:save=400..}] ~ ~ ~ tp ^ ^ ^0.0004
execute @e[tag=part_pos:mfa,scores={part_pos:save=400..}] ~ ~ ~ scoreboard players remove @s part_pos:save 400
#24
execute @e[tag=part_pos:mfa,scores={part_pos:save=200..}] ~ ~ ~ tp ^ ^ ^0.0002
execute @e[tag=part_pos:mfa,scores={part_pos:save=200..}] ~ ~ ~ scoreboard players remove @s part_pos:save 200
#25
execute @e[tag=part_pos:mfa,scores={part_pos:save=100..}] ~ ~ ~ tp ^ ^ ^0.0001
execute @e[tag=part_pos:mfa,scores={part_pos:save=100..}] ~ ~ ~ scoreboard players remove @s part_pos:save 100
#26
execute @e[tag=part_pos:mfa,scores={part_pos:save=80..}] ~ ~ ~ tp ^ ^ ^0.00008
execute @e[tag=part_pos:mfa,scores={part_pos:save=80..}] ~ ~ ~ scoreboard players remove @s part_pos:save 80
#27
execute @e[tag=part_pos:mfa,scores={part_pos:save=40..}] ~ ~ ~ tp ^ ^ ^0.00004
execute @e[tag=part_pos:mfa,scores={part_pos:save=40..}] ~ ~ ~ scoreboard players remove @s part_pos:save 40
#28
execute @e[tag=part_pos:mfa,scores={part_pos:save=20..}] ~ ~ ~ tp ^ ^ ^0.00002
execute @e[tag=part_pos:mfa,scores={part_pos:save=20..}] ~ ~ ~ scoreboard players remove @s part_pos:save 20
#29
execute @e[tag=part_pos:mfa,scores={part_pos:save=10..}] ~ ~ ~ tp ^ ^ ^0.00001
execute @e[tag=part_pos:mfa,scores={part_pos:save=10..}] ~ ~ ~ scoreboard players remove @s part_pos:save 10
#30
execute @e[tag=part_pos:mfa,scores={part_pos:save=8..}] ~ ~ ~ tp ^ ^ ^0.000008
execute @e[tag=part_pos:mfa,scores={part_pos:save=8..}] ~ ~ ~ scoreboard players remove @s part_pos:save 8
#31
execute @e[tag=part_pos:mfa,scores={part_pos:save=4..}] ~ ~ ~ tp ^ ^ ^0.000004
execute @e[tag=part_pos:mfa,scores={part_pos:save=4..}] ~ ~ ~ scoreboard players remove @s part_pos:save 4
#32
execute @e[tag=part_pos:mfa,scores={part_pos:save=2..}] ~ ~ ~ tp ^ ^ ^0.000002
execute @e[tag=part_pos:mfa,scores={part_pos:save=2..}] ~ ~ ~ scoreboard players remove @s part_pos:save 2
#33
execute @e[tag=part_pos:mfa,scores={part_pos:save=1..}] ~ ~ ~ tp ^ ^ ^0.000001
execute @e[tag=part_pos:mfa,scores={part_pos:save=1..}] ~ ~ ~ scoreboard players remove @s part_pos:save 1
#34
#posx_return
execute @e[tag=part_pos:mfa] ~ ~ ~ scoreboard players operation @s part_pos:save = @s part_pos:y
#scores(s)_operation_=
execute @e[tag=part_pos:mfa,scores={part_pos:save=128000000..}] ~ ~ ~ tp ~ ~128 ~
execute @e[tag=part_pos:mfa,scores={part_pos:save=128000000..}] ~ ~ ~ scoreboard players remove @s part_pos:save 128000000
#1
execute @e[tag=part_pos:mfa,scores={part_pos:save=63000000..}] ~ ~ ~ tp ~ ~63 ~
execute @e[tag=part_pos:mfa,scores={part_pos:save=63000000..}] ~ ~ ~ scoreboard players remove @s part_pos:save 63000000
#2
execute @e[tag=part_pos:mfa,scores={part_pos:save=32000000..}] ~ ~ ~ tp ~ ~32 ~
execute @e[tag=part_pos:mfa,scores={part_pos:save=32000000..}] ~ ~ ~ scoreboard players remove @s part_pos:save 32000000
#3
execute @e[tag=part_pos:mfa,scores={part_pos:save=16000000..}] ~ ~ ~ tp ~ ~16 ~
execute @e[tag=part_pos:mfa,scores={part_pos:save=16000000..}] ~ ~ ~ scoreboard players remove @s part_pos:save 16000000
#4
execute @e[tag=part_pos:mfa,scores={part_pos:save=8000000..}] ~ ~ ~ tp ~ ~8 ~
execute @e[tag=part_pos:mfa,scores={part_pos:save=8000000..}] ~ ~ ~ scoreboard players remove @s part_pos:save 8000000
#5
execute @e[tag=part_pos:mfa,scores={part_pos:save=4000000..}] ~ ~ ~ tp ~ ~4 ~
execute @e[tag=part_pos:mfa,scores={part_pos:save=4000000..}] ~ ~ ~ scoreboard players remove @s part_pos:save 4000000
#6
execute @e[tag=part_pos:mfa,scores={part_pos:save=2000000..}] ~ ~ ~ tp ~ ~2 ~
execute @e[tag=part_pos:mfa,scores={part_pos:save=2000000..}] ~ ~ ~ scoreboard players remove @s part_pos:save 2000000
#7
execute @e[tag=part_pos:mfa,scores={part_pos:save=1000000..}] ~ ~ ~ tp ~ ~1 ~
execute @e[tag=part_pos:mfa,scores={part_pos:save=1000000..}] ~ ~ ~ scoreboard players remove @s part_pos:save 1000000
#8
execute @e[tag=part_pos:mfa,scores={part_pos:save=1000000..}] ~ ~ ~ tp ~ ~1 ~
execute @e[tag=part_pos:mfa,scores={part_pos:save=1000000..}] ~ ~ ~ scoreboard players remove @s part_pos:save 1000000
#9
execute @e[tag=part_pos:mfa,scores={part_pos:save=1000000..}] ~ ~ ~ tp ~ ~1 ~
execute @e[tag=part_pos:mfa,scores={part_pos:save=1000000..}] ~ ~ ~ scoreboard players remove @s part_pos:save 1000000
#10
execute @e[tag=part_pos:mfa,scores={part_pos:save=800000..}] ~ ~ ~ tp ~ ~0.8 ~
execute @e[tag=part_pos:mfa,scores={part_pos:save=800000..}] ~ ~ ~ scoreboard players remove @s part_pos:save 800000
#11
execute @e[tag=part_pos:mfa,scores={part_pos:save=400000..}] ~ ~ ~ tp ~ ~0.4 ~
execute @e[tag=part_pos:mfa,scores={part_pos:save=400000..}] ~ ~ ~ scoreboard players remove @s part_pos:save 400000
#12
execute @e[tag=part_pos:mfa,scores={part_pos:save=200000..}] ~ ~ ~ tp ~ ~0.2 ~
execute @e[tag=part_pos:mfa,scores={part_pos:save=200000..}] ~ ~ ~ scoreboard players remove @s part_pos:save 200000
#13
execute @e[tag=part_pos:mfa,scores={part_pos:save=100000..}] ~ ~ ~ tp ~ ~0.1 ~
execute @e[tag=part_pos:mfa,scores={part_pos:save=100000..}] ~ ~ ~ scoreboard players remove @s part_pos:save 100000
#14
execute @e[tag=part_pos:mfa,scores={part_pos:save=80000..}] ~ ~ ~ tp ~ ~0.08 ~
execute @e[tag=part_pos:mfa,scores={part_pos:save=80000..}] ~ ~ ~ scoreboard players remove @s part_pos:save 80000
#15
execute @e[tag=part_pos:mfa,scores={part_pos:save=40000..}] ~ ~ ~ tp ~ ~0.04 ~
execute @e[tag=part_pos:mfa,scores={part_pos:save=40000..}] ~ ~ ~ scoreboard players remove @s part_pos:save 40000
#16
execute @e[tag=part_pos:mfa,scores={part_pos:save=20000..}] ~ ~ ~ tp ~ ~0.02 ~
execute @e[tag=part_pos:mfa,scores={part_pos:save=20000..}] ~ ~ ~ scoreboard players remove @s part_pos:save 20000
#17
execute @e[tag=part_pos:mfa,scores={part_pos:save=10000..}] ~ ~ ~ tp ~ ~0.01 ~
execute @e[tag=part_pos:mfa,scores={part_pos:save=10000..}] ~ ~ ~ scoreboard players remove @s part_pos:save 10000
#18
execute @e[tag=part_pos:mfa,scores={part_pos:save=8000..}] ~ ~ ~ tp ~ ~0.008 ~
execute @e[tag=part_pos:mfa,scores={part_pos:save=8000..}] ~ ~ ~ scoreboard players remove @s part_pos:save 8000
#19
execute @e[tag=part_pos:mfa,scores={part_pos:save=4000..}] ~ ~ ~ tp ~ ~0.004 ~
execute @e[tag=part_pos:mfa,scores={part_pos:save=4000..}] ~ ~ ~ scoreboard players remove @s part_pos:save 4000
#20
execute @e[tag=part_pos:mfa,scores={part_pos:save=2000..}] ~ ~ ~ tp ~ ~0.002 ~
execute @e[tag=part_pos:mfa,scores={part_pos:save=2000..}] ~ ~ ~ scoreboard players remove @s part_pos:save 2000
#21
execute @e[tag=part_pos:mfa,scores={part_pos:save=1000..}] ~ ~ ~ tp ~ ~0.001 ~
execute @e[tag=part_pos:mfa,scores={part_pos:save=1000..}] ~ ~ ~ scoreboard players remove @s part_pos:save 1000
#22
execute @e[tag=part_pos:mfa,scores={part_pos:save=800..}] ~ ~ ~ tp ~ ~0.0008 ~
execute @e[tag=part_pos:mfa,scores={part_pos:save=800..}] ~ ~ ~ scoreboard players remove @s part_pos:save 800
#23
execute @e[tag=part_pos:mfa,scores={part_pos:save=400..}] ~ ~ ~ tp ~ ~0.0004 ~
execute @e[tag=part_pos:mfa,scores={part_pos:save=400..}] ~ ~ ~ scoreboard players remove @s part_pos:save 400
#24
execute @e[tag=part_pos:mfa,scores={part_pos:save=200..}] ~ ~ ~ tp ~ ~0.0002 ~
execute @e[tag=part_pos:mfa,scores={part_pos:save=200..}] ~ ~ ~ scoreboard players remove @s part_pos:save 200
#25
execute @e[tag=part_pos:mfa,scores={part_pos:save=100..}] ~ ~ ~ tp ~ ~0.0001 ~
execute @e[tag=part_pos:mfa,scores={part_pos:save=100..}] ~ ~ ~ scoreboard players remove @s part_pos:save 100
#26
execute @e[tag=part_pos:mfa,scores={part_pos:save=80..}] ~ ~ ~ tp ~ ~0.00008 ~
execute @e[tag=part_pos:mfa,scores={part_pos:save=80..}] ~ ~ ~ scoreboard players remove @s part_pos:save 80
#27
execute @e[tag=part_pos:mfa,scores={part_pos:save=40..}] ~ ~ ~ tp ~ ~0.00004 ~
execute @e[tag=part_pos:mfa,scores={part_pos:save=40..}] ~ ~ ~ scoreboard players remove @s part_pos:save 40
#28
execute @e[tag=part_pos:mfa,scores={part_pos:save=20..}] ~ ~ ~ tp ~ ~0.00002 ~
execute @e[tag=part_pos:mfa,scores={part_pos:save=20..}] ~ ~ ~ scoreboard players remove @s part_pos:save 20
#29
execute @e[tag=part_pos:mfa,scores={part_pos:save=10..}] ~ ~ ~ tp ~ ~0.00001 ~
execute @e[tag=part_pos:mfa,scores={part_pos:save=10..}] ~ ~ ~ scoreboard players remove @s part_pos:save 10
#30
execute @e[tag=part_pos:mfa,scores={part_pos:save=8..}] ~ ~ ~ tp ~ ~0.000008 ~
execute @e[tag=part_pos:mfa,scores={part_pos:save=8..}] ~ ~ ~ scoreboard players remove @s part_pos:save 8
#31
execute @e[tag=part_pos:mfa,scores={part_pos:save=4..}] ~ ~ ~ tp ~ ~0.000004 ~
execute @e[tag=part_pos:mfa,scores={part_pos:save=4..}] ~ ~ ~ scoreboard players remove @s part_pos:save 4
#32
execute @e[tag=part_pos:mfa,scores={part_pos:save=2..}] ~ ~ ~ tp ~ ~0.000002 ~
execute @e[tag=part_pos:mfa,scores={part_pos:save=2..}] ~ ~ ~ scoreboard players remove @s part_pos:save 2
#33
execute @e[tag=part_pos:mfa,scores={part_pos:save=1..}] ~ ~ ~ tp ~ ~0.000001 ~
execute @e[tag=part_pos:mfa,scores={part_pos:save=1..}] ~ ~ ~ scoreboard players remove @s part_pos:save 1
#34
#posy_return
execute @e[tag=part_pos:mfa] ~ ~ ~ scoreboard players operation @s part_pos:save = @s part_pos:z
#scores(s)_operation_=
execute @e[tag=part_pos:mfa] ~ ~ ~ tp ~ ~ ~ facing ~ ~ ~1
#facing
execute @e[tag=part_pos:mfa,scores={part_pos:save=128000000..}] ~ ~ ~ tp ^ ^ ^128
execute @e[tag=part_pos:mfa,scores={part_pos:save=128000000..}] ~ ~ ~ scoreboard players remove @s part_pos:save 128000000
#1
execute @e[tag=part_pos:mfa,scores={part_pos:save=63000000..}] ~ ~ ~ tp ^ ^ ^63
execute @e[tag=part_pos:mfa,scores={part_pos:save=63000000..}] ~ ~ ~ scoreboard players remove @s part_pos:save 63000000
#2
execute @e[tag=part_pos:mfa,scores={part_pos:save=32000000..}] ~ ~ ~ tp ^ ^ ^32
execute @e[tag=part_pos:mfa,scores={part_pos:save=32000000..}] ~ ~ ~ scoreboard players remove @s part_pos:save 32000000
#3
execute @e[tag=part_pos:mfa,scores={part_pos:save=16000000..}] ~ ~ ~ tp ^ ^ ^16
execute @e[tag=part_pos:mfa,scores={part_pos:save=16000000..}] ~ ~ ~ scoreboard players remove @s part_pos:save 16000000
#4
execute @e[tag=part_pos:mfa,scores={part_pos:save=8000000..}] ~ ~ ~ tp ^ ^ ^8
execute @e[tag=part_pos:mfa,scores={part_pos:save=8000000..}] ~ ~ ~ scoreboard players remove @s part_pos:save 8000000
#5
execute @e[tag=part_pos:mfa,scores={part_pos:save=4000000..}] ~ ~ ~ tp ^ ^ ^4
execute @e[tag=part_pos:mfa,scores={part_pos:save=4000000..}] ~ ~ ~ scoreboard players remove @s part_pos:save 4000000
#6
execute @e[tag=part_pos:mfa,scores={part_pos:save=2000000..}] ~ ~ ~ tp ^ ^ ^2
execute @e[tag=part_pos:mfa,scores={part_pos:save=2000000..}] ~ ~ ~ scoreboard players remove @s part_pos:save 2000000
#7
execute @e[tag=part_pos:mfa,scores={part_pos:save=1000000..}] ~ ~ ~ tp ^ ^ ^1
execute @e[tag=part_pos:mfa,scores={part_pos:save=1000000..}] ~ ~ ~ scoreboard players remove @s part_pos:save 1000000
#8
execute @e[tag=part_pos:mfa,scores={part_pos:save=1000000..}] ~ ~ ~ tp ^ ^ ^1
execute @e[tag=part_pos:mfa,scores={part_pos:save=1000000..}] ~ ~ ~ scoreboard players remove @s part_pos:save 1000000
#9
execute @e[tag=part_pos:mfa,scores={part_pos:save=1000000..}] ~ ~ ~ tp ^ ^ ^1
execute @e[tag=part_pos:mfa,scores={part_pos:save=1000000..}] ~ ~ ~ scoreboard players remove @s part_pos:save 1000000
#10
execute @e[tag=part_pos:mfa,scores={part_pos:save=800000..}] ~ ~ ~ tp ^ ^ ^0.8
execute @e[tag=part_pos:mfa,scores={part_pos:save=800000..}] ~ ~ ~ scoreboard players remove @s part_pos:save 800000
#11
execute @e[tag=part_pos:mfa,scores={part_pos:save=400000..}] ~ ~ ~ tp ^ ^ ^0.4
execute @e[tag=part_pos:mfa,scores={part_pos:save=400000..}] ~ ~ ~ scoreboard players remove @s part_pos:save 400000
#12
execute @e[tag=part_pos:mfa,scores={part_pos:save=200000..}] ~ ~ ~ tp ^ ^ ^0.2
execute @e[tag=part_pos:mfa,scores={part_pos:save=200000..}] ~ ~ ~ scoreboard players remove @s part_pos:save 200000
#13
execute @e[tag=part_pos:mfa,scores={part_pos:save=100000..}] ~ ~ ~ tp ^ ^ ^0.1
execute @e[tag=part_pos:mfa,scores={part_pos:save=100000..}] ~ ~ ~ scoreboard players remove @s part_pos:save 100000
#14
execute @e[tag=part_pos:mfa,scores={part_pos:save=80000..}] ~ ~ ~ tp ^ ^ ^0.08
execute @e[tag=part_pos:mfa,scores={part_pos:save=80000..}] ~ ~ ~ scoreboard players remove @s part_pos:save 80000
#15
execute @e[tag=part_pos:mfa,scores={part_pos:save=40000..}] ~ ~ ~ tp ^ ^ ^0.04
execute @e[tag=part_pos:mfa,scores={part_pos:save=40000..}] ~ ~ ~ scoreboard players remove @s part_pos:save 40000
#16
execute @e[tag=part_pos:mfa,scores={part_pos:save=20000..}] ~ ~ ~ tp ^ ^ ^0.02
execute @e[tag=part_pos:mfa,scores={part_pos:save=20000..}] ~ ~ ~ scoreboard players remove @s part_pos:save 20000
#17
execute @e[tag=part_pos:mfa,scores={part_pos:save=10000..}] ~ ~ ~ tp ^ ^ ^0.01
execute @e[tag=part_pos:mfa,scores={part_pos:save=10000..}] ~ ~ ~ scoreboard players remove @s part_pos:save 10000
#18
execute @e[tag=part_pos:mfa,scores={part_pos:save=8000..}] ~ ~ ~ tp ^ ^ ^0.008
execute @e[tag=part_pos:mfa,scores={part_pos:save=8000..}] ~ ~ ~ scoreboard players remove @s part_pos:save 8000
#19
execute @e[tag=part_pos:mfa,scores={part_pos:save=4000..}] ~ ~ ~ tp ^ ^ ^0.004
execute @e[tag=part_pos:mfa,scores={part_pos:save=4000..}] ~ ~ ~ scoreboard players remove @s part_pos:save 4000
#20
execute @e[tag=part_pos:mfa,scores={part_pos:save=2000..}] ~ ~ ~ tp ^ ^ ^0.002
execute @e[tag=part_pos:mfa,scores={part_pos:save=2000..}] ~ ~ ~ scoreboard players remove @s part_pos:save 2000
#21
execute @e[tag=part_pos:mfa,scores={part_pos:save=1000..}] ~ ~ ~ tp ^ ^ ^0.001
execute @e[tag=part_pos:mfa,scores={part_pos:save=1000..}] ~ ~ ~ scoreboard players remove @s part_pos:save 1000
#22
execute @e[tag=part_pos:mfa,scores={part_pos:save=800..}] ~ ~ ~ tp ^ ^ ^0.0008
execute @e[tag=part_pos:mfa,scores={part_pos:save=800..}] ~ ~ ~ scoreboard players remove @s part_pos:save 800
#23
execute @e[tag=part_pos:mfa,scores={part_pos:save=400..}] ~ ~ ~ tp ^ ^ ^0.0004
execute @e[tag=part_pos:mfa,scores={part_pos:save=400..}] ~ ~ ~ scoreboard players remove @s part_pos:save 400
#24
execute @e[tag=part_pos:mfa,scores={part_pos:save=200..}] ~ ~ ~ tp ^ ^ ^0.0002
execute @e[tag=part_pos:mfa,scores={part_pos:save=200..}] ~ ~ ~ scoreboard players remove @s part_pos:save 200
#25
execute @e[tag=part_pos:mfa,scores={part_pos:save=100..}] ~ ~ ~ tp ^ ^ ^0.0001
execute @e[tag=part_pos:mfa,scores={part_pos:save=100..}] ~ ~ ~ scoreboard players remove @s part_pos:save 100
#26
execute @e[tag=part_pos:mfa,scores={part_pos:save=80..}] ~ ~ ~ tp ^ ^ ^0.00008
execute @e[tag=part_pos:mfa,scores={part_pos:save=80..}] ~ ~ ~ scoreboard players remove @s part_pos:save 80
#27
execute @e[tag=part_pos:mfa,scores={part_pos:save=40..}] ~ ~ ~ tp ^ ^ ^0.00004
execute @e[tag=part_pos:mfa,scores={part_pos:save=40..}] ~ ~ ~ scoreboard players remove @s part_pos:save 40
#28
execute @e[tag=part_pos:mfa,scores={part_pos:save=20..}] ~ ~ ~ tp ^ ^ ^0.00002
execute @e[tag=part_pos:mfa,scores={part_pos:save=20..}] ~ ~ ~ scoreboard players remove @s part_pos:save 20
#29
execute @e[tag=part_pos:mfa,scores={part_pos:save=10..}] ~ ~ ~ tp ^ ^ ^0.00001
execute @e[tag=part_pos:mfa,scores={part_pos:save=10..}] ~ ~ ~ scoreboard players remove @s part_pos:save 10
#30
execute @e[tag=part_pos:mfa,scores={part_pos:save=8..}] ~ ~ ~ tp ^ ^ ^0.000008
execute @e[tag=part_pos:mfa,scores={part_pos:save=8..}] ~ ~ ~ scoreboard players remove @s part_pos:save 8
#31
execute @e[tag=part_pos:mfa,scores={part_pos:save=4..}] ~ ~ ~ tp ^ ^ ^0.000004
execute @e[tag=part_pos:mfa,scores={part_pos:save=4..}] ~ ~ ~ scoreboard players remove @s part_pos:save 4
#32
execute @e[tag=part_pos:mfa,scores={part_pos:save=2..}] ~ ~ ~ tp ^ ^ ^0.000002
execute @e[tag=part_pos:mfa,scores={part_pos:save=2..}] ~ ~ ~ scoreboard players remove @s part_pos:save 2
#33
execute @e[tag=part_pos:mfa,scores={part_pos:save=1..}] ~ ~ ~ tp ^ ^ ^0.000001
execute @e[tag=part_pos:mfa,scores={part_pos:save=1..}] ~ ~ ~ scoreboard players remove @s part_pos:save 1
#34
#posz_return
execute @e[tag=part_pos:mfa,tag=part_pos:x_remove] ~ ~ ~ scoreboard players remove @s part_pos:x 256000000
execute @e[tag=part_pos:mfa,tag=part_pos:y_remove] ~ ~ ~ scoreboard players remove @s part_pos:y 256000000
execute @e[tag=part_pos:mfa,tag=part_pos:z_remove] ~ ~ ~ scoreboard players remove @s part_pos:z 256000000
#pos_remove
execute @e[tag=part_pos:mfa,tag=part_pos:x_remove] ~ ~ ~ tp ~-256 ~ ~
execute @e[tag=part_pos:mfa,tag=part_pos:y_remove] ~ ~ ~ tp ~ ~-256 ~
execute @e[tag=part_pos:mfa,tag=part_pos:z_remove] ~ ~ ~ tp ~ ~ ~-256
#pos_return
execute @e[tag=part_pos_another] ~ ~ ~ scoreboard players set @s part_pos:x -512000000
execute @e[tag=part_pos_another] ~ ~ ~ scoreboard players set @s part_pos:y -512000000
execute @e[tag=part_pos_another] ~ ~ ~ scoreboard players set @s part_pos:z -512000000
#scores_reset
execute @e[tag=part_pos:mfa] ~ ~ ~ scoreboard players operation @e[tag=part_pos_another,c=1,r=0.1,dx=0,scores={part_pos:x=-512000000}] part_pos:x = @s part_pos:x
execute @e[tag=part_pos:mfa] ~ ~ ~ scoreboard players operation @e[tag=part_pos_another,c=1,r=0.1,dx=0,scores={part_pos:y=-512000000}] part_pos:y = @s part_pos:y
execute @e[tag=part_pos:mfa] ~ ~ ~ scoreboard players operation @e[tag=part_pos_another,c=1,r=0.1,dx=0,scores={part_pos:z=-512000000}] part_pos:z = @s part_pos:z
#scores_operation_=
execute @e[tag=part_pos:mfa] ~ ~ ~ scoreboard players reset @s
execute @e[tag=part_pos:mfa] ~ ~ ~ tp ~ -32767.0 ~
execute @e[tag=part_pos:mfa] ~ ~ ~ kill @s
execute @e[tag=part_pos:mfm] ~ ~ ~ tp ~ -32767.0 ~
execute @e[tag=part_pos:mfm] ~ ~ ~ kill @s
#clean_entities
execute @e[tag=part_pos_another] ~ ~ ~ tellraw @a[tag=part_pos_master] {"rawtext":[{"text":"实体名称:"},{"selector":"@s"},{"text":", 其相对于你的坐标是:("},{"score":{"objective":"part_pos:x","name":"@s"}},{"text":","},{"score":{"objective":"part_pos:y","name":"@s"}},{"text":","},{"score":{"objective":"part_pos:z","name":"@s"}},{"text":")"}]}
#send_message
tag @s remove part_pos_master
#tag_set