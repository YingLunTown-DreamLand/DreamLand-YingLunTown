<<<<<<< HEAD
scoreboard objectives add tpa:posx dummy
scoreboard objectives add tpa:posy dummy
scoreboard objectives add tpa:posz dummy
#scoreboards_add



execute @a[tag=tpa:getpos] ~ ~ ~ summon minecraft:armor_stand tpa:getpos_entity 20000.0 100.0 20000.0
execute @a[tag=tpa:getpos] ~ ~ ~ tp @e[c=1,name=tpa:getpos_entity,type=minecraft:armor_stand,x=20000.0,y=100.0,z=20000.0,tag=""] ~ ~32767.0 ~
#summon_entity

execute @a[tag=tpa:getpos] ~ ~32767.0 ~ tag @e[type=minecraft:armor_stand,name=tpa:getpos_entity,c=1,r=3,tag=""] add tpa:getpos_entity
execute @a[tag=tpa:getpos_request] ~ ~32767.0 ~ tag @e[c=1,r=3,tag=tpa:getpos_entity] add tpa:getpos_entity_r
execute @a[tag=tpa:getpos_target] ~ ~32767.0 ~ tag @e[c=1,r=3,tag=tpa:getpos_entity,tag=!tpa:getpos_entity_r] add tpa:getpos_entity_t
#tags_add
#entities_prepare



execute @e[tag=tpa:getpos_entity] ~ ~ ~ scoreboard players set @s tpa:posx 0
execute @e[tag=tpa:getpos_entity] ~ ~ ~ scoreboard players set @s tpa:posy 0
execute @e[tag=tpa:getpos_entity] ~ ~ ~ scoreboard players set @s tpa:posz 0
#scores_prepare



execute @e[tag=tpa:getpos_entity] ~ ~ ~ execute @s[x=-1048575,dx=1048574] ~ ~ ~ tag @s add tpa:getpos_x
execute @e[tag=tpa:getpos_entity,tag=tpa:getpos_x] ~ ~ ~ tp ~1048575.0 ~ ~
#1
execute @e[tag=tpa:getpos_entity] ~ ~ ~ execute @s[y=32256,dy=510] ~ ~ ~ tag @s add tpa:getpos_y
execute @e[tag=tpa:getpos_entity,tag=tpa:getpos_y] ~ ~ ~ tp ~ ~511.0 ~
#2
execute @e[tag=tpa:getpos_entity] ~ ~ ~ execute @s[z=-1048575,dz=1048574] ~ ~ ~ tag @s add tpa:getpos_z
execute @e[tag=tpa:getpos_entity,tag=tpa:getpos_z] ~ ~ ~ tp ~ ~ ~1048575.0
#3
#fix_to_+



execute @e[tag=tpa:getpos_entity] 0.0 ~ ~ execute @s[rm=524288] ~ ~ ~ scoreboard players add @s tpa:posx 524288
execute @e[tag=tpa:getpos_entity] 0.0 ~ ~ execute @s[rm=524288] ~ ~ ~ tp ~-524288.0 ~ ~

execute @e[tag=tpa:getpos_entity] 0.0 ~ ~ execute @s[rm=262144] ~ ~ ~ scoreboard players add @s tpa:posx 262144
execute @e[tag=tpa:getpos_entity] 0.0 ~ ~ execute @s[rm=262144] ~ ~ ~ tp ~-262144.0 ~ ~

execute @e[tag=tpa:getpos_entity] 0.0 ~ ~ execute @s[rm=131072] ~ ~ ~ scoreboard players add @s tpa:posx 131072
execute @e[tag=tpa:getpos_entity] 0.0 ~ ~ execute @s[rm=131072] ~ ~ ~ tp ~-131072.0 ~ ~

execute @e[tag=tpa:getpos_entity] 0.0 ~ ~ execute @s[rm=65536] ~ ~ ~ scoreboard players add @s tpa:posx 65536
execute @e[tag=tpa:getpos_entity] 0.0 ~ ~ execute @s[rm=65536] ~ ~ ~ tp ~-65536.0 ~ ~

execute @e[tag=tpa:getpos_entity] 0.0 ~ ~ execute @s[rm=32768] ~ ~ ~ scoreboard players add @s tpa:posx 32768
execute @e[tag=tpa:getpos_entity] 0.0 ~ ~ execute @s[rm=32768] ~ ~ ~ tp ~-32768.0 ~ ~

execute @e[tag=tpa:getpos_entity] 0.0 ~ ~ execute @s[rm=16384] ~ ~ ~ scoreboard players add @s tpa:posx 16384
execute @e[tag=tpa:getpos_entity] 0.0 ~ ~ execute @s[rm=16384] ~ ~ ~ tp ~-16384.0 ~ ~

execute @e[tag=tpa:getpos_entity] 0.0 ~ ~ execute @s[rm=8192] ~ ~ ~ scoreboard players add @s tpa:posx 8192
execute @e[tag=tpa:getpos_entity] 0.0 ~ ~ execute @s[rm=8192] ~ ~ ~ tp ~-8192.0 ~ ~

execute @e[tag=tpa:getpos_entity] 0.0 ~ ~ execute @s[rm=4096] ~ ~ ~ scoreboard players add @s tpa:posx 4096
execute @e[tag=tpa:getpos_entity] 0.0 ~ ~ execute @s[rm=4096] ~ ~ ~ tp ~-4096.0 ~ ~

