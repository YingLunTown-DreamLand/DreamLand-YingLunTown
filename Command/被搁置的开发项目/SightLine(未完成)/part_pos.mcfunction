<<<<<<< HEAD
scoreboard objectives add part_pos:x_fix dummy
scoreboard objectives add part_pos:y_fix dummy
scoreboard objectives add part_pos:z_fix dummy
scoreboard objectives add part_pos:x dummy
scoreboard objectives add part_pos:y dummy
scoreboard objectives add part_pos:z dummy
scoreboard objectives add part_pos:save dummy
#scoreboard_add
tag @s add part_pos:master
#tag_set
execute @e[tag=part_pos:another] ~ ~ ~ summon minecraft:armor_stand part_pos:mark_for_another
execute @e[tag=part_pos:another] ~ ~ ~ tag @e[name=part_pos:mark_for_another,type=minecraft:armor_stand,c=1,tag=!part_pos:mfa,dx=0] add part_pos:mfa
execute @e[tag=part_pos:another] ~ ~ ~ summon minecraft:armor_stand part_pos:stand_another
execute @e[tag=part_pos:another] ~ ~ ~ tag @e[name=part_pos:stand_another,type=minecraft:armor_stand,c=1,tag=!part_pos:mfa,dx=0] add part_pos:sa
execute @s ~ ~ ~ summon minecraft:armor_stand part_pos:mark_for_master
execute @s ~ ~ ~ tag @e[name=part_pos:mark_for_master,c=1,dx=0,type=minecraft:armor_stand] add part_pos:mfm
execute @s ~ ~ ~ tag @e[name=part_pos:mark_for_master,c=1,dx=0,type=minecraft:armor_stand] add part_pos:mfa
#summon_entities_and_tag_set
execute @e[tag=part_pos:mfa] ~ ~ ~ scoreboard players add @s part_pos:x_fix 0
execute @e[tag=part_pos:mfa] ~ ~ ~ scoreboard players add @s part_pos:y_fix 0
execute @e[tag=part_pos:mfa] ~ ~ ~ scoreboard players add @s part_pos:z_fix 0
execute @e[tag=part_pos:mfa] ~ ~ ~ scoreboard players add @s part_pos:x 0
execute @e[tag=part_pos:mfa] ~ ~ ~ scoreboard players add @s part_pos:y 0
execute @e[tag=part_pos:mfa] ~ ~ ~ scoreboard players add @s part_pos:z 0
#scores_set
execute @e[tag=part_pos:mfa] ~0.8 ~ ~ execute @s[dx=0] ~ ~ ~ scoreboard players add @s part_pos:x_fix 80
execute @e[tag=part_pos:mfa] ~0.8 ~ ~ execute @s[dx=0] ~ ~ ~ tp ~0.8 ~ ~
#1
execute @e[tag=part_pos:mfa] ~0.4 ~ ~ execute @s[dx=0] ~ ~ ~ scoreboard players add @s part_pos:x_fix 40
execute @e[tag=part_pos:mfa] ~0.4 ~ ~ execute @s[dx=0] ~ ~ ~ tp ~0.4 ~ ~
#2
execute @e[tag=part_pos:mfa] ~0.2 ~ ~ execute @s[dx=0] ~ ~ ~ scoreboard players add @s part_pos:x_fix 20
execute @e[tag=part_pos:mfa] ~0.2 ~ ~ execute @s[dx=0] ~ ~ ~ tp ~0.2 ~ ~
#3
execute @e[tag=part_pos:mfa] ~0.1 ~ ~ execute @s[dx=0] ~ ~ ~ scoreboard players add @s part_pos:x_fix 10
execute @e[tag=part_pos:mfa] ~0.1 ~ ~ execute @s[dx=0] ~ ~ ~ tp ~0.1 ~ ~
#4
execute @e[tag=part_pos:mfa] ~0.08 ~ ~ execute @s[dx=0] ~ ~ ~ scoreboard players add @s part_pos:x_fix 8
execute @e[tag=part_pos:mfa] ~0.08 ~ ~ execute @s[dx=0] ~ ~ ~ tp ~0.08 ~ ~
#5
execute @e[tag=part_pos:mfa] ~0.04 ~ ~ execute @s[dx=0] ~ ~ ~ scoreboard players add @s part_pos:x_fix 4
execute @e[tag=part_pos:mfa] ~0.04 ~ ~ execute @s[dx=0] ~ ~ ~ tp ~0.04 ~ ~
#6
execute @e[tag=part_pos:mfa] ~0.02 ~ ~ execute @s[dx=0] ~ ~ ~ scoreboard players add @s part_pos:x_fix 2
execute @e[tag=part_pos:mfa] ~0.02 ~ ~ execute @s[dx=0] ~ ~ ~ tp ~0.02 ~ ~
#7
execute @e[tag=part_pos:mfa] ~0.01 ~ ~ execute @s[dx=0] ~ ~ ~ scoreboard players add @s part_pos:x_fix 1
execute @e[tag=part_pos:mfa] ~0.01 ~ ~ execute @s[dx=0] ~ ~ ~ tp ~0.01 ~ ~
#8
execute @e[tag=part_pos:mfa] ~ ~ ~ tp ~0.5 ~ ~
#9
execute @e[tag=part_pos:mfm] ~ ~ ~ tag @s remove part_pos:mfa
execute @e[tag=part_pos:mfm] ~ ~ ~ tag @e[tag=part_pos:mfa,y=-30000000,z=-30000000,dy=60000000,dz=60000000,dx=-30000000,x=~-1] add part_pos:x_remove
execute @e[tag=part_pos:x_remove] ~ ~ ~ tp ~256.0 ~ ~
#pos_fix_to_+
execute @e[tag=part_pos:mfa] ~ ~ ~ tp ~ ~ ~ facing ~-1 ~ ~
#facing
execute @e[tag=part_pos:mfm] ~128 ~ ~ scoreboard players add @e[tag=part_pos:mfa,y=-30000000,z=-30000000,dy=60000000,dz=60000000,dx=30000000] part_pos:x 12800
execute @e[tag=part_pos:mfm] ~128 ~ ~ execute @e[tag=part_pos:mfa,y=-30000000,z=-30000000,dy=60000000,dz=60000000,dx=30000000] ~ ~ ~ tp ^ ^ ^128
#1
execute @e[tag=part_pos:mfm] ~64 ~ ~ scoreboard players add @e[tag=part_pos:mfa,y=-30000000,z=-30000000,dy=60000000,dz=60000000,dx=30000000] part_pos:x 6400
execute @e[tag=part_pos:mfm] ~64 ~ ~ execute @e[tag=part_pos:mfa,y=-30000000,z=-30000000,dy=60000000,dz=60000000,dx=30000000] ~ ~ ~ tp ^ ^ ^64
#2
execute @e[tag=part_pos:mfm] ~32 ~ ~ scoreboard players add @e[tag=part_pos:mfa,y=-30000000,z=-30000000,dy=60000000,dz=60000000,dx=30000000] part_pos:x 3200
execute @e[tag=part_pos:mfm] ~32 ~ ~ execute @e[tag=part_pos:mfa,y=-30000000,z=-30000000,dy=60000000,dz=60000000,dx=30000000] ~ ~ ~ tp ^ ^ ^32
#3
execute @e[tag=part_pos:mfm] ~16 ~ ~ scoreboard players add @e[tag=part_pos:mfa,y=-30000000,z=-30000000,dy=60000000,dz=60000000,dx=30000000] part_pos:x 1600
execute @e[tag=part_pos:mfm] ~16 ~ ~ execute @e[tag=part_pos:mfa,y=-30000000,z=-30000000,dy=60000000,dz=60000000,dx=30000000] ~ ~ ~ tp ^ ^ ^16
#4
execute @e[tag=part_pos:mfm] ~8 ~ ~ scoreboard players add @e[tag=part_pos:mfa,y=-30000000,z=-30000000,dy=60000000,dz=60000000,dx=30000000] part_pos:x 800
execute @e[tag=part_pos:mfm] ~8 ~ ~ execute @e[tag=part_pos:mfa,y=-30000000,z=-30000000,dy=60000000,dz=60000000,dx=30000000] ~ ~ ~ tp ^ ^ ^8
#5
execute @e[tag=part_pos:mfm] ~4 ~ ~ scoreboard players add @e[tag=part_pos:mfa,y=-30000000,z=-30000000,dy=60000000,dz=60000000,dx=30000000] part_pos:x 400
execute @e[tag=part_pos:mfm] ~4 ~ ~ execute @e[tag=part_pos:mfa,y=-30000000,z=-30000000,dy=60000000,dz=60000000,dx=30000000] ~ ~ ~ tp ^ ^ ^4
#6
execute @e[tag=part_pos:mfm] ~2 ~ ~ scoreboard players add @e[tag=part_pos:mfa,y=-30000000,z=-30000000,dy=60000000,dz=60000000,dx=30000000] part_pos:x 200
execute @e[tag=part_pos:mfm] ~2 ~ ~ execute @e[tag=part_pos:mfa,y=-30000000,z=-30000000,dy=60000000,dz=60000000,dx=30000000] ~ ~ ~ tp ^ ^ ^2
#7
execute @e[tag=part_pos:mfm] ~1 ~ ~ scoreboard players add @e[tag=part_pos:mfa,y=-30000000,z=-30000000,dy=60000000,dz=60000000,dx=30000000] part_pos:x 100
execute @e[tag=part_pos:mfm] ~1 ~ ~ execute @e[tag=part_pos:mfa,y=-30000000,z=-30000000,dy=60000000,dz=60000000,dx=30000000] ~ ~ ~ tp ^ ^ ^1
#8
execute @e[tag=part_pos:mfm] ~1 ~ ~ scoreboard players add @e[tag=part_pos:mfa,y=-30000000,z=-30000000,dy=60000000,dz=60000000,dx=30000000] part_pos:x 100
execute @e[tag=part_pos:mfm] ~1 ~ ~ execute @e[tag=part_pos:mfa,y=-30000000,z=-30000000,dy=60000000,dz=60000000,dx=30000000] ~ ~ ~ tp ^ ^ ^1
#9
execute @e[tag=part_pos:mfm] ~ ~ ~ tag @s add part_pos:mfa
#tag_set
execute @e[tag=part_pos:mfa,tag=!part_pos:mfm] ~ ~ ~ scoreboard players operation @s part_pos:save = @s part_pos:x
execute @e[tag=part_pos:mfa] ~ ~ ~ scoreboard players operation @s part_pos:save -= @s part_pos:x_fix
#scores_math
execute @e[tag=part_pos:mfa,scores={part_pos:save=0..}] ~ ~ ~ tp ~ ~ ~ facing ~1 ~ ~
execute @e[tag=part_pos:mfa,scores={part_pos:save=..-1}] ~ ~ ~ tp ~ ~ ~ facing ~-1 ~ ~
execute @e[tag=part_pos:mfa,scores={part_pos:save=..-1}] ~ ~ ~ scoreboard players set fu part_pos:save -1
execute @e[tag=part_pos:mfa,scores={part_pos:save=..-1}] ~ ~ ~ scoreboard players operation @s part_pos:save *= fu part_pos:save
#facing
execute @e[tag=part_pos:mfa,scores={part_pos:save=12800..}] ~ ~ ~ tp ^ ^ ^128
execute @e[tag=part_pos:mfa,scores={part_pos:save=12800..}] ~ ~ ~ scoreboard players remove @s part_pos:save 12800
#1
execute @e[tag=part_pos:mfa,scores={part_pos:save=6400..}] ~ ~ ~ tp ^ ^ ^64
execute @e[tag=part_pos:mfa,scores={part_pos:save=6400..}] ~ ~ ~ scoreboard players remove @s part_pos:save 6400
#2
execute @e[tag=part_pos:mfa,scores={part_pos:save=3200..}] ~ ~ ~ tp ^ ^ ^32
execute @e[tag=part_pos:mfa,scores={part_pos:save=3200..}] ~ ~ ~ scoreboard players remove @s part_pos:save 3200
#3
execute @e[tag=part_pos:mfa,scores={part_pos:save=1600..}] ~ ~ ~ tp ^ ^ ^16
execute @e[tag=part_pos:mfa,scores={part_pos:save=1600..}] ~ ~ ~ scoreboard players remove @s part_pos:save 1600
#4
execute @e[tag=part_pos:mfa,scores={part_pos:save=800..}] ~ ~ ~ tp ^ ^ ^8
execute @e[tag=part_pos:mfa,scores={part_pos:save=800..}] ~ ~ ~ scoreboard players remove @s part_pos:save 800
#5
execute @e[tag=part_pos:mfa,scores={part_pos:save=400..}] ~ ~ ~ tp ^ ^ ^4
execute @e[tag=part_pos:mfa,scores={part_pos:save=400..}] ~ ~ ~ scoreboard players remove @s part_pos:save 400
#6
execute @e[tag=part_pos:mfa,scores={part_pos:save=200..}] ~ ~ ~ tp ^ ^ ^2
execute @e[tag=part_pos:mfa,scores={part_pos:save=200..}] ~ ~ ~ scoreboard players remove @s part_pos:save 200
#7
execute @e[tag=part_pos:mfa,scores={part_pos:save=100..}] ~ ~ ~ tp ^ ^ ^1
execute @e[tag=part_pos:mfa,scores={part_pos:save=100..}] ~ ~ ~ scoreboard players remove @s part_pos:save 100
#8
execute @e[tag=part_pos:mfa,scores={part_pos:save=100..}] ~ ~ ~ tp ^ ^ ^1
execute @e[tag=part_pos:mfa,scores={part_pos:save=100..}] ~ ~ ~ scoreboard players remove @s part_pos:save 100
#9
execute @e[tag=part_pos:mfa,scores={part_pos:save=80..}] ~ ~ ~ tp ^ ^ ^0.8
execute @e[tag=part_pos:mfa,scores={part_pos:save=80..}] ~ ~ ~ scoreboard players remove @s part_pos:save 80
#10
execute @e[tag=part_pos:mfa,scores={part_pos:save=40..}] ~ ~ ~ tp ^ ^ ^0.4
execute @e[tag=part_pos:mfa,scores={part_pos:save=40..}] ~ ~ ~ scoreboard players remove @s part_pos:save 40
#11
execute @e[tag=part_pos:mfa,scores={part_pos:save=20..}] ~ ~ ~ tp ^ ^ ^0.2
execute @e[tag=part_pos:mfa,scores={part_pos:save=20..}] ~ ~ ~ scoreboard players remove @s part_pos:save 20
#12
execute @e[tag=part_pos:mfa,scores={part_pos:save=10..}] ~ ~ ~ tp ^ ^ ^0.1
execute @e[tag=part_pos:mfa,scores={part_pos:save=10..}] ~ ~ ~ scoreboard players remove @s part_pos:save 10
#13
execute @e[tag=part_pos:mfa,scores={part_pos:save=8..}] ~ ~ ~ tp ^ ^ ^0.08
execute @e[tag=part_pos:mfa,scores={part_pos:save=8..}] ~ ~ ~ scoreboard players remove @s part_pos:save 8
#14
execute @e[tag=part_pos:mfa,scores={part_pos:save=4..}] ~ ~ ~ tp ^ ^ ^0.04
execute @e[tag=part_pos:mfa,scores={part_pos:save=4..}] ~ ~ ~ scoreboard players remove @s part_pos:save 4
#15
execute @e[tag=part_pos:mfa,scores={part_pos:save=2..}] ~ ~ ~ tp ^ ^ ^0.02
execute @e[tag=part_pos:mfa,scores={part_pos:save=2..}] ~ ~ ~ scoreboard players remove @s part_pos:save 2
#16
execute @e[tag=part_pos:mfa,scores={part_pos:save=1..}] ~ ~ ~ tp ^ ^ ^0.01
execute @e[tag=part_pos:mfa,scores={part_pos:save=1..}] ~ ~ ~ scoreboard players remove @s part_pos:save 1
#17
execute @e[tag=part_pos:mfa] ~ ~ ~ tp ~-0.5 ~ ~
execute @e[tag=part_pos:mfa,tag=part_pos:x_remove] ~ ~ ~ tp ~-256.0 ~ ~
execute @e[tag=part_pos:mfa,tag=!part_pos:mfm] ~ ~ ~ tp @e[tag=part_pos:sa,c=1,r=0.1]
#posx_return
execute @e[tag=part_pos:mfm] ~ ~ ~ tag @s remove part_pos:mfa
#tag_set
execute @e[tag=part_pos:mfa] ~ ~ ~ scoreboard players operation @s part_pos:x -= @s part_pos:x_fix
execute @e[tag=part_pos:mfa] ~ ~ ~ scoreboard players operation @s part_pos:x += @e[tag=part_pos:mfm] part_pos:x_fix
execute @e[tag=part_pos:mfa,tag=part_pos:x_remove] ~ ~ ~ scoreboard players remove @s part_pos:x 25600
#math
execute @e[tag=part_pos:mfm] ~ ~ ~ tag @s add part_pos:mfa
#tag_set
execute @e[tag=part_pos:mfa] ~ ~ ~0.8 execute @s[dx=0] ~ ~ ~ scoreboard players add @s part_pos:z_fix 80
execute @e[tag=part_pos:mfa] ~ ~ ~0.8 execute @s[dx=0] ~ ~ ~ tp ~ ~ ~0.8
#1
execute @e[tag=part_pos:mfa] ~ ~ ~0.4 execute @s[dx=0] ~ ~ ~ scoreboard players add @s part_pos:z_fix 40
execute @e[tag=part_pos:mfa] ~ ~ ~0.4 execute @s[dx=0] ~ ~ ~ tp ~ ~ ~0.4
#2
execute @e[tag=part_pos:mfa] ~ ~ ~0.2 execute @s[dx=0] ~ ~ ~ scoreboard players add @s part_pos:z_fix 20
execute @e[tag=part_pos:mfa] ~ ~ ~0.2 execute @s[dx=0] ~ ~ ~ tp ~ ~ ~0.2
#3
execute @e[tag=part_pos:mfa] ~ ~ ~0.1 execute @s[dx=0] ~ ~ ~ scoreboard players add @s part_pos:z_fix 10
execute @e[tag=part_pos:mfa] ~ ~ ~0.1 execute @s[dx=0] ~ ~ ~ tp ~ ~ ~0.1
#4
execute @e[tag=part_pos:mfa] ~ ~ ~0.08 execute @s[dx=0] ~ ~ ~ scoreboard players add @s part_pos:z_fix 8
execute @e[tag=part_pos:mfa] ~ ~ ~0.08 execute @s[dx=0] ~ ~ ~ tp ~ ~ ~0.08
#5
execute @e[tag=part_pos:mfa] ~ ~ ~0.04 execute @s[dx=0] ~ ~ ~ scoreboard players add @s part_pos:z_fix 4
execute @e[tag=part_pos:mfa] ~ ~ ~0.04 execute @s[dx=0] ~ ~ ~ tp ~ ~ ~0.04
#6
execute @e[tag=part_pos:mfa] ~ ~ ~0.02 execute @s[dx=0] ~ ~ ~ scoreboard players add @s part_pos:z_fix 2
execute @e[tag=part_pos:mfa] ~ ~ ~0.02 execute @s[dx=0] ~ ~ ~ tp ~ ~ ~0.02
#7
execute @e[tag=part_pos:mfa] ~ ~ ~0.01 execute @s[dx=0] ~ ~ ~ scoreboard players add @s part_pos:z_fix 1
execute @e[tag=part_pos:mfa] ~ ~ ~0.01 execute @s[dx=0] ~ ~ ~ tp ~ ~ ~0.01
#8
execute @e[tag=part_pos:mfa] ~ ~ ~ tp ~ ~ ~0.5
#9
execute @e[tag=part_pos:mfm] ~ ~ ~ tag @s remove part_pos:mfa
execute @e[tag=part_pos:mfm] ~ ~ ~ tag @e[tag=part_pos:mfa,y=-30000000,x=-30000000,dy=60000000,dx=60000000,dz=-30000000,z=~-1] add part_pos:z_remove
execute @e[tag=part_pos:z_remove] ~ ~ ~ tp ~ ~ ~256.0
#pos_fix_to_+
execute @e[tag=part_pos:mfa] ~ ~ ~ tp ~ ~ ~ facing ~ ~ ~-1
#facing
execute @e[tag=part_pos:mfm] ~ ~ ~128 scoreboard players add @e[tag=part_pos:mfa,y=-30000000,x=-30000000,dy=60000000,dx=60000000,dz=30000000] part_pos:z 12800
execute @e[tag=part_pos:mfm] ~ ~ ~128 execute @e[tag=part_pos:mfa,y=-30000000,x=-30000000,dy=60000000,dx=60000000,dz=30000000] ~ ~ ~ tp ^ ^ ^128
#1
execute @e[tag=part_pos:mfm] ~ ~ ~64 scoreboard players add @e[tag=part_pos:mfa,y=-30000000,x=-30000000,dy=60000000,dx=60000000,dz=30000000] part_pos:z 6400
execute @e[tag=part_pos:mfm] ~ ~ ~64 execute @e[tag=part_pos:mfa,y=-30000000,x=-30000000,dy=60000000,dx=60000000,dz=30000000] ~ ~ ~ tp ^ ^ ^64
#2
execute @e[tag=part_pos:mfm] ~ ~ ~32 scoreboard players add @e[tag=part_pos:mfa,y=-30000000,x=-30000000,dy=60000000,dx=60000000,dz=30000000] part_pos:z 3200
execute @e[tag=part_pos:mfm] ~ ~ ~32 execute @e[tag=part_pos:mfa,y=-30000000,x=-30000000,dy=60000000,dx=60000000,dz=30000000] ~ ~ ~ tp ^ ^ ^32
#3
execute @e[tag=part_pos:mfm] ~ ~ ~16 scoreboard players add @e[tag=part_pos:mfa,y=-30000000,x=-30000000,dy=60000000,dx=60000000,dz=30000000] part_pos:z 1600
execute @e[tag=part_pos:mfm] ~ ~ ~16 execute @e[tag=part_pos:mfa,y=-30000000,x=-30000000,dy=60000000,dx=60000000,dz=30000000] ~ ~ ~ tp ^ ^ ^16
#4
execute @e[tag=part_pos:mfm] ~ ~ ~8 scoreboard players add @e[tag=part_pos:mfa,y=-30000000,x=-30000000,dy=60000000,dx=60000000,dz=30000000] part_pos:z 800
execute @e[tag=part_pos:mfm] ~ ~ ~8 execute @e[tag=part_pos:mfa,y=-30000000,x=-30000000,dy=60000000,dx=60000000,dz=30000000] ~ ~ ~ tp ^ ^ ^8
#5
execute @e[tag=part_pos:mfm] ~ ~ ~4 scoreboard players add @e[tag=part_pos:mfa,y=-30000000,x=-30000000,dy=60000000,dx=60000000,dz=30000000] part_pos:z 400
execute @e[tag=part_pos:mfm] ~ ~ ~4 execute @e[tag=part_pos:mfa,y=-30000000,x=-30000000,dy=60000000,dx=60000000,dz=30000000] ~ ~ ~ tp ^ ^ ^4
#6
execute @e[tag=part_pos:mfm] ~ ~ ~2 scoreboard players add @e[tag=part_pos:mfa,y=-30000000,x=-30000000,dy=60000000,dx=60000000,dz=30000000] part_pos:z 200
execute @e[tag=part_pos:mfm] ~ ~ ~2 execute @e[tag=part_pos:mfa,y=-30000000,x=-30000000,dy=60000000,dx=60000000,dz=30000000] ~ ~ ~ tp ^ ^ ^2
#7
execute @e[tag=part_pos:mfm] ~ ~ ~1 scoreboard players add @e[tag=part_pos:mfa,y=-30000000,x=-30000000,dy=60000000,dx=60000000,dz=30000000] part_pos:z 100
execute @e[tag=part_pos:mfm] ~ ~ ~1 execute @e[tag=part_pos:mfa,y=-30000000,x=-30000000,dy=60000000,dx=60000000,dz=30000000] ~ ~ ~ tp ^ ^ ^1
#8
execute @e[tag=part_pos:mfm] ~ ~ ~1 scoreboard players add @e[tag=part_pos:mfa,y=-30000000,x=-30000000,dy=60000000,dx=60000000,dz=30000000] part_pos:z 100
execute @e[tag=part_pos:mfm] ~ ~ ~1 execute @e[tag=part_pos:mfa,y=-30000000,x=-30000000,dy=60000000,dx=60000000,dz=30000000] ~ ~ ~ tp ^ ^ ^1
#9
execute @e[tag=part_pos:mfm] ~ ~ ~ tag @s add part_pos:mfa
#tag_set
execute @e[tag=part_pos:mfa,tag=!part_pos:mfm] ~ ~ ~ scoreboard players operation @s part_pos:save = @s part_pos:z
execute @e[tag=part_pos:mfa] ~ ~ ~ scoreboard players operation @s part_pos:save -= @s part_pos:z_fix
#scores_math
execute @e[tag=part_pos:mfa,scores={part_pos:save=0..}] ~ ~ ~ tp ~ ~ ~ facing ~ ~ ~1
execute @e[tag=part_pos:mfa,scores={part_pos:save=..-1}] ~ ~ ~ tp ~ ~ ~ facing ~ ~ ~-1
execute @e[tag=part_pos:mfa,scores={part_pos:save=..-1}] ~ ~ ~ scoreboard players set fu part_pos:save -1
execute @e[tag=part_pos:mfa,scores={part_pos:save=..-1}] ~ ~ ~ scoreboard players operation @s part_pos:save *= fu part_pos:save
#facing
execute @e[tag=part_pos:mfa,scores={part_pos:save=12800..}] ~ ~ ~ tp ^ ^ ^128
execute @e[tag=part_pos:mfa,scores={part_pos:save=12800..}] ~ ~ ~ scoreboard players remove @s part_pos:save 12800
#1
execute @e[tag=part_pos:mfa,scores={part_pos:save=6400..}] ~ ~ ~ tp ^ ^ ^64
execute @e[tag=part_pos:mfa,scores={part_pos:save=6400..}] ~ ~ ~ scoreboard players remove @s part_pos:save 6400
#2
execute @e[tag=part_pos:mfa,scores={part_pos:save=3200..}] ~ ~ ~ tp ^ ^ ^32
execute @e[tag=part_pos:mfa,scores={part_pos:save=3200..}] ~ ~ ~ scoreboard players remove @s part_pos:save 3200
#3
execute @e[tag=part_pos:mfa,scores={part_pos:save=1600..}] ~ ~ ~ tp ^ ^ ^16
execute @e[tag=part_pos:mfa,scores={part_pos:save=1600..}] ~ ~ ~ scoreboard players remove @s part_pos:save 1600
#4
execute @e[tag=part_pos:mfa,scores={part_pos:save=800..}] ~ ~ ~ tp ^ ^ ^8
execute @e[tag=part_pos:mfa,scores={part_pos:save=800..}] ~ ~ ~ scoreboard players remove @s part_pos:save 800
#5
execute @e[tag=part_pos:mfa,scores={part_pos:save=400..}] ~ ~ ~ tp ^ ^ ^4
execute @e[tag=part_pos:mfa,scores={part_pos:save=400..}] ~ ~ ~ scoreboard players remove @s part_pos:save 400
#6
execute @e[tag=part_pos:mfa,scores={part_pos:save=200..}] ~ ~ ~ tp ^ ^ ^2
execute @e[tag=part_pos:mfa,scores={part_pos:save=200..}] ~ ~ ~ scoreboard players remove @s part_pos:save 200
#7
execute @e[tag=part_pos:mfa,scores={part_pos:save=100..}] ~ ~ ~ tp ^ ^ ^1
execute @e[tag=part_pos:mfa,scores={part_pos:save=100..}] ~ ~ ~ scoreboard players remove @s part_pos:save 100
#8
execute @e[tag=part_pos:mfa,scores={part_pos:save=100..}] ~ ~ ~ tp ^ ^ ^1
execute @e[tag=part_pos:mfa,scores={part_pos:save=100..}] ~ ~ ~ scoreboard players remove @s part_pos:save 100
#9
execute @e[tag=part_pos:mfa,scores={part_pos:save=80..}] ~ ~ ~ tp ^ ^ ^0.8
execute @e[tag=part_pos:mfa,scores={part_pos:save=80..}] ~ ~ ~ scoreboard players remove @s part_pos:save 80
#10
execute @e[tag=part_pos:mfa,scores={part_pos:save=40..}] ~ ~ ~ tp ^ ^ ^0.4
execute @e[tag=part_pos:mfa,scores={part_pos:save=40..}] ~ ~ ~ scoreboard players remove @s part_pos:save 40
#11
execute @e[tag=part_pos:mfa,scores={part_pos:save=20..}] ~ ~ ~ tp ^ ^ ^0.2
execute @e[tag=part_pos:mfa,scores={part_pos:save=20..}] ~ ~ ~ scoreboard players remove @s part_pos:save 20
#12
execute @e[tag=part_pos:mfa,scores={part_pos:save=10..}] ~ ~ ~ tp ^ ^ ^0.1
execute @e[tag=part_pos:mfa,scores={part_pos:save=10..}] ~ ~ ~ scoreboard players remove @s part_pos:save 10
#13
execute @e[tag=part_pos:mfa,scores={part_pos:save=8..}] ~ ~ ~ tp ^ ^ ^0.08
execute @e[tag=part_pos:mfa,scores={part_pos:save=8..}] ~ ~ ~ scoreboard players remove @s part_pos:save 8
#14
execute @e[tag=part_pos:mfa,scores={part_pos:save=4..}] ~ ~ ~ tp ^ ^ ^0.04
execute @e[tag=part_pos:mfa,scores={part_pos:save=4..}] ~ ~ ~ scoreboard players remove @s part_pos:save 4
#15
execute @e[tag=part_pos:mfa,scores={part_pos:save=2..}] ~ ~ ~ tp ^ ^ ^0.02
execute @e[tag=part_pos:mfa,scores={part_pos:save=2..}] ~ ~ ~ scoreboard players remove @s part_pos:save 2
#16
execute @e[tag=part_pos:mfa,scores={part_pos:save=1..}] ~ ~ ~ tp ^ ^ ^0.01
execute @e[tag=part_pos:mfa,scores={part_pos:save=1..}] ~ ~ ~ scoreboard players remove @s part_pos:save 1
#17
execute @e[tag=part_pos:mfa] ~ ~ ~ tp ~ ~ ~-0.5
execute @e[tag=part_pos:mfa,tag=part_pos:z_remove] ~ ~ ~ tp ~ ~ ~-256.0
execute @e[tag=part_pos:mfa,tag=!part_pos:mfm] ~ ~ ~ tp @e[tag=part_pos:sa,c=1,r=0.1]
#posz_return
execute @e[tag=part_pos:mfm] ~ ~ ~ tag @s remove part_pos:mfa
#tag_set
execute @e[tag=part_pos:mfa] ~ ~ ~ scoreboard players operation @s part_pos:z -= @s part_pos:z_fix
execute @e[tag=part_pos:mfa] ~ ~ ~ scoreboard players operation @s part_pos:z += @e[tag=part_pos:mfm] part_pos:z_fix
execute @e[tag=part_pos:mfa,tag=part_pos:z_remove] ~ ~ ~ scoreboard players remove @s part_pos:z 25600
#math
execute @e[tag=part_pos:mfm] ~ ~ ~ tag @s add part_pos:mfa
#tag_set
execute @e[tag=part_pos:mfa] ~ ~0.8 ~ execute @s[dx=0] ~ ~ ~ scoreboard players add @s part_pos:y_fix 80
execute @e[tag=part_pos:mfa] ~ ~0.8 ~ execute @s[dx=0] ~ ~ ~ tp ~ ~0.8 ~
#1
execute @e[tag=part_pos:mfa] ~ ~0.4 ~ execute @s[dx=0] ~ ~ ~ scoreboard players add @s part_pos:y_fix 40
execute @e[tag=part_pos:mfa] ~ ~0.4 ~ execute @s[dx=0] ~ ~ ~ tp ~ ~0.4 ~
#2
execute @e[tag=part_pos:mfa] ~ ~0.2 ~ execute @s[dx=0] ~ ~ ~ scoreboard players add @s part_pos:y_fix 20
execute @e[tag=part_pos:mfa] ~ ~0.2 ~ execute @s[dx=0] ~ ~ ~ tp ~ ~0.2 ~
#3
execute @e[tag=part_pos:mfa] ~ ~0.1 ~ execute @s[dx=0] ~ ~ ~ scoreboard players add @s part_pos:y_fix 10
execute @e[tag=part_pos:mfa] ~ ~0.1 ~ execute @s[dx=0] ~ ~ ~ tp ~ ~0.1 ~
#4
execute @e[tag=part_pos:mfa] ~ ~0.08 ~ execute @s[dx=0] ~ ~ ~ scoreboard players add @s part_pos:y_fix 8
execute @e[tag=part_pos:mfa] ~ ~0.08 ~ execute @s[dx=0] ~ ~ ~ tp ~ ~0.08 ~
#5
execute @e[tag=part_pos:mfa] ~ ~0.04 ~ execute @s[dx=0] ~ ~ ~ scoreboard players add @s part_pos:y_fix 4
execute @e[tag=part_pos:mfa] ~ ~0.04 ~ execute @s[dx=0] ~ ~ ~ tp ~ ~0.04 ~
#6
execute @e[tag=part_pos:mfa] ~ ~0.02 ~ execute @s[dx=0] ~ ~ ~ scoreboard players add @s part_pos:y_fix 2
execute @e[tag=part_pos:mfa] ~ ~0.02 ~ execute @s[dx=0] ~ ~ ~ tp ~ ~0.02 ~
#7
execute @e[tag=part_pos:mfa] ~ ~0.01 ~ execute @s[dx=0] ~ ~ ~ scoreboard players add @s part_pos:y_fix 1
execute @e[tag=part_pos:mfa] ~ ~0.01 ~ execute @s[dx=0] ~ ~ ~ tp ~ ~0.01 ~
#8
execute @e[tag=part_pos:mfa] ~ ~ ~ tp ~ ~0.5 ~
#9
execute @e[tag=part_pos:mfm] ~ ~ ~ tag @s remove part_pos:mfa
execute @e[tag=part_pos:mfm] ~ ~ ~ tag @e[tag=part_pos:mfa,x=-30000000,z=-30000000,dx=60000000,dz=60000000,dy=-30000000,y=~-1] add part_pos:y_remove
execute @e[tag=part_pos:y_remove] ~ ~ ~ tp ~ ~256.0 ~
#pos_fix_to_+
execute @e[tag=part_pos:mfm] ~ ~128 ~ scoreboard players add @e[tag=part_pos:mfa,x=-30000000,z=-30000000,dx=60000000,dz=60000000,dy=30000000] part_pos:y 12800
execute @e[tag=part_pos:mfm] ~ ~128 ~ execute @e[tag=part_pos:mfa,x=-30000000,z=-30000000,dx=60000000,dz=60000000,dy=30000000] ~ ~ ~ tp ~ ~-128 ~
#1
execute @e[tag=part_pos:mfm] ~ ~64 ~ scoreboard players add @e[tag=part_pos:mfa,x=-30000000,z=-30000000,dx=60000000,dz=60000000,dy=30000000] part_pos:y 6400
execute @e[tag=part_pos:mfm] ~ ~64 ~ execute @e[tag=part_pos:mfa,x=-30000000,z=-30000000,dx=60000000,dz=60000000,dy=30000000] ~ ~ ~ tp ~ ~-64 ~
#2
execute @e[tag=part_pos:mfm] ~ ~32 ~ scoreboard players add @e[tag=part_pos:mfa,x=-30000000,z=-30000000,dx=60000000,dz=60000000,dy=30000000] part_pos:y 3200
execute @e[tag=part_pos:mfm] ~ ~32 ~ execute @e[tag=part_pos:mfa,x=-30000000,z=-30000000,dx=60000000,dz=60000000,dy=30000000] ~ ~ ~ tp ~ ~-32 ~
#3
execute @e[tag=part_pos:mfm] ~ ~16 ~ scoreboard players add @e[tag=part_pos:mfa,x=-30000000,z=-30000000,dx=60000000,dz=60000000,dy=30000000] part_pos:y 1600
execute @e[tag=part_pos:mfm] ~ ~16 ~ execute @e[tag=part_pos:mfa,x=-30000000,z=-30000000,dx=60000000,dz=60000000,dy=30000000] ~ ~ ~ tp ~ ~-16 ~
#4
execute @e[tag=part_pos:mfm] ~ ~8 ~ scoreboard players add @e[tag=part_pos:mfa,x=-30000000,z=-30000000,dx=60000000,dz=60000000,dy=30000000] part_pos:y 800
execute @e[tag=part_pos:mfm] ~ ~8 ~ execute @e[tag=part_pos:mfa,x=-30000000,z=-30000000,dx=60000000,dz=60000000,dy=30000000] ~ ~ ~ tp ~ ~-8 ~
#5
execute @e[tag=part_pos:mfm] ~ ~4 ~ scoreboard players add @e[tag=part_pos:mfa,x=-30000000,z=-30000000,dx=60000000,dz=60000000,dy=30000000] part_pos:y 400
execute @e[tag=part_pos:mfm] ~ ~4 ~ execute @e[tag=part_pos:mfa,x=-30000000,z=-30000000,dx=60000000,dz=60000000,dy=30000000] ~ ~ ~ tp ~ ~-4 ~
#6
execute @e[tag=part_pos:mfm] ~ ~2 ~ scoreboard players add @e[tag=part_pos:mfa,x=-30000000,z=-30000000,dx=60000000,dz=60000000,dy=30000000] part_pos:y 200
execute @e[tag=part_pos:mfm] ~ ~2 ~ execute @e[tag=part_pos:mfa,x=-30000000,z=-30000000,dx=60000000,dz=60000000,dy=30000000] ~ ~ ~ tp ~ ~-2 ~
#7
execute @e[tag=part_pos:mfm] ~ ~1 ~ scoreboard players add @e[tag=part_pos:mfa,x=-30000000,z=-30000000,dx=60000000,dz=60000000,dy=30000000] part_pos:y 100
execute @e[tag=part_pos:mfm] ~ ~1 ~ execute @e[tag=part_pos:mfa,x=-30000000,z=-30000000,dx=60000000,dz=60000000,dy=30000000] ~ ~ ~ tp ~ ~-1 ~
#8
execute @e[tag=part_pos:mfm] ~ ~1 ~ scoreboard players add @e[tag=part_pos:mfa,x=-30000000,z=-30000000,dx=60000000,dz=60000000,dy=30000000] part_pos:y 100
execute @e[tag=part_pos:mfm] ~ ~1 ~ execute @e[tag=part_pos:mfa,x=-30000000,z=-30000000,dx=60000000,dz=60000000,dy=30000000] ~ ~ ~ tp ~ ~-1 ~
#9
execute @e[tag=part_pos:mfm] ~ ~ ~ tag @s add part_pos:mfa
#tag_set
execute @e[tag=part_pos:mfa,tag=!part_pos:mfm] ~ ~ ~ scoreboard players operation @s part_pos:save = @s part_pos:y
execute @e[tag=part_pos:mfa] ~ ~ ~ scoreboard players operation @s part_pos:save -= @s part_pos:y_fix
#scores_math
execute @e[tag=part_pos:mfa,scores={part_pos:save=..-1}] ~ ~ ~ tp ~ ~-256 ~
execute @e[tag=part_pos:mfa,scores={part_pos:save=..-1}] ~ ~ ~ scoreboard players add @s part_pos:save 25600
#facing
execute @e[tag=part_pos:mfa,scores={part_pos:save=12800..}] ~ ~ ~ tp ~ ~128 ~
execute @e[tag=part_pos:mfa,scores={part_pos:save=12800..}] ~ ~ ~ scoreboard players remove @s part_pos:save 12800
#1
execute @e[tag=part_pos:mfa,scores={part_pos:save=6400..}] ~ ~ ~ tp ~ ~64 ~
execute @e[tag=part_pos:mfa,scores={part_pos:save=6400..}] ~ ~ ~ scoreboard players remove @s part_pos:save 6400
#2
execute @e[tag=part_pos:mfa,scores={part_pos:save=3200..}] ~ ~ ~ tp ~ ~32 ~
execute @e[tag=part_pos:mfa,scores={part_pos:save=3200..}] ~ ~ ~ scoreboard players remove @s part_pos:save 3200
#3
execute @e[tag=part_pos:mfa,scores={part_pos:save=1600..}] ~ ~ ~ tp ~ ~16 ~
execute @e[tag=part_pos:mfa,scores={part_pos:save=1600..}] ~ ~ ~ scoreboard players remove @s part_pos:save 1600
#4
execute @e[tag=part_pos:mfa,scores={part_pos:save=800..}] ~ ~ ~ tp ~ ~8 ~
execute @e[tag=part_pos:mfa,scores={part_pos:save=800..}] ~ ~ ~ scoreboard players remove @s part_pos:save 800
#5
execute @e[tag=part_pos:mfa,scores={part_pos:save=400..}] ~ ~ ~ tp ~ ~4 ~
execute @e[tag=part_pos:mfa,scores={part_pos:save=400..}] ~ ~ ~ scoreboard players remove @s part_pos:save 400
#6
execute @e[tag=part_pos:mfa,scores={part_pos:save=200..}] ~ ~ ~ tp ~ ~2 ~
execute @e[tag=part_pos:mfa,scores={part_pos:save=200..}] ~ ~ ~ scoreboard players remove @s part_pos:save 200
#7
execute @e[tag=part_pos:mfa,scores={part_pos:save=100..}] ~ ~ ~ tp ~ ~1 ~
execute @e[tag=part_pos:mfa,scores={part_pos:save=100..}] ~ ~ ~ scoreboard players remove @s part_pos:save 100
#8
execute @e[tag=part_pos:mfa,scores={part_pos:save=100..}] ~ ~ ~ tp ~ ~1 ~
execute @e[tag=part_pos:mfa,scores={part_pos:save=100..}] ~ ~ ~ scoreboard players remove @s part_pos:save 100
#9
execute @e[tag=part_pos:mfa,scores={part_pos:save=80..}] ~ ~ ~ tp ~ ~0.8 ~
execute @e[tag=part_pos:mfa,scores={part_pos:save=80..}] ~ ~ ~ scoreboard players remove @s part_pos:save 80
#10
execute @e[tag=part_pos:mfa,scores={part_pos:save=40..}] ~ ~ ~ tp ~ ~0.4 ~
execute @e[tag=part_pos:mfa,scores={part_pos:save=40..}] ~ ~ ~ scoreboard players remove @s part_pos:save 40
#11
execute @e[tag=part_pos:mfa,scores={part_pos:save=20..}] ~ ~ ~ tp ~ ~0.2 ~
execute @e[tag=part_pos:mfa,scores={part_pos:save=20..}] ~ ~ ~ scoreboard players remove @s part_pos:save 20
#12
execute @e[tag=part_pos:mfa,scores={part_pos:save=10..}] ~ ~ ~ tp ~ ~0.1 ~
execute @e[tag=part_pos:mfa,scores={part_pos:save=10..}] ~ ~ ~ scoreboard players remove @s part_pos:save 10
#13
execute @e[tag=part_pos:mfa,scores={part_pos:save=8..}] ~ ~ ~ tp ~ ~0.08 ~
execute @e[tag=part_pos:mfa,scores={part_pos:save=8..}] ~ ~ ~ scoreboard players remove @s part_pos:save 8
#14
execute @e[tag=part_pos:mfa,scores={part_pos:save=4..}] ~ ~ ~ tp ~ ~0.04 ~
execute @e[tag=part_pos:mfa,scores={part_pos:save=4..}] ~ ~ ~ scoreboard players remove @s part_pos:save 4
#15
execute @e[tag=part_pos:mfa,scores={part_pos:save=2..}] ~ ~ ~ tp ~ ~0.02 ~
execute @e[tag=part_pos:mfa,scores={part_pos:save=2..}] ~ ~ ~ scoreboard players remove @s part_pos:save 2
#16
execute @e[tag=part_pos:mfa,scores={part_pos:save=1..}] ~ ~ ~ tp ~ ~0.01 ~
execute @e[tag=part_pos:mfa,scores={part_pos:save=1..}] ~ ~ ~ scoreboard players remove @s part_pos:save 1
#17
execute @e[tag=part_pos:mfa] ~ ~ ~ tp ~ ~-0.5 ~
execute @e[tag=part_pos:mfa,tag=part_pos:y_remove] ~ ~ ~ tp ~ ~-256.0 ~
execute @e[tag=part_pos:mfa,tag=!part_pos:mfm] ~ ~ ~ tp @e[tag=part_pos:sa,c=1,r=0.1]
#posy_return
execute @e[tag=part_pos:mfm] ~ ~ ~ tag @s remove part_pos:mfa
#tag_set
execute @e[tag=part_pos:mfa] ~ ~ ~ scoreboard players operation @s part_pos:y -= @s part_pos:y_fix
execute @e[tag=part_pos:mfa] ~ ~ ~ scoreboard players operation @s part_pos:y += @e[tag=part_pos:mfm] part_pos:y_fix
execute @e[tag=part_pos:mfa,tag=part_pos:y_remove] ~ ~ ~ scoreboard players remove @s part_pos:y 25600
#math
execute @e[tag=part_pos:another] ~ ~ ~ scoreboard players set @s part_pos:x -512000000
execute @e[tag=part_pos:another] ~ ~ ~ scoreboard players set @s part_pos:y -512000000
execute @e[tag=part_pos:another] ~ ~ ~ scoreboard players set @s part_pos:z -512000000
#scores_reset
execute @e[tag=part_pos:mfa] ~ ~ ~ scoreboard players operation @e[tag=part_pos:another,c=1,r=0.1,scores={part_pos:x=-512000000}] part_pos:x = @s part_pos:x
execute @e[tag=part_pos:mfa] ~ ~ ~ scoreboard players operation @e[tag=part_pos:another,c=1,r=0.1,scores={part_pos:y=-512000000}] part_pos:y = @s part_pos:y
execute @e[tag=part_pos:mfa] ~ ~ ~ scoreboard players operation @e[tag=part_pos:another,c=1,r=0.1,scores={part_pos:z=-512000000}] part_pos:z = @s part_pos:z
#scores_operation_=
execute @e[tag=part_pos:mfa] ~ ~ ~ scoreboard players reset @s
execute @e[tag=part_pos:mfa] ~ ~ ~ tp ~ -32767.0 ~
execute @e[tag=part_pos:mfa] ~ ~ ~ kill @s
execute @e[tag=part_pos:mfm] ~ ~ ~ tp ~ -32767.0 ~
execute @e[tag=part_pos:mfm] ~ ~ ~ kill @s
execute @e[tag=part_pos:sa] ~ ~ ~ tp ~ -32767.0 ~
execute @e[tag=part_pos:sa] ~ ~ ~ kill @s
#clean_entities
execute @e[tag=part_pos:another] ~ ~ ~ tellraw @a[tag=part_pos:master] {"rawtext":[{"text":"实体名称:"},{"selector":"@s"},{"text":", 其相对于你的坐标是:("},{"score":{"objective":"part_pos:x","name":"@s"}},{"text":","},{"score":{"objective":"part_pos:y","name":"@s"}},{"text":","},{"score":{"objective":"part_pos:z","name":"@s"}},{"text":")"}]}
#send_message
tag @s remove part_pos:master
=======
scoreboard objectives add part_pos:x_fix dummy
scoreboard objectives add part_pos:y_fix dummy
scoreboard objectives add part_pos:z_fix dummy
scoreboard objectives add part_pos:x dummy
scoreboard objectives add part_pos:y dummy
scoreboard objectives add part_pos:z dummy
scoreboard objectives add part_pos:save dummy
#scoreboard_add
tag @s add part_pos:master
#tag_set
execute @e[tag=part_pos:another] ~ ~ ~ summon minecraft:armor_stand part_pos:mark_for_another
execute @e[tag=part_pos:another] ~ ~ ~ tag @e[name=part_pos:mark_for_another,type=minecraft:armor_stand,c=1,tag=!part_pos:mfa,dx=0] add part_pos:mfa
execute @e[tag=part_pos:another] ~ ~ ~ summon minecraft:armor_stand part_pos:stand_another
execute @e[tag=part_pos:another] ~ ~ ~ tag @e[name=part_pos:stand_another,type=minecraft:armor_stand,c=1,tag=!part_pos:mfa,dx=0] add part_pos:sa
execute @s ~ ~ ~ summon minecraft:armor_stand part_pos:mark_for_master
execute @s ~ ~ ~ tag @e[name=part_pos:mark_for_master,c=1,dx=0,type=minecraft:armor_stand] add part_pos:mfm
execute @s ~ ~ ~ tag @e[name=part_pos:mark_for_master,c=1,dx=0,type=minecraft:armor_stand] add part_pos:mfa
#summon_entities_and_tag_set
execute @e[tag=part_pos:mfa] ~ ~ ~ scoreboard players add @s part_pos:x_fix 0
execute @e[tag=part_pos:mfa] ~ ~ ~ scoreboard players add @s part_pos:y_fix 0
execute @e[tag=part_pos:mfa] ~ ~ ~ scoreboard players add @s part_pos:z_fix 0
execute @e[tag=part_pos:mfa] ~ ~ ~ scoreboard players add @s part_pos:x 0
execute @e[tag=part_pos:mfa] ~ ~ ~ scoreboard players add @s part_pos:y 0
execute @e[tag=part_pos:mfa] ~ ~ ~ scoreboard players add @s part_pos:z 0
#scores_set
execute @e[tag=part_pos:mfa] ~0.8 ~ ~ execute @s[dx=0] ~ ~ ~ scoreboard players add @s part_pos:x_fix 80
execute @e[tag=part_pos:mfa] ~0.8 ~ ~ execute @s[dx=0] ~ ~ ~ tp ~0.8 ~ ~
#1
execute @e[tag=part_pos:mfa] ~0.4 ~ ~ execute @s[dx=0] ~ ~ ~ scoreboard players add @s part_pos:x_fix 40
execute @e[tag=part_pos:mfa] ~0.4 ~ ~ execute @s[dx=0] ~ ~ ~ tp ~0.4 ~ ~
#2
execute @e[tag=part_pos:mfa] ~0.2 ~ ~ execute @s[dx=0] ~ ~ ~ scoreboard players add @s part_pos:x_fix 20
execute @e[tag=part_pos:mfa] ~0.2 ~ ~ execute @s[dx=0] ~ ~ ~ tp ~0.2 ~ ~
#3
execute @e[tag=part_pos:mfa] ~0.1 ~ ~ execute @s[dx=0] ~ ~ ~ scoreboard players add @s part_pos:x_fix 10
execute @e[tag=part_pos:mfa] ~0.1 ~ ~ execute @s[dx=0] ~ ~ ~ tp ~0.1 ~ ~
#4
execute @e[tag=part_pos:mfa] ~0.08 ~ ~ execute @s[dx=0] ~ ~ ~ scoreboard players add @s part_pos:x_fix 8
execute @e[tag=part_pos:mfa] ~0.08 ~ ~ execute @s[dx=0] ~ ~ ~ tp ~0.08 ~ ~
#5
execute @e[tag=part_pos:mfa] ~0.04 ~ ~ execute @s[dx=0] ~ ~ ~ scoreboard players add @s part_pos:x_fix 4
execute @e[tag=part_pos:mfa] ~0.04 ~ ~ execute @s[dx=0] ~ ~ ~ tp ~0.04 ~ ~
#6
execute @e[tag=part_pos:mfa] ~0.02 ~ ~ execute @s[dx=0] ~ ~ ~ scoreboard players add @s part_pos:x_fix 2
execute @e[tag=part_pos:mfa] ~0.02 ~ ~ execute @s[dx=0] ~ ~ ~ tp ~0.02 ~ ~
#7
execute @e[tag=part_pos:mfa] ~0.01 ~ ~ execute @s[dx=0] ~ ~ ~ scoreboard players add @s part_pos:x_fix 1
execute @e[tag=part_pos:mfa] ~0.01 ~ ~ execute @s[dx=0] ~ ~ ~ tp ~0.01 ~ ~
#8
execute @e[tag=part_pos:mfa] ~ ~ ~ tp ~0.5 ~ ~
#9
execute @e[tag=part_pos:mfm] ~ ~ ~ tag @s remove part_pos:mfa
execute @e[tag=part_pos:mfm] ~ ~ ~ tag @e[tag=part_pos:mfa,y=-30000000,z=-30000000,dy=60000000,dz=60000000,dx=-30000000,x=~-1] add part_pos:x_remove
execute @e[tag=part_pos:x_remove] ~ ~ ~ tp ~256.0 ~ ~
#pos_fix_to_+
execute @e[tag=part_pos:mfa] ~ ~ ~ tp ~ ~ ~ facing ~-1 ~ ~
#facing
execute @e[tag=part_pos:mfm] ~128 ~ ~ scoreboard players add @e[tag=part_pos:mfa,y=-30000000,z=-30000000,dy=60000000,dz=60000000,dx=30000000] part_pos:x 12800
execute @e[tag=part_pos:mfm] ~128 ~ ~ execute @e[tag=part_pos:mfa,y=-30000000,z=-30000000,dy=60000000,dz=60000000,dx=30000000] ~ ~ ~ tp ^ ^ ^128
#1
execute @e[tag=part_pos:mfm] ~64 ~ ~ scoreboard players add @e[tag=part_pos:mfa,y=-30000000,z=-30000000,dy=60000000,dz=60000000,dx=30000000] part_pos:x 6400
execute @e[tag=part_pos:mfm] ~64 ~ ~ execute @e[tag=part_pos:mfa,y=-30000000,z=-30000000,dy=60000000,dz=60000000,dx=30000000] ~ ~ ~ tp ^ ^ ^64
#2
execute @e[tag=part_pos:mfm] ~32 ~ ~ scoreboard players add @e[tag=part_pos:mfa,y=-30000000,z=-30000000,dy=60000000,dz=60000000,dx=30000000] part_pos:x 3200
execute @e[tag=part_pos:mfm] ~32 ~ ~ execute @e[tag=part_pos:mfa,y=-30000000,z=-30000000,dy=60000000,dz=60000000,dx=30000000] ~ ~ ~ tp ^ ^ ^32
#3
execute @e[tag=part_pos:mfm] ~16 ~ ~ scoreboard players add @e[tag=part_pos:mfa,y=-30000000,z=-30000000,dy=60000000,dz=60000000,dx=30000000] part_pos:x 1600
execute @e[tag=part_pos:mfm] ~16 ~ ~ execute @e[tag=part_pos:mfa,y=-30000000,z=-30000000,dy=60000000,dz=60000000,dx=30000000] ~ ~ ~ tp ^ ^ ^16
#4
execute @e[tag=part_pos:mfm] ~8 ~ ~ scoreboard players add @e[tag=part_pos:mfa,y=-30000000,z=-30000000,dy=60000000,dz=60000000,dx=30000000] part_pos:x 800
execute @e[tag=part_pos:mfm] ~8 ~ ~ execute @e[tag=part_pos:mfa,y=-30000000,z=-30000000,dy=60000000,dz=60000000,dx=30000000] ~ ~ ~ tp ^ ^ ^8
#5
execute @e[tag=part_pos:mfm] ~4 ~ ~ scoreboard players add @e[tag=part_pos:mfa,y=-30000000,z=-30000000,dy=60000000,dz=60000000,dx=30000000] part_pos:x 400
execute @e[tag=part_pos:mfm] ~4 ~ ~ execute @e[tag=part_pos:mfa,y=-30000000,z=-30000000,dy=60000000,dz=60000000,dx=30000000] ~ ~ ~ tp ^ ^ ^4
#6
execute @e[tag=part_pos:mfm] ~2 ~ ~ scoreboard players add @e[tag=part_pos:mfa,y=-30000000,z=-30000000,dy=60000000,dz=60000000,dx=30000000] part_pos:x 200
execute @e[tag=part_pos:mfm] ~2 ~ ~ execute @e[tag=part_pos:mfa,y=-30000000,z=-30000000,dy=60000000,dz=60000000,dx=30000000] ~ ~ ~ tp ^ ^ ^2
#7
execute @e[tag=part_pos:mfm] ~1 ~ ~ scoreboard players add @e[tag=part_pos:mfa,y=-30000000,z=-30000000,dy=60000000,dz=60000000,dx=30000000] part_pos:x 100
execute @e[tag=part_pos:mfm] ~1 ~ ~ execute @e[tag=part_pos:mfa,y=-30000000,z=-30000000,dy=60000000,dz=60000000,dx=30000000] ~ ~ ~ tp ^ ^ ^1
#8
execute @e[tag=part_pos:mfm] ~1 ~ ~ scoreboard players add @e[tag=part_pos:mfa,y=-30000000,z=-30000000,dy=60000000,dz=60000000,dx=30000000] part_pos:x 100
execute @e[tag=part_pos:mfm] ~1 ~ ~ execute @e[tag=part_pos:mfa,y=-30000000,z=-30000000,dy=60000000,dz=60000000,dx=30000000] ~ ~ ~ tp ^ ^ ^1
#9
execute @e[tag=part_pos:mfm] ~ ~ ~ tag @s add part_pos:mfa
#tag_set
execute @e[tag=part_pos:mfa,tag=!part_pos:mfm] ~ ~ ~ scoreboard players operation @s part_pos:save = @s part_pos:x
execute @e[tag=part_pos:mfa] ~ ~ ~ scoreboard players operation @s part_pos:save -= @s part_pos:x_fix
#scores_math
execute @e[tag=part_pos:mfa,scores={part_pos:save=0..}] ~ ~ ~ tp ~ ~ ~ facing ~1 ~ ~
execute @e[tag=part_pos:mfa,scores={part_pos:save=..-1}] ~ ~ ~ tp ~ ~ ~ facing ~-1 ~ ~
execute @e[tag=part_pos:mfa,scores={part_pos:save=..-1}] ~ ~ ~ scoreboard players set fu part_pos:save -1
execute @e[tag=part_pos:mfa,scores={part_pos:save=..-1}] ~ ~ ~ scoreboard players operation @s part_pos:save *= fu part_pos:save
#facing
execute @e[tag=part_pos:mfa,scores={part_pos:save=12800..}] ~ ~ ~ tp ^ ^ ^128
execute @e[tag=part_pos:mfa,scores={part_pos:save=12800..}] ~ ~ ~ scoreboard players remove @s part_pos:save 12800
#1
execute @e[tag=part_pos:mfa,scores={part_pos:save=6400..}] ~ ~ ~ tp ^ ^ ^64
execute @e[tag=part_pos:mfa,scores={part_pos:save=6400..}] ~ ~ ~ scoreboard players remove @s part_pos:save 6400
#2
execute @e[tag=part_pos:mfa,scores={part_pos:save=3200..}] ~ ~ ~ tp ^ ^ ^32
execute @e[tag=part_pos:mfa,scores={part_pos:save=3200..}] ~ ~ ~ scoreboard players remove @s part_pos:save 3200
#3
execute @e[tag=part_pos:mfa,scores={part_pos:save=1600..}] ~ ~ ~ tp ^ ^ ^16
execute @e[tag=part_pos:mfa,scores={part_pos:save=1600..}] ~ ~ ~ scoreboard players remove @s part_pos:save 1600
#4
execute @e[tag=part_pos:mfa,scores={part_pos:save=800..}] ~ ~ ~ tp ^ ^ ^8
execute @e[tag=part_pos:mfa,scores={part_pos:save=800..}] ~ ~ ~ scoreboard players remove @s part_pos:save 800
#5
execute @e[tag=part_pos:mfa,scores={part_pos:save=400..}] ~ ~ ~ tp ^ ^ ^4
execute @e[tag=part_pos:mfa,scores={part_pos:save=400..}] ~ ~ ~ scoreboard players remove @s part_pos:save 400
#6
execute @e[tag=part_pos:mfa,scores={part_pos:save=200..}] ~ ~ ~ tp ^ ^ ^2
execute @e[tag=part_pos:mfa,scores={part_pos:save=200..}] ~ ~ ~ scoreboard players remove @s part_pos:save 200
#7
execute @e[tag=part_pos:mfa,scores={part_pos:save=100..}] ~ ~ ~ tp ^ ^ ^1
execute @e[tag=part_pos:mfa,scores={part_pos:save=100..}] ~ ~ ~ scoreboard players remove @s part_pos:save 100
#8
execute @e[tag=part_pos:mfa,scores={part_pos:save=100..}] ~ ~ ~ tp ^ ^ ^1
execute @e[tag=part_pos:mfa,scores={part_pos:save=100..}] ~ ~ ~ scoreboard players remove @s part_pos:save 100
#9
execute @e[tag=part_pos:mfa,scores={part_pos:save=80..}] ~ ~ ~ tp ^ ^ ^0.8
execute @e[tag=part_pos:mfa,scores={part_pos:save=80..}] ~ ~ ~ scoreboard players remove @s part_pos:save 80
#10
execute @e[tag=part_pos:mfa,scores={part_pos:save=40..}] ~ ~ ~ tp ^ ^ ^0.4
execute @e[tag=part_pos:mfa,scores={part_pos:save=40..}] ~ ~ ~ scoreboard players remove @s part_pos:save 40
#11
execute @e[tag=part_pos:mfa,scores={part_pos:save=20..}] ~ ~ ~ tp ^ ^ ^0.2
execute @e[tag=part_pos:mfa,scores={part_pos:save=20..}] ~ ~ ~ scoreboard players remove @s part_pos:save 20
#12
execute @e[tag=part_pos:mfa,scores={part_pos:save=10..}] ~ ~ ~ tp ^ ^ ^0.1
execute @e[tag=part_pos:mfa,scores={part_pos:save=10..}] ~ ~ ~ scoreboard players remove @s part_pos:save 10
#13
execute @e[tag=part_pos:mfa,scores={part_pos:save=8..}] ~ ~ ~ tp ^ ^ ^0.08
execute @e[tag=part_pos:mfa,scores={part_pos:save=8..}] ~ ~ ~ scoreboard players remove @s part_pos:save 8
#14
execute @e[tag=part_pos:mfa,scores={part_pos:save=4..}] ~ ~ ~ tp ^ ^ ^0.04
execute @e[tag=part_pos:mfa,scores={part_pos:save=4..}] ~ ~ ~ scoreboard players remove @s part_pos:save 4
#15
execute @e[tag=part_pos:mfa,scores={part_pos:save=2..}] ~ ~ ~ tp ^ ^ ^0.02
execute @e[tag=part_pos:mfa,scores={part_pos:save=2..}] ~ ~ ~ scoreboard players remove @s part_pos:save 2
#16
execute @e[tag=part_pos:mfa,scores={part_pos:save=1..}] ~ ~ ~ tp ^ ^ ^0.01
execute @e[tag=part_pos:mfa,scores={part_pos:save=1..}] ~ ~ ~ scoreboard players remove @s part_pos:save 1
#17
execute @e[tag=part_pos:mfa] ~ ~ ~ tp ~-0.5 ~ ~
execute @e[tag=part_pos:mfa,tag=part_pos:x_remove] ~ ~ ~ tp ~-256.0 ~ ~
execute @e[tag=part_pos:mfa,tag=!part_pos:mfm] ~ ~ ~ tp @e[tag=part_pos:sa,c=1,r=0.1]
#posx_return
execute @e[tag=part_pos:mfm] ~ ~ ~ tag @s remove part_pos:mfa
#tag_set
execute @e[tag=part_pos:mfa] ~ ~ ~ scoreboard players operation @s part_pos:x -= @s part_pos:x_fix
execute @e[tag=part_pos:mfa] ~ ~ ~ scoreboard players operation @s part_pos:x += @e[tag=part_pos:mfm] part_pos:x_fix
execute @e[tag=part_pos:mfa,tag=part_pos:x_remove] ~ ~ ~ scoreboard players remove @s part_pos:x 25600
#math
execute @e[tag=part_pos:mfm] ~ ~ ~ tag @s add part_pos:mfa
#tag_set
execute @e[tag=part_pos:mfa] ~ ~ ~0.8 execute @s[dx=0] ~ ~ ~ scoreboard players add @s part_pos:z_fix 80
execute @e[tag=part_pos:mfa] ~ ~ ~0.8 execute @s[dx=0] ~ ~ ~ tp ~ ~ ~0.8
#1
execute @e[tag=part_pos:mfa] ~ ~ ~0.4 execute @s[dx=0] ~ ~ ~ scoreboard players add @s part_pos:z_fix 40
execute @e[tag=part_pos:mfa] ~ ~ ~0.4 execute @s[dx=0] ~ ~ ~ tp ~ ~ ~0.4
#2
execute @e[tag=part_pos:mfa] ~ ~ ~0.2 execute @s[dx=0] ~ ~ ~ scoreboard players add @s part_pos:z_fix 20
execute @e[tag=part_pos:mfa] ~ ~ ~0.2 execute @s[dx=0] ~ ~ ~ tp ~ ~ ~0.2
#3
execute @e[tag=part_pos:mfa] ~ ~ ~0.1 execute @s[dx=0] ~ ~ ~ scoreboard players add @s part_pos:z_fix 10
execute @e[tag=part_pos:mfa] ~ ~ ~0.1 execute @s[dx=0] ~ ~ ~ tp ~ ~ ~0.1
#4
execute @e[tag=part_pos:mfa] ~ ~ ~0.08 execute @s[dx=0] ~ ~ ~ scoreboard players add @s part_pos:z_fix 8
execute @e[tag=part_pos:mfa] ~ ~ ~0.08 execute @s[dx=0] ~ ~ ~ tp ~ ~ ~0.08
#5
execute @e[tag=part_pos:mfa] ~ ~ ~0.04 execute @s[dx=0] ~ ~ ~ scoreboard players add @s part_pos:z_fix 4
execute @e[tag=part_pos:mfa] ~ ~ ~0.04 execute @s[dx=0] ~ ~ ~ tp ~ ~ ~0.04
#6
execute @e[tag=part_pos:mfa] ~ ~ ~0.02 execute @s[dx=0] ~ ~ ~ scoreboard players add @s part_pos:z_fix 2
execute @e[tag=part_pos:mfa] ~ ~ ~0.02 execute @s[dx=0] ~ ~ ~ tp ~ ~ ~0.02
#7
execute @e[tag=part_pos:mfa] ~ ~ ~0.01 execute @s[dx=0] ~ ~ ~ scoreboard players add @s part_pos:z_fix 1
execute @e[tag=part_pos:mfa] ~ ~ ~0.01 execute @s[dx=0] ~ ~ ~ tp ~ ~ ~0.01
#8
execute @e[tag=part_pos:mfa] ~ ~ ~ tp ~ ~ ~0.5
#9
execute @e[tag=part_pos:mfm] ~ ~ ~ tag @s remove part_pos:mfa
execute @e[tag=part_pos:mfm] ~ ~ ~ tag @e[tag=part_pos:mfa,y=-30000000,x=-30000000,dy=60000000,dx=60000000,dz=-30000000,z=~-1] add part_pos:z_remove
execute @e[tag=part_pos:z_remove] ~ ~ ~ tp ~ ~ ~256.0
#pos_fix_to_+
execute @e[tag=part_pos:mfa] ~ ~ ~ tp ~ ~ ~ facing ~ ~ ~-1
#facing
execute @e[tag=part_pos:mfm] ~ ~ ~128 scoreboard players add @e[tag=part_pos:mfa,y=-30000000,x=-30000000,dy=60000000,dx=60000000,dz=30000000] part_pos:z 12800
execute @e[tag=part_pos:mfm] ~ ~ ~128 execute @e[tag=part_pos:mfa,y=-30000000,x=-30000000,dy=60000000,dx=60000000,dz=30000000] ~ ~ ~ tp ^ ^ ^128
#1
execute @e[tag=part_pos:mfm] ~ ~ ~64 scoreboard players add @e[tag=part_pos:mfa,y=-30000000,x=-30000000,dy=60000000,dx=60000000,dz=30000000] part_pos:z 6400
execute @e[tag=part_pos:mfm] ~ ~ ~64 execute @e[tag=part_pos:mfa,y=-30000000,x=-30000000,dy=60000000,dx=60000000,dz=30000000] ~ ~ ~ tp ^ ^ ^64
#2
execute @e[tag=part_pos:mfm] ~ ~ ~32 scoreboard players add @e[tag=part_pos:mfa,y=-30000000,x=-30000000,dy=60000000,dx=60000000,dz=30000000] part_pos:z 3200
execute @e[tag=part_pos:mfm] ~ ~ ~32 execute @e[tag=part_pos:mfa,y=-30000000,x=-30000000,dy=60000000,dx=60000000,dz=30000000] ~ ~ ~ tp ^ ^ ^32
#3
execute @e[tag=part_pos:mfm] ~ ~ ~16 scoreboard players add @e[tag=part_pos:mfa,y=-30000000,x=-30000000,dy=60000000,dx=60000000,dz=30000000] part_pos:z 1600
execute @e[tag=part_pos:mfm] ~ ~ ~16 execute @e[tag=part_pos:mfa,y=-30000000,x=-30000000,dy=60000000,dx=60000000,dz=30000000] ~ ~ ~ tp ^ ^ ^16
#4
execute @e[tag=part_pos:mfm] ~ ~ ~8 scoreboard players add @e[tag=part_pos:mfa,y=-30000000,x=-30000000,dy=60000000,dx=60000000,dz=30000000] part_pos:z 800
execute @e[tag=part_pos:mfm] ~ ~ ~8 execute @e[tag=part_pos:mfa,y=-30000000,x=-30000000,dy=60000000,dx=60000000,dz=30000000] ~ ~ ~ tp ^ ^ ^8
#5
execute @e[tag=part_pos:mfm] ~ ~ ~4 scoreboard players add @e[tag=part_pos:mfa,y=-30000000,x=-30000000,dy=60000000,dx=60000000,dz=30000000] part_pos:z 400
execute @e[tag=part_pos:mfm] ~ ~ ~4 execute @e[tag=part_pos:mfa,y=-30000000,x=-30000000,dy=60000000,dx=60000000,dz=30000000] ~ ~ ~ tp ^ ^ ^4
#6
execute @e[tag=part_pos:mfm] ~ ~ ~2 scoreboard players add @e[tag=part_pos:mfa,y=-30000000,x=-30000000,dy=60000000,dx=60000000,dz=30000000] part_pos:z 200
execute @e[tag=part_pos:mfm] ~ ~ ~2 execute @e[tag=part_pos:mfa,y=-30000000,x=-30000000,dy=60000000,dx=60000000,dz=30000000] ~ ~ ~ tp ^ ^ ^2
#7
execute @e[tag=part_pos:mfm] ~ ~ ~1 scoreboard players add @e[tag=part_pos:mfa,y=-30000000,x=-30000000,dy=60000000,dx=60000000,dz=30000000] part_pos:z 100
execute @e[tag=part_pos:mfm] ~ ~ ~1 execute @e[tag=part_pos:mfa,y=-30000000,x=-30000000,dy=60000000,dx=60000000,dz=30000000] ~ ~ ~ tp ^ ^ ^1
#8
execute @e[tag=part_pos:mfm] ~ ~ ~1 scoreboard players add @e[tag=part_pos:mfa,y=-30000000,x=-30000000,dy=60000000,dx=60000000,dz=30000000] part_pos:z 100
execute @e[tag=part_pos:mfm] ~ ~ ~1 execute @e[tag=part_pos:mfa,y=-30000000,x=-30000000,dy=60000000,dx=60000000,dz=30000000] ~ ~ ~ tp ^ ^ ^1
#9
execute @e[tag=part_pos:mfm] ~ ~ ~ tag @s add part_pos:mfa
#tag_set
execute @e[tag=part_pos:mfa,tag=!part_pos:mfm] ~ ~ ~ scoreboard players operation @s part_pos:save = @s part_pos:z
execute @e[tag=part_pos:mfa] ~ ~ ~ scoreboard players operation @s part_pos:save -= @s part_pos:z_fix
#scores_math
execute @e[tag=part_pos:mfa,scores={part_pos:save=0..}] ~ ~ ~ tp ~ ~ ~ facing ~ ~ ~1
execute @e[tag=part_pos:mfa,scores={part_pos:save=..-1}] ~ ~ ~ tp ~ ~ ~ facing ~ ~ ~-1
execute @e[tag=part_pos:mfa,scores={part_pos:save=..-1}] ~ ~ ~ scoreboard players set fu part_pos:save -1
execute @e[tag=part_pos:mfa,scores={part_pos:save=..-1}] ~ ~ ~ scoreboard players operation @s part_pos:save *= fu part_pos:save
#facing
execute @e[tag=part_pos:mfa,scores={part_pos:save=12800..}] ~ ~ ~ tp ^ ^ ^128
execute @e[tag=part_pos:mfa,scores={part_pos:save=12800..}] ~ ~ ~ scoreboard players remove @s part_pos:save 12800
#1
execute @e[tag=part_pos:mfa,scores={part_pos:save=6400..}] ~ ~ ~ tp ^ ^ ^64
execute @e[tag=part_pos:mfa,scores={part_pos:save=6400..}] ~ ~ ~ scoreboard players remove @s part_pos:save 6400
#2
execute @e[tag=part_pos:mfa,scores={part_pos:save=3200..}] ~ ~ ~ tp ^ ^ ^32
execute @e[tag=part_pos:mfa,scores={part_pos:save=3200..}] ~ ~ ~ scoreboard players remove @s part_pos:save 3200
#3
execute @e[tag=part_pos:mfa,scores={part_pos:save=1600..}] ~ ~ ~ tp ^ ^ ^16
execute @e[tag=part_pos:mfa,scores={part_pos:save=1600..}] ~ ~ ~ scoreboard players remove @s part_pos:save 1600
#4
execute @e[tag=part_pos:mfa,scores={part_pos:save=800..}] ~ ~ ~ tp ^ ^ ^8
execute @e[tag=part_pos:mfa,scores={part_pos:save=800..}] ~ ~ ~ scoreboard players remove @s part_pos:save 800
#5
execute @e[tag=part_pos:mfa,scores={part_pos:save=400..}] ~ ~ ~ tp ^ ^ ^4
execute @e[tag=part_pos:mfa,scores={part_pos:save=400..}] ~ ~ ~ scoreboard players remove @s part_pos:save 400
#6
execute @e[tag=part_pos:mfa,scores={part_pos:save=200..}] ~ ~ ~ tp ^ ^ ^2
execute @e[tag=part_pos:mfa,scores={part_pos:save=200..}] ~ ~ ~ scoreboard players remove @s part_pos:save 200
#7
execute @e[tag=part_pos:mfa,scores={part_pos:save=100..}] ~ ~ ~ tp ^ ^ ^1
execute @e[tag=part_pos:mfa,scores={part_pos:save=100..}] ~ ~ ~ scoreboard players remove @s part_pos:save 100
#8
execute @e[tag=part_pos:mfa,scores={part_pos:save=100..}] ~ ~ ~ tp ^ ^ ^1
execute @e[tag=part_pos:mfa,scores={part_pos:save=100..}] ~ ~ ~ scoreboard players remove @s part_pos:save 100
#9
execute @e[tag=part_pos:mfa,scores={part_pos:save=80..}] ~ ~ ~ tp ^ ^ ^0.8
execute @e[tag=part_pos:mfa,scores={part_pos:save=80..}] ~ ~ ~ scoreboard players remove @s part_pos:save 80
#10
execute @e[tag=part_pos:mfa,scores={part_pos:save=40..}] ~ ~ ~ tp ^ ^ ^0.4
execute @e[tag=part_pos:mfa,scores={part_pos:save=40..}] ~ ~ ~ scoreboard players remove @s part_pos:save 40
#11
execute @e[tag=part_pos:mfa,scores={part_pos:save=20..}] ~ ~ ~ tp ^ ^ ^0.2
execute @e[tag=part_pos:mfa,scores={part_pos:save=20..}] ~ ~ ~ scoreboard players remove @s part_pos:save 20
#12
execute @e[tag=part_pos:mfa,scores={part_pos:save=10..}] ~ ~ ~ tp ^ ^ ^0.1
execute @e[tag=part_pos:mfa,scores={part_pos:save=10..}] ~ ~ ~ scoreboard players remove @s part_pos:save 10
#13
execute @e[tag=part_pos:mfa,scores={part_pos:save=8..}] ~ ~ ~ tp ^ ^ ^0.08
execute @e[tag=part_pos:mfa,scores={part_pos:save=8..}] ~ ~ ~ scoreboard players remove @s part_pos:save 8
#14
execute @e[tag=part_pos:mfa,scores={part_pos:save=4..}] ~ ~ ~ tp ^ ^ ^0.04
execute @e[tag=part_pos:mfa,scores={part_pos:save=4..}] ~ ~ ~ scoreboard players remove @s part_pos:save 4
#15
execute @e[tag=part_pos:mfa,scores={part_pos:save=2..}] ~ ~ ~ tp ^ ^ ^0.02
execute @e[tag=part_pos:mfa,scores={part_pos:save=2..}] ~ ~ ~ scoreboard players remove @s part_pos:save 2
#16
execute @e[tag=part_pos:mfa,scores={part_pos:save=1..}] ~ ~ ~ tp ^ ^ ^0.01
execute @e[tag=part_pos:mfa,scores={part_pos:save=1..}] ~ ~ ~ scoreboard players remove @s part_pos:save 1
#17
execute @e[tag=part_pos:mfa] ~ ~ ~ tp ~ ~ ~-0.5
execute @e[tag=part_pos:mfa,tag=part_pos:z_remove] ~ ~ ~ tp ~ ~ ~-256.0
execute @e[tag=part_pos:mfa,tag=!part_pos:mfm] ~ ~ ~ tp @e[tag=part_pos:sa,c=1,r=0.1]
#posz_return
execute @e[tag=part_pos:mfm] ~ ~ ~ tag @s remove part_pos:mfa
#tag_set
execute @e[tag=part_pos:mfa] ~ ~ ~ scoreboard players operation @s part_pos:z -= @s part_pos:z_fix
execute @e[tag=part_pos:mfa] ~ ~ ~ scoreboard players operation @s part_pos:z += @e[tag=part_pos:mfm] part_pos:z_fix
execute @e[tag=part_pos:mfa,tag=part_pos:z_remove] ~ ~ ~ scoreboard players remove @s part_pos:z 25600
#math
execute @e[tag=part_pos:mfm] ~ ~ ~ tag @s add part_pos:mfa
#tag_set
execute @e[tag=part_pos:mfa] ~ ~0.8 ~ execute @s[dx=0] ~ ~ ~ scoreboard players add @s part_pos:y_fix 80
execute @e[tag=part_pos:mfa] ~ ~0.8 ~ execute @s[dx=0] ~ ~ ~ tp ~ ~0.8 ~
#1
execute @e[tag=part_pos:mfa] ~ ~0.4 ~ execute @s[dx=0] ~ ~ ~ scoreboard players add @s part_pos:y_fix 40
execute @e[tag=part_pos:mfa] ~ ~0.4 ~ execute @s[dx=0] ~ ~ ~ tp ~ ~0.4 ~
#2
execute @e[tag=part_pos:mfa] ~ ~0.2 ~ execute @s[dx=0] ~ ~ ~ scoreboard players add @s part_pos:y_fix 20
execute @e[tag=part_pos:mfa] ~ ~0.2 ~ execute @s[dx=0] ~ ~ ~ tp ~ ~0.2 ~
#3
execute @e[tag=part_pos:mfa] ~ ~0.1 ~ execute @s[dx=0] ~ ~ ~ scoreboard players add @s part_pos:y_fix 10
execute @e[tag=part_pos:mfa] ~ ~0.1 ~ execute @s[dx=0] ~ ~ ~ tp ~ ~0.1 ~
#4
execute @e[tag=part_pos:mfa] ~ ~0.08 ~ execute @s[dx=0] ~ ~ ~ scoreboard players add @s part_pos:y_fix 8
execute @e[tag=part_pos:mfa] ~ ~0.08 ~ execute @s[dx=0] ~ ~ ~ tp ~ ~0.08 ~
#5
execute @e[tag=part_pos:mfa] ~ ~0.04 ~ execute @s[dx=0] ~ ~ ~ scoreboard players add @s part_pos:y_fix 4
execute @e[tag=part_pos:mfa] ~ ~0.04 ~ execute @s[dx=0] ~ ~ ~ tp ~ ~0.04 ~
#6
execute @e[tag=part_pos:mfa] ~ ~0.02 ~ execute @s[dx=0] ~ ~ ~ scoreboard players add @s part_pos:y_fix 2
execute @e[tag=part_pos:mfa] ~ ~0.02 ~ execute @s[dx=0] ~ ~ ~ tp ~ ~0.02 ~
#7
execute @e[tag=part_pos:mfa] ~ ~0.01 ~ execute @s[dx=0] ~ ~ ~ scoreboard players add @s part_pos:y_fix 1
execute @e[tag=part_pos:mfa] ~ ~0.01 ~ execute @s[dx=0] ~ ~ ~ tp ~ ~0.01 ~
#8
execute @e[tag=part_pos:mfa] ~ ~ ~ tp ~ ~0.5 ~
#9
execute @e[tag=part_pos:mfm] ~ ~ ~ tag @s remove part_pos:mfa
execute @e[tag=part_pos:mfm] ~ ~ ~ tag @e[tag=part_pos:mfa,x=-30000000,z=-30000000,dx=60000000,dz=60000000,dy=-30000000,y=~-1] add part_pos:y_remove
execute @e[tag=part_pos:y_remove] ~ ~ ~ tp ~ ~256.0 ~
#pos_fix_to_+
execute @e[tag=part_pos:mfm] ~ ~128 ~ scoreboard players add @e[tag=part_pos:mfa,x=-30000000,z=-30000000,dx=60000000,dz=60000000,dy=30000000] part_pos:y 12800
execute @e[tag=part_pos:mfm] ~ ~128 ~ execute @e[tag=part_pos:mfa,x=-30000000,z=-30000000,dx=60000000,dz=60000000,dy=30000000] ~ ~ ~ tp ~ ~-128 ~
#1
execute @e[tag=part_pos:mfm] ~ ~64 ~ scoreboard players add @e[tag=part_pos:mfa,x=-30000000,z=-30000000,dx=60000000,dz=60000000,dy=30000000] part_pos:y 6400
execute @e[tag=part_pos:mfm] ~ ~64 ~ execute @e[tag=part_pos:mfa,x=-30000000,z=-30000000,dx=60000000,dz=60000000,dy=30000000] ~ ~ ~ tp ~ ~-64 ~
#2
execute @e[tag=part_pos:mfm] ~ ~32 ~ scoreboard players add @e[tag=part_pos:mfa,x=-30000000,z=-30000000,dx=60000000,dz=60000000,dy=30000000] part_pos:y 3200
execute @e[tag=part_pos:mfm] ~ ~32 ~ execute @e[tag=part_pos:mfa,x=-30000000,z=-30000000,dx=60000000,dz=60000000,dy=30000000] ~ ~ ~ tp ~ ~-32 ~
#3
execute @e[tag=part_pos:mfm] ~ ~16 ~ scoreboard players add @e[tag=part_pos:mfa,x=-30000000,z=-30000000,dx=60000000,dz=60000000,dy=30000000] part_pos:y 1600
execute @e[tag=part_pos:mfm] ~ ~16 ~ execute @e[tag=part_pos:mfa,x=-30000000,z=-30000000,dx=60000000,dz=60000000,dy=30000000] ~ ~ ~ tp ~ ~-16 ~
#4
execute @e[tag=part_pos:mfm] ~ ~8 ~ scoreboard players add @e[tag=part_pos:mfa,x=-30000000,z=-30000000,dx=60000000,dz=60000000,dy=30000000] part_pos:y 800
execute @e[tag=part_pos:mfm] ~ ~8 ~ execute @e[tag=part_pos:mfa,x=-30000000,z=-30000000,dx=60000000,dz=60000000,dy=30000000] ~ ~ ~ tp ~ ~-8 ~
#5
execute @e[tag=part_pos:mfm] ~ ~4 ~ scoreboard players add @e[tag=part_pos:mfa,x=-30000000,z=-30000000,dx=60000000,dz=60000000,dy=30000000] part_pos:y 400
execute @e[tag=part_pos:mfm] ~ ~4 ~ execute @e[tag=part_pos:mfa,x=-30000000,z=-30000000,dx=60000000,dz=60000000,dy=30000000] ~ ~ ~ tp ~ ~-4 ~
#6
execute @e[tag=part_pos:mfm] ~ ~2 ~ scoreboard players add @e[tag=part_pos:mfa,x=-30000000,z=-30000000,dx=60000000,dz=60000000,dy=30000000] part_pos:y 200
execute @e[tag=part_pos:mfm] ~ ~2 ~ execute @e[tag=part_pos:mfa,x=-30000000,z=-30000000,dx=60000000,dz=60000000,dy=30000000] ~ ~ ~ tp ~ ~-2 ~
#7
execute @e[tag=part_pos:mfm] ~ ~1 ~ scoreboard players add @e[tag=part_pos:mfa,x=-30000000,z=-30000000,dx=60000000,dz=60000000,dy=30000000] part_pos:y 100
execute @e[tag=part_pos:mfm] ~ ~1 ~ execute @e[tag=part_pos:mfa,x=-30000000,z=-30000000,dx=60000000,dz=60000000,dy=30000000] ~ ~ ~ tp ~ ~-1 ~
#8
execute @e[tag=part_pos:mfm] ~ ~1 ~ scoreboard players add @e[tag=part_pos:mfa,x=-30000000,z=-30000000,dx=60000000,dz=60000000,dy=30000000] part_pos:y 100
execute @e[tag=part_pos:mfm] ~ ~1 ~ execute @e[tag=part_pos:mfa,x=-30000000,z=-30000000,dx=60000000,dz=60000000,dy=30000000] ~ ~ ~ tp ~ ~-1 ~
#9
execute @e[tag=part_pos:mfm] ~ ~ ~ tag @s add part_pos:mfa
#tag_set
execute @e[tag=part_pos:mfa,tag=!part_pos:mfm] ~ ~ ~ scoreboard players operation @s part_pos:save = @s part_pos:y
execute @e[tag=part_pos:mfa] ~ ~ ~ scoreboard players operation @s part_pos:save -= @s part_pos:y_fix
#scores_math
execute @e[tag=part_pos:mfa,scores={part_pos:save=..-1}] ~ ~ ~ tp ~ ~-256 ~
execute @e[tag=part_pos:mfa,scores={part_pos:save=..-1}] ~ ~ ~ scoreboard players add @s part_pos:save 25600
#facing
execute @e[tag=part_pos:mfa,scores={part_pos:save=12800..}] ~ ~ ~ tp ~ ~128 ~
execute @e[tag=part_pos:mfa,scores={part_pos:save=12800..}] ~ ~ ~ scoreboard players remove @s part_pos:save 12800
#1
execute @e[tag=part_pos:mfa,scores={part_pos:save=6400..}] ~ ~ ~ tp ~ ~64 ~
execute @e[tag=part_pos:mfa,scores={part_pos:save=6400..}] ~ ~ ~ scoreboard players remove @s part_pos:save 6400
#2
execute @e[tag=part_pos:mfa,scores={part_pos:save=3200..}] ~ ~ ~ tp ~ ~32 ~
execute @e[tag=part_pos:mfa,scores={part_pos:save=3200..}] ~ ~ ~ scoreboard players remove @s part_pos:save 3200
#3
execute @e[tag=part_pos:mfa,scores={part_pos:save=1600..}] ~ ~ ~ tp ~ ~16 ~
execute @e[tag=part_pos:mfa,scores={part_pos:save=1600..}] ~ ~ ~ scoreboard players remove @s part_pos:save 1600
#4
execute @e[tag=part_pos:mfa,scores={part_pos:save=800..}] ~ ~ ~ tp ~ ~8 ~
execute @e[tag=part_pos:mfa,scores={part_pos:save=800..}] ~ ~ ~ scoreboard players remove @s part_pos:save 800
#5
execute @e[tag=part_pos:mfa,scores={part_pos:save=400..}] ~ ~ ~ tp ~ ~4 ~
execute @e[tag=part_pos:mfa,scores={part_pos:save=400..}] ~ ~ ~ scoreboard players remove @s part_pos:save 400
#6
execute @e[tag=part_pos:mfa,scores={part_pos:save=200..}] ~ ~ ~ tp ~ ~2 ~
execute @e[tag=part_pos:mfa,scores={part_pos:save=200..}] ~ ~ ~ scoreboard players remove @s part_pos:save 200
#7
execute @e[tag=part_pos:mfa,scores={part_pos:save=100..}] ~ ~ ~ tp ~ ~1 ~
execute @e[tag=part_pos:mfa,scores={part_pos:save=100..}] ~ ~ ~ scoreboard players remove @s part_pos:save 100
#8
execute @e[tag=part_pos:mfa,scores={part_pos:save=100..}] ~ ~ ~ tp ~ ~1 ~
execute @e[tag=part_pos:mfa,scores={part_pos:save=100..}] ~ ~ ~ scoreboard players remove @s part_pos:save 100
#9
execute @e[tag=part_pos:mfa,scores={part_pos:save=80..}] ~ ~ ~ tp ~ ~0.8 ~
execute @e[tag=part_pos:mfa,scores={part_pos:save=80..}] ~ ~ ~ scoreboard players remove @s part_pos:save 80
#10
execute @e[tag=part_pos:mfa,scores={part_pos:save=40..}] ~ ~ ~ tp ~ ~0.4 ~
execute @e[tag=part_pos:mfa,scores={part_pos:save=40..}] ~ ~ ~ scoreboard players remove @s part_pos:save 40
#11
execute @e[tag=part_pos:mfa,scores={part_pos:save=20..}] ~ ~ ~ tp ~ ~0.2 ~
execute @e[tag=part_pos:mfa,scores={part_pos:save=20..}] ~ ~ ~ scoreboard players remove @s part_pos:save 20
#12
execute @e[tag=part_pos:mfa,scores={part_pos:save=10..}] ~ ~ ~ tp ~ ~0.1 ~
execute @e[tag=part_pos:mfa,scores={part_pos:save=10..}] ~ ~ ~ scoreboard players remove @s part_pos:save 10
#13
execute @e[tag=part_pos:mfa,scores={part_pos:save=8..}] ~ ~ ~ tp ~ ~0.08 ~
execute @e[tag=part_pos:mfa,scores={part_pos:save=8..}] ~ ~ ~ scoreboard players remove @s part_pos:save 8
#14
execute @e[tag=part_pos:mfa,scores={part_pos:save=4..}] ~ ~ ~ tp ~ ~0.04 ~
execute @e[tag=part_pos:mfa,scores={part_pos:save=4..}] ~ ~ ~ scoreboard players remove @s part_pos:save 4
#15
execute @e[tag=part_pos:mfa,scores={part_pos:save=2..}] ~ ~ ~ tp ~ ~0.02 ~
execute @e[tag=part_pos:mfa,scores={part_pos:save=2..}] ~ ~ ~ scoreboard players remove @s part_pos:save 2
#16
execute @e[tag=part_pos:mfa,scores={part_pos:save=1..}] ~ ~ ~ tp ~ ~0.01 ~
execute @e[tag=part_pos:mfa,scores={part_pos:save=1..}] ~ ~ ~ scoreboard players remove @s part_pos:save 1
#17
execute @e[tag=part_pos:mfa] ~ ~ ~ tp ~ ~-0.5 ~
execute @e[tag=part_pos:mfa,tag=part_pos:y_remove] ~ ~ ~ tp ~ ~-256.0 ~
execute @e[tag=part_pos:mfa,tag=!part_pos:mfm] ~ ~ ~ tp @e[tag=part_pos:sa,c=1,r=0.1]
#posy_return
execute @e[tag=part_pos:mfm] ~ ~ ~ tag @s remove part_pos:mfa
#tag_set
execute @e[tag=part_pos:mfa] ~ ~ ~ scoreboard players operation @s part_pos:y -= @s part_pos:y_fix
execute @e[tag=part_pos:mfa] ~ ~ ~ scoreboard players operation @s part_pos:y += @e[tag=part_pos:mfm] part_pos:y_fix
execute @e[tag=part_pos:mfa,tag=part_pos:y_remove] ~ ~ ~ scoreboard players remove @s part_pos:y 25600
#math
execute @e[tag=part_pos:another] ~ ~ ~ scoreboard players set @s part_pos:x -512000000
execute @e[tag=part_pos:another] ~ ~ ~ scoreboard players set @s part_pos:y -512000000
execute @e[tag=part_pos:another] ~ ~ ~ scoreboard players set @s part_pos:z -512000000
#scores_reset
execute @e[tag=part_pos:mfa] ~ ~ ~ scoreboard players operation @e[tag=part_pos:another,c=1,r=0.1,scores={part_pos:x=-512000000}] part_pos:x = @s part_pos:x
execute @e[tag=part_pos:mfa] ~ ~ ~ scoreboard players operation @e[tag=part_pos:another,c=1,r=0.1,scores={part_pos:y=-512000000}] part_pos:y = @s part_pos:y
execute @e[tag=part_pos:mfa] ~ ~ ~ scoreboard players operation @e[tag=part_pos:another,c=1,r=0.1,scores={part_pos:z=-512000000}] part_pos:z = @s part_pos:z
#scores_operation_=
execute @e[tag=part_pos:mfa] ~ ~ ~ scoreboard players reset @s
execute @e[tag=part_pos:mfa] ~ ~ ~ tp ~ -32767.0 ~
execute @e[tag=part_pos:mfa] ~ ~ ~ kill @s
execute @e[tag=part_pos:mfm] ~ ~ ~ tp ~ -32767.0 ~
execute @e[tag=part_pos:mfm] ~ ~ ~ kill @s
execute @e[tag=part_pos:sa] ~ ~ ~ tp ~ -32767.0 ~
execute @e[tag=part_pos:sa] ~ ~ ~ kill @s
#clean_entities
execute @e[tag=part_pos:another] ~ ~ ~ tellraw @a[tag=part_pos:master] {"rawtext":[{"text":"实体名称:"},{"selector":"@s"},{"text":", 其相对于你的坐标是:("},{"score":{"objective":"part_pos:x","name":"@s"}},{"text":","},{"score":{"objective":"part_pos:y","name":"@s"}},{"text":","},{"score":{"objective":"part_pos:z","name":"@s"}},{"text":")"}]}
#send_message
tag @s remove part_pos:master
>>>>>>> d95f919c53aa8612409504198bbed77f930d5f64
#tag_set