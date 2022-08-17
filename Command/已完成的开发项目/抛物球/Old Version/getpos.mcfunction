scoreboard objectives add pwb:posx dummy
scoreboard objectives add pwb:posy dummy
scoreboard objectives add pwb:posz dummy
#scoreboards_add
#tags_set
summon minecraft:armor_stand pwb:getpos_mark 0.0 ~ ~
tag @e[name=pwb:getpos_mark,type=minecraft:armor_stand,c=1] add pwb:getpos_mark
#summon_entity_and_tags_set
execute @s[x=-1,dx=0] ~ ~ ~ tag @s add pwb:getpos_posfu
execute @s[x=-1,dx=0] ~ ~ ~ tp ~1 ~ ~
#change_fu_to_zheng
execute @e[tag=pwb:getpos_mark,rm=1] ~ ~ ~ scoreboard players add @s pwb:posx 1000000
execute @e[tag=pwb:getpos_mark,rm=1] ~ ~ ~ tp ~1 ~ ~
#1
execute @e[tag=pwb:getpos_mark,rm=0.8] ~ ~ ~ scoreboard players add @s pwb:posx 800000
execute @e[tag=pwb:getpos_mark,rm=0.8] ~ ~ ~ tp ~0.8 ~ ~
#2
execute @e[tag=pwb:getpos_mark,rm=0.4] ~ ~ ~ scoreboard players add @s pwb:posx 400000
execute @e[tag=pwb:getpos_mark,rm=0.4] ~ ~ ~ tp ~0.4 ~ ~
#3
execute @e[tag=pwb:getpos_mark,rm=0.2] ~ ~ ~ scoreboard players add @s pwb:posx 200000
execute @e[tag=pwb:getpos_mark,rm=0.2] ~ ~ ~ tp ~0.2 ~ ~
#4
execute @e[tag=pwb:getpos_mark,rm=0.1] ~ ~ ~ scoreboard players add @s pwb:posx 100000
execute @e[tag=pwb:getpos_mark,rm=0.1] ~ ~ ~ tp ~0.1 ~ ~
#5
execute @e[tag=pwb:getpos_mark,rm=0.08] ~ ~ ~ scoreboard players add @s pwb:posx 80000
execute @e[tag=pwb:getpos_mark,rm=0.08] ~ ~ ~ tp ~0.08 ~ ~
#6
execute @e[tag=pwb:getpos_mark,rm=0.04] ~ ~ ~ scoreboard players add @s pwb:posx 40000
execute @e[tag=pwb:getpos_mark,rm=0.04] ~ ~ ~ tp ~0.04 ~ ~
#7
execute @e[tag=pwb:getpos_mark,rm=0.02] ~ ~ ~ scoreboard players add @s pwb:posx 20000
execute @e[tag=pwb:getpos_mark,rm=0.02] ~ ~ ~ tp ~0.02 ~ ~
#8
execute @e[tag=pwb:getpos_mark,rm=0.01] ~ ~ ~ scoreboard players add @s pwb:posx 10000
execute @e[tag=pwb:getpos_mark,rm=0.01] ~ ~ ~ tp ~0.01 ~ ~
#9
execute @e[tag=pwb:getpos_mark,rm=0.008] ~ ~ ~ scoreboard players add @s pwb:posx 8000
execute @e[tag=pwb:getpos_mark,rm=0.008] ~ ~ ~ tp ~0.008 ~ ~
#10
execute @e[tag=pwb:getpos_mark,rm=0.004] ~ ~ ~ scoreboard players add @s pwb:posx 4000
execute @e[tag=pwb:getpos_mark,rm=0.004] ~ ~ ~ tp ~0.004 ~ ~
#11
execute @e[tag=pwb:getpos_mark,rm=0.002] ~ ~ ~ scoreboard players add @s pwb:posx 2000
execute @e[tag=pwb:getpos_mark,rm=0.002] ~ ~ ~ tp ~0.002 ~ ~
#12
execute @e[tag=pwb:getpos_mark,rm=0.001] ~ ~ ~ scoreboard players add @s pwb:posx 1000
execute @e[tag=pwb:getpos_mark,rm=0.001] ~ ~ ~ tp ~0.001 ~ ~
#13
execute @e[tag=pwb:getpos_mark,rm=0.0008] ~ ~ ~ scoreboard players add @s pwb:posx 800
execute @e[tag=pwb:getpos_mark,rm=0.0008] ~ ~ ~ tp ~0.0008 ~ ~
#14
execute @e[tag=pwb:getpos_mark,rm=0.0004] ~ ~ ~ scoreboard players add @s pwb:posx 400
execute @e[tag=pwb:getpos_mark,rm=0.0004] ~ ~ ~ tp ~0.0004 ~ ~
#15
execute @e[tag=pwb:getpos_mark,rm=0.0002] ~ ~ ~ scoreboard players add @s pwb:posx 200
execute @e[tag=pwb:getpos_mark,rm=0.0002] ~ ~ ~ tp ~0.0002 ~ ~
#16
execute @e[tag=pwb:getpos_mark,rm=0.0001] ~ ~ ~ scoreboard players add @s pwb:posx 100
execute @e[tag=pwb:getpos_mark,rm=0.0001] ~ ~ ~ tp ~0.0001 ~ ~
#17
execute @e[tag=pwb:getpos_mark,rm=0.00008] ~ ~ ~ scoreboard players add @s pwb:posx 80
execute @e[tag=pwb:getpos_mark,rm=0.00008] ~ ~ ~ tp ~0.00008 ~ ~
#18
execute @e[tag=pwb:getpos_mark,rm=0.00004] ~ ~ ~ scoreboard players add @s pwb:posx 40
execute @e[tag=pwb:getpos_mark,rm=0.00004] ~ ~ ~ tp ~0.00004 ~ ~
#19
execute @e[tag=pwb:getpos_mark,rm=0.00002] ~ ~ ~ scoreboard players add @s pwb:posx 20
execute @e[tag=pwb:getpos_mark,rm=0.00002] ~ ~ ~ tp ~0.00002 ~ ~
#20
execute @e[tag=pwb:getpos_mark,rm=0.00001] ~ ~ ~ scoreboard players add @s pwb:posx 10
execute @e[tag=pwb:getpos_mark,rm=0.00001] ~ ~ ~ tp ~0.00001 ~ ~
#21
execute @e[tag=pwb:getpos_mark,rm=0.000008] ~ ~ ~ scoreboard players add @s pwb:posx 8
execute @e[tag=pwb:getpos_mark,rm=0.000008] ~ ~ ~ tp ~0.000008 ~ ~
#22
execute @e[tag=pwb:getpos_mark,rm=0.000004] ~ ~ ~ scoreboard players add @s pwb:posx 4
execute @e[tag=pwb:getpos_mark,rm=0.000004] ~ ~ ~ tp ~0.000004 ~ ~
#23
execute @e[tag=pwb:getpos_mark,rm=0.000002] ~ ~ ~ scoreboard players add @s pwb:posx 2
execute @e[tag=pwb:getpos_mark,rm=0.000002] ~ ~ ~ tp ~0.000002 ~ ~
#24
execute @e[tag=pwb:getpos_mark,rm=0.000001] ~ ~ ~ scoreboard players add @s pwb:posx 1
execute @e[tag=pwb:getpos_mark,rm=0.000001] ~ ~ ~ tp ~0.000001 ~ ~
#25
execute @s[tag=pwb:getpos_posfu] ~ ~ ~ scoreboard players remove @e[tag=pwb:getpos_mark] pwb:posx 1000000
execute @s[tag=pwb:getpos_posfu] ~ ~ ~ tag @s remove pwb:getpos_posfu
scoreboard players operation @s pwb:posx = @e[tag=pwb:getpos_mark] pwb:posx
#26
tp @e[tag=pwb:getpos_mark] @s
execute @e[tag=pwb:getpos_mark] ~ ~ ~ tp ~ 0 ~
#pwb:posy
execute @e[tag=pwb:getpos_mark,rm=1] ~ ~ ~ scoreboard players add @s pwb:posy 1000000
execute @e[tag=pwb:getpos_mark,rm=1] ~ ~ ~ tp ~ ~1 ~
#1
execute @e[tag=pwb:getpos_mark,rm=0.8] ~ ~ ~ scoreboard players add @s pwb:posy 800000
execute @e[tag=pwb:getpos_mark,rm=0.8] ~ ~ ~ tp ~ ~0.8 ~
#2
execute @e[tag=pwb:getpos_mark,rm=0.4] ~ ~ ~ scoreboard players add @s pwb:posy 400000
execute @e[tag=pwb:getpos_mark,rm=0.4] ~ ~ ~ tp ~ ~0.4 ~
#3
execute @e[tag=pwb:getpos_mark,rm=0.2] ~ ~ ~ scoreboard players add @s pwb:posy 200000
execute @e[tag=pwb:getpos_mark,rm=0.2] ~ ~ ~ tp ~ ~0.2 ~
#4
execute @e[tag=pwb:getpos_mark,rm=0.1] ~ ~ ~ scoreboard players add @s pwb:posy 100000
execute @e[tag=pwb:getpos_mark,rm=0.1] ~ ~ ~ tp ~ ~0.1 ~
#5
execute @e[tag=pwb:getpos_mark,rm=0.08] ~ ~ ~ scoreboard players add @s pwb:posy 80000
execute @e[tag=pwb:getpos_mark,rm=0.08] ~ ~ ~ tp ~ ~0.08 ~
#6
execute @e[tag=pwb:getpos_mark,rm=0.04] ~ ~ ~ scoreboard players add @s pwb:posy 40000
execute @e[tag=pwb:getpos_mark,rm=0.04] ~ ~ ~ tp ~ ~0.04 ~
#7
execute @e[tag=pwb:getpos_mark,rm=0.02] ~ ~ ~ scoreboard players add @s pwb:posy 20000
execute @e[tag=pwb:getpos_mark,rm=0.02] ~ ~ ~ tp ~ ~0.02 ~
#8
execute @e[tag=pwb:getpos_mark,rm=0.01] ~ ~ ~ scoreboard players add @s pwb:posy 10000
execute @e[tag=pwb:getpos_mark,rm=0.01] ~ ~ ~ tp ~ ~0.01 ~
#9
execute @e[tag=pwb:getpos_mark,rm=0.008] ~ ~ ~ scoreboard players add @s pwb:posy 8000
execute @e[tag=pwb:getpos_mark,rm=0.008] ~ ~ ~ tp ~ ~0.008 ~
#10
execute @e[tag=pwb:getpos_mark,rm=0.004] ~ ~ ~ scoreboard players add @s pwb:posy 4000
execute @e[tag=pwb:getpos_mark,rm=0.004] ~ ~ ~ tp ~ ~0.004 ~
#11
execute @e[tag=pwb:getpos_mark,rm=0.002] ~ ~ ~ scoreboard players add @s pwb:posy 2000
execute @e[tag=pwb:getpos_mark,rm=0.002] ~ ~ ~ tp ~ ~0.002 ~
#12
execute @e[tag=pwb:getpos_mark,rm=0.001] ~ ~ ~ scoreboard players add @s pwb:posy 1000
execute @e[tag=pwb:getpos_mark,rm=0.001] ~ ~ ~ tp ~ ~0.001 ~
#13
execute @e[tag=pwb:getpos_mark,rm=0.0008] ~ ~ ~ scoreboard players add @s pwb:posy 800
execute @e[tag=pwb:getpos_mark,rm=0.0008] ~ ~ ~ tp ~ ~0.0008 ~
#14
execute @e[tag=pwb:getpos_mark,rm=0.0004] ~ ~ ~ scoreboard players add @s pwb:posy 400
execute @e[tag=pwb:getpos_mark,rm=0.0004] ~ ~ ~ tp ~ ~0.0004 ~
#15
execute @e[tag=pwb:getpos_mark,rm=0.0002] ~ ~ ~ scoreboard players add @s pwb:posy 200
execute @e[tag=pwb:getpos_mark,rm=0.0002] ~ ~ ~ tp ~ ~0.0002 ~
#16
execute @e[tag=pwb:getpos_mark,rm=0.0001] ~ ~ ~ scoreboard players add @s pwb:posy 100
execute @e[tag=pwb:getpos_mark,rm=0.0001] ~ ~ ~ tp ~ ~0.0001 ~
#17
execute @e[tag=pwb:getpos_mark,rm=0.00008] ~ ~ ~ scoreboard players add @s pwb:posy 80
execute @e[tag=pwb:getpos_mark,rm=0.00008] ~ ~ ~ tp ~ ~0.00008 ~
#18
execute @e[tag=pwb:getpos_mark,rm=0.00004] ~ ~ ~ scoreboard players add @s pwb:posy 40
execute @e[tag=pwb:getpos_mark,rm=0.00004] ~ ~ ~ tp ~ ~0.00004 ~
#19
execute @e[tag=pwb:getpos_mark,rm=0.00002] ~ ~ ~ scoreboard players add @s pwb:posy 20
execute @e[tag=pwb:getpos_mark,rm=0.00002] ~ ~ ~ tp ~ ~0.00002 ~
#20
execute @e[tag=pwb:getpos_mark,rm=0.00001] ~ ~ ~ scoreboard players add @s pwb:posy 10
execute @e[tag=pwb:getpos_mark,rm=0.00001] ~ ~ ~ tp ~ ~0.00001 ~
#21
execute @e[tag=pwb:getpos_mark,rm=0.000008] ~ ~ ~ scoreboard players add @s pwb:posy 8
execute @e[tag=pwb:getpos_mark,rm=0.000008] ~ ~ ~ tp ~ ~0.000008 ~
#22
execute @e[tag=pwb:getpos_mark,rm=0.000004] ~ ~ ~ scoreboard players add @s pwb:posy 4
execute @e[tag=pwb:getpos_mark,rm=0.000004] ~ ~ ~ tp ~ ~0.000004 ~
#23
execute @e[tag=pwb:getpos_mark,rm=0.000002] ~ ~ ~ scoreboard players add @s pwb:posy 2
execute @e[tag=pwb:getpos_mark,rm=0.000002] ~ ~ ~ tp ~ ~0.000002 ~
#24
execute @e[tag=pwb:getpos_mark,rm=0.000001] ~ ~ ~ scoreboard players add @s pwb:posy 1
execute @e[tag=pwb:getpos_mark,rm=0.000001] ~ ~ ~ tp ~ ~0.000001 ~
#25
scoreboard players operation @s pwb:posy = @e[tag=pwb:getpos_mark] pwb:posy
#26
tp @e[tag=pwb:getpos_mark] @s
execute @e[tag=pwb:getpos_mark] ~ ~ ~ tp ~ ~ 0.0
#pwb:posz
execute @s[z=-1,dz=0] ~ ~ ~ tag @s add pwb:getpos_posfu
execute @s[z=-1,dz=0] ~ ~ ~ tp ~ ~ ~1
#change_fu_to_zheng
execute @e[tag=pwb:getpos_mark,rm=1] ~ ~ ~ scoreboard players add @s pwb:posz 1000000
execute @e[tag=pwb:getpos_mark,rm=1] ~ ~ ~ tp ~ ~ ~1
#1
execute @e[tag=pwb:getpos_mark,rm=0.8] ~ ~ ~ scoreboard players add @s pwb:posz 800000
execute @e[tag=pwb:getpos_mark,rm=0.8] ~ ~ ~ tp ~ ~ ~0.8
#2
execute @e[tag=pwb:getpos_mark,rm=0.4] ~ ~ ~ scoreboard players add @s pwb:posz 400000
execute @e[tag=pwb:getpos_mark,rm=0.4] ~ ~ ~ tp ~ ~ ~0.4
#3
execute @e[tag=pwb:getpos_mark,rm=0.2] ~ ~ ~ scoreboard players add @s pwb:posz 200000
execute @e[tag=pwb:getpos_mark,rm=0.2] ~ ~ ~ tp ~ ~ ~0.2
#4
execute @e[tag=pwb:getpos_mark,rm=0.1] ~ ~ ~ scoreboard players add @s pwb:posz 100000
execute @e[tag=pwb:getpos_mark,rm=0.1] ~ ~ ~ tp ~ ~ ~0.1
#5
execute @e[tag=pwb:getpos_mark,rm=0.08] ~ ~ ~ scoreboard players add @s pwb:posz 80000
execute @e[tag=pwb:getpos_mark,rm=0.08] ~ ~ ~ tp ~ ~ ~0.08
#6
execute @e[tag=pwb:getpos_mark,rm=0.04] ~ ~ ~ scoreboard players add @s pwb:posz 40000
execute @e[tag=pwb:getpos_mark,rm=0.04] ~ ~ ~ tp ~ ~ ~0.04
#7
execute @e[tag=pwb:getpos_mark,rm=0.02] ~ ~ ~ scoreboard players add @s pwb:posz 20000
execute @e[tag=pwb:getpos_mark,rm=0.02] ~ ~ ~ tp ~ ~ ~0.02
#8
execute @e[tag=pwb:getpos_mark,rm=0.01] ~ ~ ~ scoreboard players add @s pwb:posz 10000
execute @e[tag=pwb:getpos_mark,rm=0.01] ~ ~ ~ tp ~ ~ ~0.01
#9
execute @e[tag=pwb:getpos_mark,rm=0.008] ~ ~ ~ scoreboard players add @s pwb:posz 8000
execute @e[tag=pwb:getpos_mark,rm=0.008] ~ ~ ~ tp ~ ~ ~0.008
#10
execute @e[tag=pwb:getpos_mark,rm=0.004] ~ ~ ~ scoreboard players add @s pwb:posz 4000
execute @e[tag=pwb:getpos_mark,rm=0.004] ~ ~ ~ tp ~ ~ ~0.004
#11
execute @e[tag=pwb:getpos_mark,rm=0.002] ~ ~ ~ scoreboard players add @s pwb:posz 2000
execute @e[tag=pwb:getpos_mark,rm=0.002] ~ ~ ~ tp ~ ~ ~0.002
#12
execute @e[tag=pwb:getpos_mark,rm=0.001] ~ ~ ~ scoreboard players add @s pwb:posz 1000
execute @e[tag=pwb:getpos_mark,rm=0.001] ~ ~ ~ tp ~ ~ ~0.001
#13
execute @e[tag=pwb:getpos_mark,rm=0.0008] ~ ~ ~ scoreboard players add @s pwb:posz 800
execute @e[tag=pwb:getpos_mark,rm=0.0008] ~ ~ ~ tp ~ ~ ~0.0008
#14
execute @e[tag=pwb:getpos_mark,rm=0.0004] ~ ~ ~ scoreboard players add @s pwb:posz 400
execute @e[tag=pwb:getpos_mark,rm=0.0004] ~ ~ ~ tp ~ ~ ~0.0004
#15
execute @e[tag=pwb:getpos_mark,rm=0.0002] ~ ~ ~ scoreboard players add @s pwb:posz 200
execute @e[tag=pwb:getpos_mark,rm=0.0002] ~ ~ ~ tp ~ ~ ~0.0002
#16
execute @e[tag=pwb:getpos_mark,rm=0.0001] ~ ~ ~ scoreboard players add @s pwb:posz 100
execute @e[tag=pwb:getpos_mark,rm=0.0001] ~ ~ ~ tp ~ ~ ~0.0001
#17
execute @e[tag=pwb:getpos_mark,rm=0.00008] ~ ~ ~ scoreboard players add @s pwb:posz 80
execute @e[tag=pwb:getpos_mark,rm=0.00008] ~ ~ ~ tp ~ ~ ~0.00008
#18
execute @e[tag=pwb:getpos_mark,rm=0.00004] ~ ~ ~ scoreboard players add @s pwb:posz 40
execute @e[tag=pwb:getpos_mark,rm=0.00004] ~ ~ ~ tp ~ ~ ~0.00004
#19
execute @e[tag=pwb:getpos_mark,rm=0.00002] ~ ~ ~ scoreboard players add @s pwb:posz 20
execute @e[tag=pwb:getpos_mark,rm=0.00002] ~ ~ ~ tp ~ ~ ~0.00002
#20
execute @e[tag=pwb:getpos_mark,rm=0.00001] ~ ~ ~ scoreboard players add @s pwb:posz 10
execute @e[tag=pwb:getpos_mark,rm=0.00001] ~ ~ ~ tp ~ ~ ~0.00001
#21
execute @e[tag=pwb:getpos_mark,rm=0.000008] ~ ~ ~ scoreboard players add @s pwb:posz 8
execute @e[tag=pwb:getpos_mark,rm=0.000008] ~ ~ ~ tp ~ ~ ~0.000008
#22
execute @e[tag=pwb:getpos_mark,rm=0.000004] ~ ~ ~ scoreboard players add @s pwb:posz 4
execute @e[tag=pwb:getpos_mark,rm=0.000004] ~ ~ ~ tp ~ ~ ~0.000004
#23
execute @e[tag=pwb:getpos_mark,rm=0.000002] ~ ~ ~ scoreboard players add @s pwb:posz 2
execute @e[tag=pwb:getpos_mark,rm=0.000002] ~ ~ ~ tp ~ ~ ~0.000002
#24
execute @e[tag=pwb:getpos_mark,rm=0.000001] ~ ~ ~ scoreboard players add @s pwb:posz 1
execute @e[tag=pwb:getpos_mark,rm=0.000001] ~ ~ ~ tp ~ ~ ~0.000001
#25
execute @s[tag=pwb:getpos_posfu] ~ ~ ~ scoreboard players remove @e[tag=pwb:getpos_mark] pwb:posz 1000000
execute @s[tag=pwb:getpos_posfu] ~ ~ ~ tag @s remove pwb:getpos_posfu
scoreboard players operation @s pwb:posz = @e[tag=pwb:getpos_mark] pwb:posz
#26
execute @e[tag=pwb:getpos_mark] ~ ~ ~ tp 0 32767.0 0
execute @e[tag=pwb:getpos_mark] ~ ~ ~ scoreboard players reset @s
execute @e[tag=pwb:getpos_mark] ~ ~ ~ kill @s
#end