execute @e[tag=tpa:getpos_entity] 0.0 ~ ~ execute @s[rm=2048] ~ ~ ~ scoreboard players add @s tpa:posx 2048
execute @e[tag=tpa:getpos_entity] 0.0 ~ ~ execute @s[rm=2048] ~ ~ ~ tp ~-2048.0 ~ ~

execute @e[tag=tpa:getpos_entity] 0.0 ~ ~ execute @s[rm=1024] ~ ~ ~ scoreboard players add @s tpa:posx 1024
execute @e[tag=tpa:getpos_entity] 0.0 ~ ~ execute @s[rm=1024] ~ ~ ~ tp ~-1024.0 ~ ~

execute @e[tag=tpa:getpos_entity] 0.0 ~ ~ execute @s[rm=512] ~ ~ ~ scoreboard players add @s tpa:posx 512
execute @e[tag=tpa:getpos_entity] 0.0 ~ ~ execute @s[rm=512] ~ ~ ~ tp ~-512.0 ~ ~

execute @e[tag=tpa:getpos_entity] 0.0 ~ ~ execute @s[rm=256] ~ ~ ~ scoreboard players add @s tpa:posx 256
execute @e[tag=tpa:getpos_entity] 0.0 ~ ~ execute @s[rm=256] ~ ~ ~ tp ~-256.0 ~ ~

execute @e[tag=tpa:getpos_entity] 0.0 ~ ~ execute @s[rm=128] ~ ~ ~ scoreboard players add @s tpa:posx 128
execute @e[tag=tpa:getpos_entity] 0.0 ~ ~ execute @s[rm=128] ~ ~ ~ tp ~-128.0 ~ ~

execute @e[tag=tpa:getpos_entity] 0.0 ~ ~ execute @s[rm=64] ~ ~ ~ scoreboard players add @s tpa:posx 64
execute @e[tag=tpa:getpos_entity] 0.0 ~ ~ execute @s[rm=64] ~ ~ ~ tp ~-64.0 ~ ~

execute @e[tag=tpa:getpos_entity] 0.0 ~ ~ execute @s[rm=32] ~ ~ ~ scoreboard players add @s tpa:posx 32
execute @e[tag=tpa:getpos_entity] 0.0 ~ ~ execute @s[rm=32] ~ ~ ~ tp ~-32.0 ~ ~

execute @e[tag=tpa:getpos_entity] 0.0 ~ ~ execute @s[rm=16] ~ ~ ~ scoreboard players add @s tpa:posx 16
execute @e[tag=tpa:getpos_entity] 0.0 ~ ~ execute @s[rm=16] ~ ~ ~ tp ~-16.0 ~ ~

execute @e[tag=tpa:getpos_entity] 0.0 ~ ~ execute @s[rm=8] ~ ~ ~ scoreboard players add @s tpa:posx 8
execute @e[tag=tpa:getpos_entity] 0.0 ~ ~ execute @s[rm=8] ~ ~ ~ tp ~-8.0 ~ ~

execute @e[tag=tpa:getpos_entity] 0.0 ~ ~ execute @s[rm=4] ~ ~ ~ scoreboard players add @s tpa:posx 4
execute @e[tag=tpa:getpos_entity] 0.0 ~ ~ execute @s[rm=4] ~ ~ ~ tp ~-4.0 ~ ~

execute @e[tag=tpa:getpos_entity] 0.0 ~ ~ execute @s[rm=2] ~ ~ ~ scoreboard players add @s tpa:posx 2
execute @e[tag=tpa:getpos_entity] 0.0 ~ ~ execute @s[rm=2] ~ ~ ~ tp ~-2.0 ~ ~

execute @e[tag=tpa:getpos_entity] 0.0 ~ ~ execute @s[rm=1] ~ ~ ~ scoreboard players add @s tpa:posx 1
execute @e[tag=tpa:getpos_entity] 0.0 ~ ~ execute @s[rm=1] ~ ~ ~ tp ~-1.0 ~ ~
#x



execute @e[tag=tpa:getpos_entity] ~ ~ 0.0 execute @s[rm=524288] ~ ~ ~ scoreboard players add @s tpa:posz 524288
execute @e[tag=tpa:getpos_entity] ~ ~ 0.0 execute @s[rm=524288] ~ ~ ~ tp ~ ~ ~-524288.0

execute @e[tag=tpa:getpos_entity] ~ ~ 0.0 execute @s[rm=262144] ~ ~ ~ scoreboard players add @s tpa:posz 262144
execute @e[tag=tpa:getpos_entity] ~ ~ 0.0 execute @s[rm=262144] ~ ~ ~ tp ~ ~ ~-262144.0

execute @e[tag=tpa:getpos_entity] ~ ~ 0.0 execute @s[rm=131072] ~ ~ ~ scoreboard players add @s tpa:posz 131072
execute @e[tag=tpa:getpos_entity] ~ ~ 0.0 execute @s[rm=131072] ~ ~ ~ tp ~ ~ ~-131072.0

execute @e[tag=tpa:getpos_entity] ~ ~ 0.0 execute @s[rm=65536] ~ ~ ~ scoreboard players add @s tpa:posz 65536
execute @e[tag=tpa:getpos_entity] ~ ~ 0.0 execute @s[rm=65536] ~ ~ ~ tp ~ ~ ~-65536.0

