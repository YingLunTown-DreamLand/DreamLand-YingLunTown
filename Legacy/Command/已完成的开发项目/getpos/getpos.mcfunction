scoreboard objectives add posx dummy
scoreboard objectives add posy dummy
scoreboard objectives add posz dummy
#scoreboard_add
execute @p[tag=locate] ~ ~ ~ tag @s add getpos
execute @a[tag=getpos] ~ ~ ~ scoreboard players set @s posx 0
execute @a[tag=getpos] ~ ~ ~ scoreboard players set @s posy 0
execute @a[tag=getpos] ~ ~ ~ scoreboard players set @s posz 0
execute @a[tag=getpos] ~ ~ ~ summon minecraft:armor_stand getpos_mark
execute @a[tag=getpos] ~ ~ ~ tag @e[r=3,type=armor_stand,name=getpos_mark,c=1] add getpos_mark
execute @a[tag=getpos] ~ ~ ~ summon minecraft:armor_stand getpos_entity
execute @a[tag=getpos] ~ ~ ~ tag @e[r=3,type=armor_stand,name=getpos_entity,c=1] add getpos_entity
execute @a[tag=getpos] ~ ~ ~ summon minecraft:armor_stand getpos_entity_0
execute @a[tag=getpos] ~ ~ ~ tag @e[r=3,type=armor_stand,name=getpos_entity_0,c=1] add getpos_entity_0
#prepare_0
execute @e[tag=getpos_entity] ~ ~ ~ execute @s[x=-2048,dx=2047] ~ ~ ~ tag @s add pos_fu
execute @e[tag=getpos_entity,tag=pos_fu] ~ ~ ~ tp ~2048 ~ ~
execute @e[tag=getpos_entity_0] ~ ~ ~ tp 0 ~ ~
#prepare_1
execute @e[tag=getpos_entity_0] ~ ~ ~ scoreboard players add @e[tag=getpos_entity,rm=1024] posx 1024
execute @e[tag=getpos_entity_0] ~ ~ ~ execute @e[tag=getpos_entity,rm=1024] ~ ~ ~ tp ~-1024 ~ ~
#1
execute @e[tag=getpos_entity_0] ~ ~ ~ scoreboard players add @e[tag=getpos_entity,rm=512] posx 512
execute @e[tag=getpos_entity_0] ~ ~ ~ execute @e[tag=getpos_entity,rm=512] ~ ~ ~ tp ~-512 ~ ~
#2
execute @e[tag=getpos_entity_0] ~ ~ ~ scoreboard players add @e[tag=getpos_entity,rm=256] posx 256
execute @e[tag=getpos_entity_0] ~ ~ ~ execute @e[tag=getpos_entity,rm=256] ~ ~ ~ tp ~-256 ~ ~
#3
execute @e[tag=getpos_entity_0] ~ ~ ~ scoreboard players add @e[tag=getpos_entity,rm=128] posx 128
execute @e[tag=getpos_entity_0] ~ ~ ~ execute @e[tag=getpos_entity,rm=128] ~ ~ ~ tp ~-128 ~ ~
#4
execute @e[tag=getpos_entity_0] ~ ~ ~ scoreboard players add @e[tag=getpos_entity,rm=64] posx 64
execute @e[tag=getpos_entity_0] ~ ~ ~ execute @e[tag=getpos_entity,rm=64] ~ ~ ~ tp ~-64 ~ ~
#5
execute @e[tag=getpos_entity_0] ~ ~ ~ scoreboard players add @e[tag=getpos_entity,rm=32] posx 32
execute @e[tag=getpos_entity_0] ~ ~ ~ execute @e[tag=getpos_entity,rm=32] ~ ~ ~ tp ~-32 ~ ~
#6
execute @e[tag=getpos_entity_0] ~ ~ ~ scoreboard players add @e[tag=getpos_entity,rm=16] posx 16
execute @e[tag=getpos_entity_0] ~ ~ ~ execute @e[tag=getpos_entity,rm=16] ~ ~ ~ tp ~-16 ~ ~
#7
execute @e[tag=getpos_entity_0] ~ ~ ~ scoreboard players add @e[tag=getpos_entity,rm=8] posx 8
execute @e[tag=getpos_entity_0] ~ ~ ~ execute @e[tag=getpos_entity,rm=8] ~ ~ ~ tp ~-8 ~ ~
#8
execute @e[tag=getpos_entity_0] ~ ~ ~ scoreboard players add @e[tag=getpos_entity,rm=4] posx 4
execute @e[tag=getpos_entity_0] ~ ~ ~ execute @e[tag=getpos_entity,rm=4] ~ ~ ~ tp ~-4 ~ ~
#9
execute @e[tag=getpos_entity_0] ~ ~ ~ scoreboard players add @e[tag=getpos_entity,rm=2] posx 2
execute @e[tag=getpos_entity_0] ~ ~ ~ execute @e[tag=getpos_entity,rm=2] ~ ~ ~ tp ~-2 ~ ~
#10
execute @e[tag=getpos_entity_0] ~ ~ ~ scoreboard players add @e[tag=getpos_entity,rm=1] posx 1
execute @e[tag=getpos_entity_0] ~ ~ ~ execute @e[tag=getpos_entity,rm=1] ~ ~ ~ tp ~-1 ~ ~
#11
execute @e[tag=getpos_entity_0] ~ ~ ~ scoreboard players add @e[tag=getpos_entity,rm=1] posx 1
execute @e[tag=getpos_entity_0] ~ ~ ~ execute @e[tag=getpos_entity,rm=1] ~ ~ ~ tp ~-1 ~ ~
#12
execute @e[tag=getpos_entity,tag=pos_fu] ~ ~ ~ scoreboard players remove @s posx 2048
#mark
execute @e[tag=getpos_entity] ~ ~ ~ tp @e[tag=getpos_mark]
execute @e[tag=getpos_entity_0] ~ ~ ~ tp @e[tag=getpos_mark]
#fix_port
execute @e[tag=getpos_entity_0] ~ ~ ~ tp ~ 0 ~
#new_prepare
execute @e[tag=getpos_entity_0] ~ ~ ~ scoreboard players add @e[tag=getpos_entity,rm=128] posy 128
execute @e[tag=getpos_entity_0] ~ ~ ~ execute @e[tag=getpos_entity,rm=128] ~ ~ ~ tp ~ ~-128 ~
#1
execute @e[tag=getpos_entity_0] ~ ~ ~ scoreboard players add @e[tag=getpos_entity,rm=64] posy 64
execute @e[tag=getpos_entity_0] ~ ~ ~ execute @e[tag=getpos_entity,rm=64] ~ ~ ~ tp ~ ~-64 ~
#2
execute @e[tag=getpos_entity_0] ~ ~ ~ scoreboard players add @e[tag=getpos_entity,rm=32] posy 32
execute @e[tag=getpos_entity_0] ~ ~ ~ execute @e[tag=getpos_entity,rm=32] ~ ~ ~ tp ~ ~-32 ~
#3
execute @e[tag=getpos_entity_0] ~ ~ ~ scoreboard players add @e[tag=getpos_entity,rm=16] posy 16
execute @e[tag=getpos_entity_0] ~ ~ ~ execute @e[tag=getpos_entity,rm=16] ~ ~ ~ tp ~ ~-16 ~
#4
execute @e[tag=getpos_entity_0] ~ ~ ~ scoreboard players add @e[tag=getpos_entity,rm=8] posy 8
execute @e[tag=getpos_entity_0] ~ ~ ~ execute @e[tag=getpos_entity,rm=8] ~ ~ ~ tp ~ ~-8 ~
#5
execute @e[tag=getpos_entity_0] ~ ~ ~ scoreboard players add @e[tag=getpos_entity,rm=4] posy 4
execute @e[tag=getpos_entity_0] ~ ~ ~ execute @e[tag=getpos_entity,rm=4] ~ ~ ~ tp ~ ~-4 ~
#6
execute @e[tag=getpos_entity_0] ~ ~ ~ scoreboard players add @e[tag=getpos_entity,rm=2] posy 2
execute @e[tag=getpos_entity_0] ~ ~ ~ execute @e[tag=getpos_entity,rm=2] ~ ~ ~ tp ~ ~-2 ~
#7
execute @e[tag=getpos_entity_0] ~ ~ ~ scoreboard players add @e[tag=getpos_entity,rm=1] posy 1
execute @e[tag=getpos_entity_0] ~ ~ ~ execute @e[tag=getpos_entity,rm=1] ~ ~ ~ tp ~ ~-1 ~
#9
execute @e[tag=getpos_entity_0] ~ ~ ~ scoreboard players add @e[tag=getpos_entity,rm=1] posx 1
execute @e[tag=getpos_entity_0] ~ ~ ~ execute @e[tag=getpos_entity,rm=1] ~ ~ ~ tp ~ ~-1 ~
#10
execute @e[tag=pos_fu] ~ ~ ~ tag @s remove pos_fu
execute @e[tag=getpos_entity] ~ ~ ~ tp @e[tag=getpos_mark]
execute @e[tag=getpos_entity_0] ~ ~ ~ tp @e[tag=getpos_mark]
#fix_port
execute @e[tag=getpos_entity] ~ ~ ~ execute @s[z=-2048,dz=2047] ~ ~ ~ tag @s add pos_fu
execute @e[tag=getpos_entity,tag=pos_fu] ~ ~ ~ tp ~ ~ ~2048
execute @e[tag=getpos_entity_0] ~ ~ ~ tp ~ ~ 0
#new_prepare
execute @e[tag=getpos_entity_0] ~ ~ ~ scoreboard players add @e[tag=getpos_entity,rm=1024] posz 1024
execute @e[tag=getpos_entity_0] ~ ~ ~ execute @e[tag=getpos_entity,rm=1024] ~ ~ ~ tp ~ ~ ~-1024
#1
execute @e[tag=getpos_entity_0] ~ ~ ~ scoreboard players add @e[tag=getpos_entity,rm=512] posz 512
execute @e[tag=getpos_entity_0] ~ ~ ~ execute @e[tag=getpos_entity,rm=512] ~ ~ ~ tp ~ ~ ~-512
#2
execute @e[tag=getpos_entity_0] ~ ~ ~ scoreboard players add @e[tag=getpos_entity,rm=256] posz 256
execute @e[tag=getpos_entity_0] ~ ~ ~ execute @e[tag=getpos_entity,rm=256] ~ ~ ~ tp ~ ~ ~-256
#3
execute @e[tag=getpos_entity_0] ~ ~ ~ scoreboard players add @e[tag=getpos_entity,rm=128] posz 128
execute @e[tag=getpos_entity_0] ~ ~ ~ execute @e[tag=getpos_entity,rm=128] ~ ~ ~ tp ~ ~ ~-128
#4
execute @e[tag=getpos_entity_0] ~ ~ ~ scoreboard players add @e[tag=getpos_entity,rm=64] posz 64
execute @e[tag=getpos_entity_0] ~ ~ ~ execute @e[tag=getpos_entity,rm=64] ~ ~ ~ tp ~ ~ ~-64
#5
execute @e[tag=getpos_entity_0] ~ ~ ~ scoreboard players add @e[tag=getpos_entity,rm=32] posz 32
execute @e[tag=getpos_entity_0] ~ ~ ~ execute @e[tag=getpos_entity,rm=32] ~ ~ ~ tp ~ ~ ~-32
#6
execute @e[tag=getpos_entity_0] ~ ~ ~ scoreboard players add @e[tag=getpos_entity,rm=16] posz 16
execute @e[tag=getpos_entity_0] ~ ~ ~ execute @e[tag=getpos_entity,rm=16] ~ ~ ~ tp ~ ~ ~-16
#7
execute @e[tag=getpos_entity_0] ~ ~ ~ scoreboard players add @e[tag=getpos_entity,rm=8] posz 8
execute @e[tag=getpos_entity_0] ~ ~ ~ execute @e[tag=getpos_entity,rm=8] ~ ~ ~ tp ~ ~ ~-8
#8
execute @e[tag=getpos_entity_0] ~ ~ ~ scoreboard players add @e[tag=getpos_entity,rm=4] posz 4
execute @e[tag=getpos_entity_0] ~ ~ ~ execute @e[tag=getpos_entity,rm=4] ~ ~ ~ tp ~ ~ ~-4
#9
execute @e[tag=getpos_entity_0] ~ ~ ~ scoreboard players add @e[tag=getpos_entity,rm=2] posz 2
execute @e[tag=getpos_entity_0] ~ ~ ~ execute @e[tag=getpos_entity,rm=2] ~ ~ ~ tp ~ ~ ~-2
#10
execute @e[tag=getpos_entity_0] ~ ~ ~ scoreboard players add @e[tag=getpos_entity,rm=1] posz 1
execute @e[tag=getpos_entity_0] ~ ~ ~ execute @e[tag=getpos_entity,rm=1] ~ ~ ~ tp ~ ~ ~-1
#11
execute @e[tag=getpos_entity_0] ~ ~ ~ scoreboard players add @e[tag=getpos_entity,rm=1] posz 1
execute @e[tag=getpos_entity_0] ~ ~ ~ execute @e[tag=getpos_entity,rm=1] ~ ~ ~ tp ~ ~ ~-1
#12
execute @e[tag=getpos_entity,tag=pos_fu] ~ ~ ~ scoreboard players remove @s posz 2048
#mark
execute @e[tag=getpos_entity] ~ ~ ~ scoreboard players operation @a[tag=getpos] posx = @s posx
execute @e[tag=getpos_entity] ~ ~ ~ scoreboard players operation @a[tag=getpos] posy = @s posy
execute @e[tag=getpos_entity] ~ ~ ~ scoreboard players operation @a[tag=getpos] posz = @s posz
#scores_operation_=
execute @e[tag=getpos_entity] ~ ~ ~ scoreboard players reset @s
execute @e[tag=getpos_entity] ~ ~ ~ tp 0 32767 0
execute @e[tag=getpos_entity_0] ~ ~ ~ tp 0 32767 0
execute @e[tag=getpos_mark] ~ ~ ~ tp 0 32767 0
execute @e[tag=getpos_entity] ~ ~ ~ kill @s
execute @e[tag=getpos_entity_0] ~ ~ ~ kill @s
execute @e[tag=getpos_mark] ~ ~ ~ kill @s
#clear_score(s)_and_kill_entities
execute @a[tag=getpos] ~ ~ ~ tag @s remove locate
execute @a[tag=getpos] ~ ~ ~ tag @s remove getpos
#tags_remove