execute @e[tag=tpa:getpos_entity] ~ ~ 0.0 execute @s[rm=32768] ~ ~ ~ scoreboard players add @s tpa:posz 32768
execute @e[tag=tpa:getpos_entity] ~ ~ 0.0 execute @s[rm=32768] ~ ~ ~ tp ~ ~ ~-32768.0

execute @e[tag=tpa:getpos_entity] ~ ~ 0.0 execute @s[rm=16384] ~ ~ ~ scoreboard players add @s tpa:posz 16384
execute @e[tag=tpa:getpos_entity] ~ ~ 0.0 execute @s[rm=16384] ~ ~ ~ tp ~ ~ ~-16384.0

execute @e[tag=tpa:getpos_entity] ~ ~ 0.0 execute @s[rm=8192] ~ ~ ~ scoreboard players add @s tpa:posz 8192
execute @e[tag=tpa:getpos_entity] ~ ~ 0.0 execute @s[rm=8192] ~ ~ ~ tp ~ ~ ~-8192.0

execute @e[tag=tpa:getpos_entity] ~ ~ 0.0 execute @s[rm=4096] ~ ~ ~ scoreboard players add @s tpa:posz 4096
execute @e[tag=tpa:getpos_entity] ~ ~ 0.0 execute @s[rm=4096] ~ ~ ~ tp ~ ~ ~-4096.0

execute @e[tag=tpa:getpos_entity] ~ ~ 0.0 execute @s[rm=2048] ~ ~ ~ scoreboard players add @s tpa:posz 2048
execute @e[tag=tpa:getpos_entity] ~ ~ 0.0 execute @s[rm=2048] ~ ~ ~ tp ~ ~ ~-2048.0

execute @e[tag=tpa:getpos_entity] ~ ~ 0.0 execute @s[rm=1024] ~ ~ ~ scoreboard players add @s tpa:posz 1024
execute @e[tag=tpa:getpos_entity] ~ ~ 0.0 execute @s[rm=1024] ~ ~ ~ tp ~ ~ ~-1024.0

execute @e[tag=tpa:getpos_entity] ~ ~ 0.0 execute @s[rm=512] ~ ~ ~ scoreboard players add @s tpa:posz 512
execute @e[tag=tpa:getpos_entity] ~ ~ 0.0 execute @s[rm=512] ~ ~ ~ tp ~ ~ ~-512.0

execute @e[tag=tpa:getpos_entity] ~ ~ 0.0 execute @s[rm=256] ~ ~ ~ scoreboard players add @s tpa:posz 256
execute @e[tag=tpa:getpos_entity] ~ ~ 0.0 execute @s[rm=256] ~ ~ ~ tp ~ ~ ~-256.0

execute @e[tag=tpa:getpos_entity] ~ ~ 0.0 execute @s[rm=128] ~ ~ ~ scoreboard players add @s tpa:posz 128
execute @e[tag=tpa:getpos_entity] ~ ~ 0.0 execute @s[rm=128] ~ ~ ~ tp ~ ~ ~-128.0

execute @e[tag=tpa:getpos_entity] ~ ~ 0.0 execute @s[rm=64] ~ ~ ~ scoreboard players add @s tpa:posz 64
execute @e[tag=tpa:getpos_entity] ~ ~ 0.0 execute @s[rm=64] ~ ~ ~ tp ~ ~ ~-64.0

execute @e[tag=tpa:getpos_entity] ~ ~ 0.0 execute @s[rm=32] ~ ~ ~ scoreboard players add @s tpa:posz 32
execute @e[tag=tpa:getpos_entity] ~ ~ 0.0 execute @s[rm=32] ~ ~ ~ tp ~ ~ ~-32.0

execute @e[tag=tpa:getpos_entity] ~ ~ 0.0 execute @s[rm=16] ~ ~ ~ scoreboard players add @s tpa:posz 16
execute @e[tag=tpa:getpos_entity] ~ ~ 0.0 execute @s[rm=16] ~ ~ ~ tp ~ ~ ~-16.0

execute @e[tag=tpa:getpos_entity] ~ ~ 0.0 execute @s[rm=8] ~ ~ ~ scoreboard players add @s tpa:posz 8
execute @e[tag=tpa:getpos_entity] ~ ~ 0.0 execute @s[rm=8] ~ ~ ~ tp ~ ~ ~-8.0

execute @e[tag=tpa:getpos_entity] ~ ~ 0.0 execute @s[rm=4] ~ ~ ~ scoreboard players add @s tpa:posz 4
execute @e[tag=tpa:getpos_entity] ~ ~ 0.0 execute @s[rm=4] ~ ~ ~ tp ~ ~ ~-4.0

execute @e[tag=tpa:getpos_entity] ~ ~ 0.0 execute @s[rm=2] ~ ~ ~ scoreboard players add @s tpa:posz 2
execute @e[tag=tpa:getpos_entity] ~ ~ 0.0 execute @s[rm=2] ~ ~ ~ tp ~ ~ ~-2.0

execute @e[tag=tpa:getpos_entity] ~ ~ 0.0 execute @s[rm=1] ~ ~ ~ scoreboard players add @s tpa:posz 1
execute @e[tag=tpa:getpos_entity] ~ ~ 0.0 execute @s[rm=1] ~ ~ ~ tp ~ ~ ~-1.0
#z



execute @e[tag=tpa:getpos_entity] ~ 32767.0 ~ execute @s[rm=256] ~ ~ ~ scoreboard players add @s tpa:posy 256
execute @e[tag=tpa:getpos_entity] ~ 32767.0 ~ execute @s[rm=256] ~ ~ ~ tp ~ ~-256.0 ~

execute @e[tag=tpa:getpos_entity] ~ 32767.0 ~ execute @s[rm=128] ~ ~ ~ scoreboard players add @s tpa:posy 128
execute @e[tag=tpa:getpos_entity] ~ 32767.0 ~ execute @s[rm=128] ~ ~ ~ tp ~ ~-128.0 ~

execute @e[tag=tpa:getpos_entity] ~ 32767.0 ~ execute @s[rm=64] ~ ~ ~ scoreboard players add @s tpa:posy 64
execute @e[tag=tpa:getpos_entity] ~ 32767.0 ~ execute @s[rm=64] ~ ~ ~ tp ~ ~-64.0 ~

execute @e[tag=tpa:getpos_entity] ~ 32767.0 ~ execute @s[rm=32] ~ ~ ~ scoreboard players add @s tpa:posy 32
execute @e[tag=tpa:getpos_entity] ~ 32767.0 ~ execute @s[rm=32] ~ ~ ~ tp ~ ~-32.0 ~

execute @e[tag=tpa:getpos_entity] ~ 32767.0 ~ execute @s[rm=16] ~ ~ ~ scoreboard players add @s tpa:posy 16
execute @e[tag=tpa:getpos_entity] ~ 32767.0 ~ execute @s[rm=16] ~ ~ ~ tp ~ ~-16.0 ~

execute @e[tag=tpa:getpos_entity] ~ 32767.0 ~ execute @s[rm=8] ~ ~ ~ scoreboard players add @s tpa:posy 8
execute @e[tag=tpa:getpos_entity] ~ 32767.0 ~ execute @s[rm=8] ~ ~ ~ tp ~ ~-8.0 ~

execute @e[tag=tpa:getpos_entity] ~ 32767.0 ~ execute @s[rm=4] ~ ~ ~ scoreboard players add @s tpa:posy 4
execute @e[tag=tpa:getpos_entity] ~ 32767.0 ~ execute @s[rm=4] ~ ~ ~ tp ~ ~-4.0 ~

execute @e[tag=tpa:getpos_entity] ~ 32767.0 ~ execute @s[rm=2] ~ ~ ~ scoreboard players add @s tpa:posy 2
execute @e[tag=tpa:getpos_entity] ~ 32767.0 ~ execute @s[rm=2] ~ ~ ~ tp ~ ~-2.0 ~

execute @e[tag=tpa:getpos_entity] ~ 32767.0 ~ execute @s[rm=1] ~ ~ ~ scoreboard players add @s tpa:posy 1
execute @e[tag=tpa:getpos_entity] ~ 32767.0 ~ execute @s[rm=1] ~ ~ ~ tp ~ ~-1.0 ~
#y



execute @e[tag=tpa:getpos_entity,tag=tpa:getpos_x] ~ ~ ~ scoreboard players remove @s tpa:posx 1048575
execute @e[tag=tpa:getpos_entity,tag=tpa:getpos_y] ~ ~ ~ scoreboard players remove @s tpa:posy 511
execute @e[tag=tpa:getpos_entity,tag=tpa:getpos_z] ~ ~ ~ scoreboard players remove @s tpa:posz 1048575
#get_right_score(s)



execute @e[tag=tpa:getpos_entity_r] ~ ~ ~ scoreboard players operation @a[tag=tpa:getpos_request] tpa:posx = @s tpa:posx
execute @e[tag=tpa:getpos_entity_r] ~ ~ ~ scoreboard players operation @a[tag=tpa:getpos_request] tpa:posy = @s tpa:posy
execute @e[tag=tpa:getpos_entity_r] ~ ~ ~ scoreboard players operation @a[tag=tpa:getpos_request] tpa:posz = @s tpa:posz
#1
execute @e[tag=tpa:getpos_entity_t] ~ ~ ~ scoreboard players operation @a[tag=tpa:getpos_target] tpa:posx = @s tpa:posx
execute @e[tag=tpa:getpos_entity_t] ~ ~ ~ scoreboard players operation @a[tag=tpa:getpos_target] tpa:posy = @s tpa:posy
execute @e[tag=tpa:getpos_entity_t] ~ ~ ~ scoreboard players operation @a[tag=tpa:getpos_target] tpa:posz = @s tpa:posz
#2
#operation_=_scores



execute @a[tag=tpa:getpos_target] ~ ~ ~ tp @e[tag=tpa:getpos_entity] ~ -32767.0 ~
#teleport

execute @e[tag=tpa:getpos_entity] ~ ~ ~ kill @s
#clean_entities



execute @a[tag=tpa:getpos] ~ ~ ~ tag @s remove tpa:getpos
execute @a[tag=tpa:getpos_request] ~ ~ ~ tag @s remove tpa:getpos_request
execute @a[tag=tpa:getpos_target] ~ ~ ~ tag @s remove tpa:getpos_target
#tags_remove





#Author:Happy2018new
#Version:2.0
=======
scoreboard objectives add tpa:posx dummy
scoreboard objectives add tpa:posy dummy
scoreboard objectives add tpa:posz dummy
#scoreboards_add



execute @a[tag=tpa:getpos] ~ ~ ~ summon minecraft:armor_stand tpa:getpos_entity 20000.0 100.0 20000.0
execute @a[tag=tpa:getpos] ~ ~ ~ tp @e[c=1,name=tpa:getpos_entity,type=minecraft:armor_stand,x=20000.0,y=100.0,z=20000.0,tag=""] ~ ~32767.0 ~
#summon_entity

execute @a[tag=tpa:getpos] ~ ~32767.0 ~ tag @e[type=minecraft:armor_stand,name=tpa:getpos_entity,c=1,r=3,tag=""] add tpa:getpos_entity
execute @a[tag=tpa:getpos_request] ~ ~32767.0 ~ tag @e[c=1,r=3,tag=tpa:getpos_entity] add tpa:getpos_entity_r
execute @a[tag=tpa:getpos_target] ~ ~32767.0 ~ tag @e[c=1,r=3,tag=tpa:getpos_entity,tag=!tpa:getpos_entity_r] add tpa:getpos_entity_t
#tags_add
#entities_prepare



execute @e[tag=tpa:getpos_entity] ~ ~ ~ scoreboard players set @s tpa:posx 0
execute @e[tag=tpa:getpos_entity] ~ ~ ~ scoreboard players set @s tpa:posy 0
execute @e[tag=tpa:getpos_entity] ~ ~ ~ scoreboard players set @s tpa:posz 0
#scores_prepare



execute @e[tag=tpa:getpos_entity] ~ ~ ~ execute @s[x=-1048575,dx=1048574] ~ ~ ~ tag @s add tpa:getpos_x
execute @e[tag=tpa:getpos_entity,tag=tpa:getpos_x] ~ ~ ~ tp ~1048575.0 ~ ~
#1
execute @e[tag=tpa:getpos_entity] ~ ~ ~ execute @s[y=32256,dy=510] ~ ~ ~ tag @s add tpa:getpos_y
execute @e[tag=tpa:getpos_entity,tag=tpa:getpos_y] ~ ~ ~ tp ~ ~511.0 ~
#2
execute @e[tag=tpa:getpos_entity] ~ ~ ~ execute @s[z=-1048575,dz=1048574] ~ ~ ~ tag @s add tpa:getpos_z
execute @e[tag=tpa:getpos_entity,tag=tpa:getpos_z] ~ ~ ~ tp ~ ~ ~1048575.0
#3
#fix_to_+



execute @e[tag=tpa:getpos_entity] 0.0 ~ ~ execute @s[rm=524288] ~ ~ ~ scoreboard players add @s tpa:posx 524288
execute @e[tag=tpa:getpos_entity] 0.0 ~ ~ execute @s[rm=524288] ~ ~ ~ tp ~-524288.0 ~ ~

execute @e[tag=tpa:getpos_entity] 0.0 ~ ~ execute @s[rm=262144] ~ ~ ~ scoreboard players add @s tpa:posx 262144
execute @e[tag=tpa:getpos_entity] 0.0 ~ ~ execute @s[rm=262144] ~ ~ ~ tp ~-262144.0 ~ ~

execute @e[tag=tpa:getpos_entity] 0.0 ~ ~ execute @s[rm=131072] ~ ~ ~ scoreboard players add @s tpa:posx 131072
execute @e[tag=tpa:getpos_entity] 0.0 ~ ~ execute @s[rm=131072] ~ ~ ~ tp ~-131072.0 ~ ~

execute @e[tag=tpa:getpos_entity] 0.0 ~ ~ execute @s[rm=65536] ~ ~ ~ scoreboard players add @s tpa:posx 65536
execute @e[tag=tpa:getpos_entity] 0.0 ~ ~ execute @s[rm=65536] ~ ~ ~ tp ~-65536.0 ~ ~

execute @e[tag=tpa:getpos_entity] 0.0 ~ ~ execute @s[rm=32768] ~ ~ ~ scoreboard players add @s tpa:posx 32768
execute @e[tag=tpa:getpos_entity] 0.0 ~ ~ execute @s[rm=32768] ~ ~ ~ tp ~-32768.0 ~ ~

execute @e[tag=tpa:getpos_entity] 0.0 ~ ~ execute @s[rm=16384] ~ ~ ~ scoreboard players add @s tpa:posx 16384
execute @e[tag=tpa:getpos_entity] 0.0 ~ ~ execute @s[rm=16384] ~ ~ ~ tp ~-16384.0 ~ ~

execute @e[tag=tpa:getpos_entity] 0.0 ~ ~ execute @s[rm=8192] ~ ~ ~ scoreboard players add @s tpa:posx 8192
execute @e[tag=tpa:getpos_entity] 0.0 ~ ~ execute @s[rm=8192] ~ ~ ~ tp ~-8192.0 ~ ~

execute @e[tag=tpa:getpos_entity] 0.0 ~ ~ execute @s[rm=4096] ~ ~ ~ scoreboard players add @s tpa:posx 4096
execute @e[tag=tpa:getpos_entity] 0.0 ~ ~ execute @s[rm=4096] ~ ~ ~ tp ~-4096.0 ~ ~

execute @e[tag=tpa:getpos_entity] 0.0 ~ ~ execute @s[rm=2048] ~ ~ ~ scoreboard players add @s tpa:posx 2048
execute @e[tag=tpa:getpos_entity] 0.0 ~ ~ execute @s[rm=2048] ~ ~ ~ tp ~-2048.0 ~ ~

execute @e[tag=tpa:getpos_entity] 0.0 ~ ~ execute @s[rm=1024] ~ ~ ~ scoreboard players add @s tpa:posx 1024
execute @e[tag=tpa:getpos_entity] 0.0 ~ ~ execute @s[rm=1024] ~ ~ ~ tp ~-1024.0 ~ ~

execute @e[tag=tpa:getpos_entity] 0.0 ~ ~ execute @s[rm=512] ~ ~ ~ scoreboard players add @s tpa:posx 512
execute @e[tag=tpa:getpos_entity] 0.0 ~ ~ execute @s[rm=512] ~ ~ ~ tp ~-512.0 ~ ~

execute @e[tag=tpa:getpos_entity] 0.0 ~ ~ execute @s[rm=256] ~ ~ ~ scoreboard players add @s tpa:posx 256
execute @e[tag=tpa:getpos_entity] 0.0 ~ ~ execute @s[rm=256] ~ ~ ~ tp ~-256.0 ~ ~

execute @e[tag=tpa:getpos_entity] 0.0 ~ ~ execute @s[rm=128] ~ ~ ~ scoreboard players add @s tpa:posx 128
execute @e[tag=tpa:getpos_entity] 0.0 ~ ~ execute @s[rm=128] ~ ~ ~ tp ~-128.0 ~ ~

execute @e[tag=tpa:getpos_entity] 0.0 ~ ~ execute @s[rm=64] ~ ~ ~ scoreboard players add @s tpa:posx 64
execute @e[tag=tpa:getpos_entity] 0.0 ~ ~ execute @s[rm=64] ~ ~ ~ tp ~-64.0 ~ ~

execute @e[tag=tpa:getpos_entity] 0.0 ~ ~ execute @s[rm=32] ~ ~ ~ scoreboard players add @s tpa:posx 32
execute @e[tag=tpa:getpos_entity] 0.0 ~ ~ execute @s[rm=32] ~ ~ ~ tp ~-32.0 ~ ~

execute @e[tag=tpa:getpos_entity] 0.0 ~ ~ execute @s[rm=16] ~ ~ ~ scoreboard players add @s tpa:posx 16
execute @e[tag=tpa:getpos_entity] 0.0 ~ ~ execute @s[rm=16] ~ ~ ~ tp ~-16.0 ~ ~

execute @e[tag=tpa:getpos_entity] 0.0 ~ ~ execute @s[rm=8] ~ ~ ~ scoreboard players add @s tpa:posx 8
execute @e[tag=tpa:getpos_entity] 0.0 ~ ~ execute @s[rm=8] ~ ~ ~ tp ~-8.0 ~ ~

execute @e[tag=tpa:getpos_entity] 0.0 ~ ~ execute @s[rm=4] ~ ~ ~ scoreboard players add @s tpa:posx 4
execute @e[tag=tpa:getpos_entity] 0.0 ~ ~ execute @s[rm=4] ~ ~ ~ tp ~-4.0 ~ ~

execute @e[tag=tpa:getpos_entity] 0.0 ~ ~ execute @s[rm=2] ~ ~ ~ scoreboard players add @s tpa:posx 2
execute @e[tag=tpa:getpos_entity] 0.0 ~ ~ execute @s[rm=2] ~ ~ ~ tp ~-2.0 ~ ~

execute @e[tag=tpa:getpos_entity] 0.0 ~ ~ execute @s[rm=1] ~ ~ ~ scoreboard players add @s tpa:posx 1
execute @e[tag=tpa:getpos_entity] 0.0 ~ ~ execute @s[rm=1] ~ ~ ~ tp ~-1.0 ~ ~
#x



execute @e[tag=tpa:getpos_entity] ~ ~ 0.0 execute @s[rm=524288] ~ ~ ~ scoreboard players add @s tpa:posz 524288
execute @e[tag=tpa:getpos_entity] ~ ~ 0.0 execute @s[rm=524288] ~ ~ ~ tp ~ ~ ~-524288.0

execute @e[tag=tpa:getpos_entity] ~ ~ 0.0 execute @s[rm=262144] ~ ~ ~ scoreboard players add @s tpa:posz 262144
execute @e[tag=tpa:getpos_entity] ~ ~ 0.0 execute @s[rm=262144] ~ ~ ~ tp ~ ~ ~-262144.0

execute @e[tag=tpa:getpos_entity] ~ ~ 0.0 execute @s[rm=131072] ~ ~ ~ scoreboard players add @s tpa:posz 131072
execute @e[tag=tpa:getpos_entity] ~ ~ 0.0 execute @s[rm=131072] ~ ~ ~ tp ~ ~ ~-131072.0

execute @e[tag=tpa:getpos_entity] ~ ~ 0.0 execute @s[rm=65536] ~ ~ ~ scoreboard players add @s tpa:posz 65536
execute @e[tag=tpa:getpos_entity] ~ ~ 0.0 execute @s[rm=65536] ~ ~ ~ tp ~ ~ ~-65536.0

execute @e[tag=tpa:getpos_entity] ~ ~ 0.0 execute @s[rm=32768] ~ ~ ~ scoreboard players add @s tpa:posz 32768
execute @e[tag=tpa:getpos_entity] ~ ~ 0.0 execute @s[rm=32768] ~ ~ ~ tp ~ ~ ~-32768.0

execute @e[tag=tpa:getpos_entity] ~ ~ 0.0 execute @s[rm=16384] ~ ~ ~ scoreboard players add @s tpa:posz 16384
execute @e[tag=tpa:getpos_entity] ~ ~ 0.0 execute @s[rm=16384] ~ ~ ~ tp ~ ~ ~-16384.0

execute @e[tag=tpa:getpos_entity] ~ ~ 0.0 execute @s[rm=8192] ~ ~ ~ scoreboard players add @s tpa:posz 8192
execute @e[tag=tpa:getpos_entity] ~ ~ 0.0 execute @s[rm=8192] ~ ~ ~ tp ~ ~ ~-8192.0

execute @e[tag=tpa:getpos_entity] ~ ~ 0.0 execute @s[rm=4096] ~ ~ ~ scoreboard players add @s tpa:posz 4096
execute @e[tag=tpa:getpos_entity] ~ ~ 0.0 execute @s[rm=4096] ~ ~ ~ tp ~ ~ ~-4096.0

execute @e[tag=tpa:getpos_entity] ~ ~ 0.0 execute @s[rm=2048] ~ ~ ~ scoreboard players add @s tpa:posz 2048
execute @e[tag=tpa:getpos_entity] ~ ~ 0.0 execute @s[rm=2048] ~ ~ ~ tp ~ ~ ~-2048.0

execute @e[tag=tpa:getpos_entity] ~ ~ 0.0 execute @s[rm=1024] ~ ~ ~ scoreboard players add @s tpa:posz 1024
execute @e[tag=tpa:getpos_entity] ~ ~ 0.0 execute @s[rm=1024] ~ ~ ~ tp ~ ~ ~-1024.0

execute @e[tag=tpa:getpos_entity] ~ ~ 0.0 execute @s[rm=512] ~ ~ ~ scoreboard players add @s tpa:posz 512
execute @e[tag=tpa:getpos_entity] ~ ~ 0.0 execute @s[rm=512] ~ ~ ~ tp ~ ~ ~-512.0

execute @e[tag=tpa:getpos_entity] ~ ~ 0.0 execute @s[rm=256] ~ ~ ~ scoreboard players add @s tpa:posz 256
execute @e[tag=tpa:getpos_entity] ~ ~ 0.0 execute @s[rm=256] ~ ~ ~ tp ~ ~ ~-256.0

execute @e[tag=tpa:getpos_entity] ~ ~ 0.0 execute @s[rm=128] ~ ~ ~ scoreboard players add @s tpa:posz 128
execute @e[tag=tpa:getpos_entity] ~ ~ 0.0 execute @s[rm=128] ~ ~ ~ tp ~ ~ ~-128.0

execute @e[tag=tpa:getpos_entity] ~ ~ 0.0 execute @s[rm=64] ~ ~ ~ scoreboard players add @s tpa:posz 64
execute @e[tag=tpa:getpos_entity] ~ ~ 0.0 execute @s[rm=64] ~ ~ ~ tp ~ ~ ~-64.0

execute @e[tag=tpa:getpos_entity] ~ ~ 0.0 execute @s[rm=32] ~ ~ ~ scoreboard players add @s tpa:posz 32
execute @e[tag=tpa:getpos_entity] ~ ~ 0.0 execute @s[rm=32] ~ ~ ~ tp ~ ~ ~-32.0

execute @e[tag=tpa:getpos_entity] ~ ~ 0.0 execute @s[rm=16] ~ ~ ~ scoreboard players add @s tpa:posz 16
execute @e[tag=tpa:getpos_entity] ~ ~ 0.0 execute @s[rm=16] ~ ~ ~ tp ~ ~ ~-16.0

execute @e[tag=tpa:getpos_entity] ~ ~ 0.0 execute @s[rm=8] ~ ~ ~ scoreboard players add @s tpa:posz 8
execute @e[tag=tpa:getpos_entity] ~ ~ 0.0 execute @s[rm=8] ~ ~ ~ tp ~ ~ ~-8.0

execute @e[tag=tpa:getpos_entity] ~ ~ 0.0 execute @s[rm=4] ~ ~ ~ scoreboard players add @s tpa:posz 4
execute @e[tag=tpa:getpos_entity] ~ ~ 0.0 execute @s[rm=4] ~ ~ ~ tp ~ ~ ~-4.0

execute @e[tag=tpa:getpos_entity] ~ ~ 0.0 execute @s[rm=2] ~ ~ ~ scoreboard players add @s tpa:posz 2
execute @e[tag=tpa:getpos_entity] ~ ~ 0.0 execute @s[rm=2] ~ ~ ~ tp ~ ~ ~-2.0

execute @e[tag=tpa:getpos_entity] ~ ~ 0.0 execute @s[rm=1] ~ ~ ~ scoreboard players add @s tpa:posz 1
execute @e[tag=tpa:getpos_entity] ~ ~ 0.0 execute @s[rm=1] ~ ~ ~ tp ~ ~ ~-1.0
#z



execute @e[tag=tpa:getpos_entity] ~ 32767.0 ~ execute @s[rm=256] ~ ~ ~ scoreboard players add @s tpa:posy 256
execute @e[tag=tpa:getpos_entity] ~ 32767.0 ~ execute @s[rm=256] ~ ~ ~ tp ~ ~-256.0 ~

execute @e[tag=tpa:getpos_entity] ~ 32767.0 ~ execute @s[rm=128] ~ ~ ~ scoreboard players add @s tpa:posy 128
execute @e[tag=tpa:getpos_entity] ~ 32767.0 ~ execute @s[rm=128] ~ ~ ~ tp ~ ~-128.0 ~

execute @e[tag=tpa:getpos_entity] ~ 32767.0 ~ execute @s[rm=64] ~ ~ ~ scoreboard players add @s tpa:posy 64
execute @e[tag=tpa:getpos_entity] ~ 32767.0 ~ execute @s[rm=64] ~ ~ ~ tp ~ ~-64.0 ~

execute @e[tag=tpa:getpos_entity] ~ 32767.0 ~ execute @s[rm=32] ~ ~ ~ scoreboard players add @s tpa:posy 32
execute @e[tag=tpa:getpos_entity] ~ 32767.0 ~ execute @s[rm=32] ~ ~ ~ tp ~ ~-32.0 ~

execute @e[tag=tpa:getpos_entity] ~ 32767.0 ~ execute @s[rm=16] ~ ~ ~ scoreboard players add @s tpa:posy 16
execute @e[tag=tpa:getpos_entity] ~ 32767.0 ~ execute @s[rm=16] ~ ~ ~ tp ~ ~-16.0 ~

execute @e[tag=tpa:getpos_entity] ~ 32767.0 ~ execute @s[rm=8] ~ ~ ~ scoreboard players add @s tpa:posy 8
execute @e[tag=tpa:getpos_entity] ~ 32767.0 ~ execute @s[rm=8] ~ ~ ~ tp ~ ~-8.0 ~

execute @e[tag=tpa:getpos_entity] ~ 32767.0 ~ execute @s[rm=4] ~ ~ ~ scoreboard players add @s tpa:posy 4
execute @e[tag=tpa:getpos_entity] ~ 32767.0 ~ execute @s[rm=4] ~ ~ ~ tp ~ ~-4.0 ~

execute @e[tag=tpa:getpos_entity] ~ 32767.0 ~ execute @s[rm=2] ~ ~ ~ scoreboard players add @s tpa:posy 2
execute @e[tag=tpa:getpos_entity] ~ 32767.0 ~ execute @s[rm=2] ~ ~ ~ tp ~ ~-2.0 ~

execute @e[tag=tpa:getpos_entity] ~ 32767.0 ~ execute @s[rm=1] ~ ~ ~ scoreboard players add @s tpa:posy 1
execute @e[tag=tpa:getpos_entity] ~ 32767.0 ~ execute @s[rm=1] ~ ~ ~ tp ~ ~-1.0 ~
#y



execute @e[tag=tpa:getpos_entity,tag=tpa:getpos_x] ~ ~ ~ scoreboard players remove @s tpa:posx 1048575
execute @e[tag=tpa:getpos_entity,tag=tpa:getpos_y] ~ ~ ~ scoreboard players remove @s tpa:posy 511
execute @e[tag=tpa:getpos_entity,tag=tpa:getpos_z] ~ ~ ~ scoreboard players remove @s tpa:posz 1048575
#get_right_score(s)



execute @e[tag=tpa:getpos_entity_r] ~ ~ ~ scoreboard players operation @a[tag=tpa:getpos_request] tpa:posx = @s tpa:posx
execute @e[tag=tpa:getpos_entity_r] ~ ~ ~ scoreboard players operation @a[tag=tpa:getpos_request] tpa:posy = @s tpa:posy
execute @e[tag=tpa:getpos_entity_r] ~ ~ ~ scoreboard players operation @a[tag=tpa:getpos_request] tpa:posz = @s tpa:posz
#1
execute @e[tag=tpa:getpos_entity_t] ~ ~ ~ scoreboard players operation @a[tag=tpa:getpos_target] tpa:posx = @s tpa:posx
execute @e[tag=tpa:getpos_entity_t] ~ ~ ~ scoreboard players operation @a[tag=tpa:getpos_target] tpa:posy = @s tpa:posy
execute @e[tag=tpa:getpos_entity_t] ~ ~ ~ scoreboard players operation @a[tag=tpa:getpos_target] tpa:posz = @s tpa:posz
#2
#operation_=_scores



execute @a[tag=tpa:getpos_target] ~ ~ ~ tp @e[tag=tpa:getpos_entity] ~ -32767.0 ~
#teleport

execute @e[tag=tpa:getpos_entity] ~ ~ ~ kill @s
#clean_entities



execute @a[tag=tpa:getpos] ~ ~ ~ tag @s remove tpa:getpos
execute @a[tag=tpa:getpos_request] ~ ~ ~ tag @s remove tpa:getpos_request
execute @a[tag=tpa:getpos_target] ~ ~ ~ tag @s remove tpa:getpos_target
#tags_remove





#Author:Happy2018new
#Version:2.0
>>>>>>> d95f919c53aa8612409504198bbed77f930d5f64
#Type:tpa system专用型·已封装的api/system