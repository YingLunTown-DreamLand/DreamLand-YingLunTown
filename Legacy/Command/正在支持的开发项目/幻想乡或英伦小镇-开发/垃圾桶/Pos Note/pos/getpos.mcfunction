scoreboard objectives add posnote:posx dummy
scoreboard objectives add posnote:posz dummy
#scoreboard_add


execute @a[tag=posnote:random,tag=!posnote:had_noted] ~ ~ ~ tag @s add getpos
#1
execute @a[tag=getpos] ~ ~ ~ scoreboard players set @s posnote:posx 0
execute @a[tag=getpos] ~ ~ ~ scoreboard players set @s posnote:posz 0
#2
execute @a[tag=getpos] ~ ~ ~ summon minecraft:armor_stand getpos_mark
execute @a[tag=getpos] ~ ~ ~ summon minecraft:armor_stand getpos_entity
execute @a[tag=getpos] ~ ~ ~ summon minecraft:armor_stand getpos_entity_0
#3-1
execute @a[tag=getpos] ~ ~ ~ tag @e[r=3,type=armor_stand,name=getpos_mark,c=1] add getpos_mark
execute @a[tag=getpos] ~ ~ ~ tag @e[r=3,type=armor_stand,name=getpos_entity,c=1] add getpos_entity
execute @a[tag=getpos] ~ ~ ~ tag @e[r=3,type=armor_stand,name=getpos_entity_0,c=1] add getpos_entity_0
#3-2
#3
#prepare_0


execute @e[tag=getpos_entity] ~ ~ ~ execute @s[x=-1048575,dx=1048574] ~ ~ ~ tag @s add pos_fu
execute @e[tag=getpos_entity,tag=pos_fu] ~ ~ ~ tp ~1048575 ~ ~
execute @e[tag=getpos_entity_0] ~ ~ ~ tp 0 ~ ~
#prepare_1

execute @e[tag=getpos_entity_0] ~ ~ ~ scoreboard players add @e[tag=getpos_entity,rm=524288] posnote:posx 524288
execute @e[tag=getpos_entity_0] ~ ~ ~ execute @e[tag=getpos_entity,rm=524288] ~ ~ ~ tp ~-524288 ~ ~

execute @e[tag=getpos_entity_0] ~ ~ ~ scoreboard players add @e[tag=getpos_entity,rm=262144] posnote:posx 262144
execute @e[tag=getpos_entity_0] ~ ~ ~ execute @e[tag=getpos_entity,rm=262144] ~ ~ ~ tp ~-262144 ~ ~

execute @e[tag=getpos_entity_0] ~ ~ ~ scoreboard players add @e[tag=getpos_entity,rm=131072] posnote:posx 131072
execute @e[tag=getpos_entity_0] ~ ~ ~ execute @e[tag=getpos_entity,rm=131072] ~ ~ ~ tp ~-131072 ~ ~

execute @e[tag=getpos_entity_0] ~ ~ ~ scoreboard players add @e[tag=getpos_entity,rm=65536] posnote:posx 65536
execute @e[tag=getpos_entity_0] ~ ~ ~ execute @e[tag=getpos_entity,rm=65536] ~ ~ ~ tp ~-65536 ~ ~

execute @e[tag=getpos_entity_0] ~ ~ ~ scoreboard players add @e[tag=getpos_entity,rm=32768] posnote:posx 32768
execute @e[tag=getpos_entity_0] ~ ~ ~ execute @e[tag=getpos_entity,rm=32768] ~ ~ ~ tp ~-32768 ~ ~

execute @e[tag=getpos_entity_0] ~ ~ ~ scoreboard players add @e[tag=getpos_entity,rm=16384] posnote:posx 16384
execute @e[tag=getpos_entity_0] ~ ~ ~ execute @e[tag=getpos_entity,rm=16384] ~ ~ ~ tp ~-16384 ~ ~

execute @e[tag=getpos_entity_0] ~ ~ ~ scoreboard players add @e[tag=getpos_entity,rm=8192] posnote:posx 8192
execute @e[tag=getpos_entity_0] ~ ~ ~ execute @e[tag=getpos_entity,rm=8192] ~ ~ ~ tp ~-8192 ~ ~

execute @e[tag=getpos_entity_0] ~ ~ ~ scoreboard players add @e[tag=getpos_entity,rm=4096] posnote:posx 4096
execute @e[tag=getpos_entity_0] ~ ~ ~ execute @e[tag=getpos_entity,rm=4096] ~ ~ ~ tp ~-4096 ~ ~

execute @e[tag=getpos_entity_0] ~ ~ ~ scoreboard players add @e[tag=getpos_entity,rm=2048] posnote:posx 2048
execute @e[tag=getpos_entity_0] ~ ~ ~ execute @e[tag=getpos_entity,rm=2048] ~ ~ ~ tp ~-2048 ~ ~

execute @e[tag=getpos_entity_0] ~ ~ ~ scoreboard players add @e[tag=getpos_entity,rm=1024] posnote:posx 1024
execute @e[tag=getpos_entity_0] ~ ~ ~ execute @e[tag=getpos_entity,rm=1024] ~ ~ ~ tp ~-1024 ~ ~

execute @e[tag=getpos_entity_0] ~ ~ ~ scoreboard players add @e[tag=getpos_entity,rm=512] posnote:posx 512
execute @e[tag=getpos_entity_0] ~ ~ ~ execute @e[tag=getpos_entity,rm=512] ~ ~ ~ tp ~-512 ~ ~

execute @e[tag=getpos_entity_0] ~ ~ ~ scoreboard players add @e[tag=getpos_entity,rm=256] posnote:posx 256
execute @e[tag=getpos_entity_0] ~ ~ ~ execute @e[tag=getpos_entity,rm=256] ~ ~ ~ tp ~-256 ~ ~

execute @e[tag=getpos_entity_0] ~ ~ ~ scoreboard players add @e[tag=getpos_entity,rm=128] posnote:posx 128
execute @e[tag=getpos_entity_0] ~ ~ ~ execute @e[tag=getpos_entity,rm=128] ~ ~ ~ tp ~-128 ~ ~

execute @e[tag=getpos_entity_0] ~ ~ ~ scoreboard players add @e[tag=getpos_entity,rm=64] posnote:posx 64
execute @e[tag=getpos_entity_0] ~ ~ ~ execute @e[tag=getpos_entity,rm=64] ~ ~ ~ tp ~-64 ~ ~

execute @e[tag=getpos_entity_0] ~ ~ ~ scoreboard players add @e[tag=getpos_entity,rm=32] posnote:posx 32
execute @e[tag=getpos_entity_0] ~ ~ ~ execute @e[tag=getpos_entity,rm=32] ~ ~ ~ tp ~-32 ~ ~

execute @e[tag=getpos_entity_0] ~ ~ ~ scoreboard players add @e[tag=getpos_entity,rm=16] posnote:posx 16
execute @e[tag=getpos_entity_0] ~ ~ ~ execute @e[tag=getpos_entity,rm=16] ~ ~ ~ tp ~-16 ~ ~

execute @e[tag=getpos_entity_0] ~ ~ ~ scoreboard players add @e[tag=getpos_entity,rm=8] posnote:posx 8
execute @e[tag=getpos_entity_0] ~ ~ ~ execute @e[tag=getpos_entity,rm=8] ~ ~ ~ tp ~-8 ~ ~

execute @e[tag=getpos_entity_0] ~ ~ ~ scoreboard players add @e[tag=getpos_entity,rm=4] posnote:posx 4
execute @e[tag=getpos_entity_0] ~ ~ ~ execute @e[tag=getpos_entity,rm=4] ~ ~ ~ tp ~-4 ~ ~

execute @e[tag=getpos_entity_0] ~ ~ ~ scoreboard players add @e[tag=getpos_entity,rm=2] posnote:posx 2
execute @e[tag=getpos_entity_0] ~ ~ ~ execute @e[tag=getpos_entity,rm=2] ~ ~ ~ tp ~-2 ~ ~

execute @e[tag=getpos_entity_0] ~ ~ ~ scoreboard players add @e[tag=getpos_entity,rm=1] posnote:posx 1
execute @e[tag=getpos_entity_0] ~ ~ ~ execute @e[tag=getpos_entity,rm=1] ~ ~ ~ tp ~-1 ~ ~

execute @e[tag=getpos_entity,tag=pos_fu] ~ ~ ~ scoreboard players remove @s posnote:posx 1048575
#mark



execute @e[tag=pos_fu] ~ ~ ~ tag @s remove pos_fu
execute @e[tag=getpos_entity] ~ ~ ~ tp @e[tag=getpos_mark]
execute @e[tag=getpos_entity_0] ~ ~ ~ tp @e[tag=getpos_mark]
#tag_set_and_fix_port


execute @e[tag=getpos_entity] ~ ~ ~ execute @s[z=-2048,dz=2047] ~ ~ ~ tag @s add pos_fu
execute @e[tag=getpos_entity,tag=pos_fu] ~ ~ ~ tp ~ ~ ~2048
execute @e[tag=getpos_entity_0] ~ ~ ~ tp ~ ~ 0
#new_prepare


execute @e[tag=getpos_entity_0] ~ ~ ~ scoreboard players add @e[tag=getpos_entity,rm=524288] posnote:posz 524288
execute @e[tag=getpos_entity_0] ~ ~ ~ execute @e[tag=getpos_entity,rm=524288] ~ ~ ~ tp ~ ~ ~-524288

execute @e[tag=getpos_entity_0] ~ ~ ~ scoreboard players add @e[tag=getpos_entity,rm=262144] posnote:posz 262144
execute @e[tag=getpos_entity_0] ~ ~ ~ execute @e[tag=getpos_entity,rm=262144] ~ ~ ~ tp ~ ~ ~-262144

execute @e[tag=getpos_entity_0] ~ ~ ~ scoreboard players add @e[tag=getpos_entity,rm=131072] posnote:posz 131072
execute @e[tag=getpos_entity_0] ~ ~ ~ execute @e[tag=getpos_entity,rm=131072] ~ ~ ~ tp ~ ~ ~-131072

execute @e[tag=getpos_entity_0] ~ ~ ~ scoreboard players add @e[tag=getpos_entity,rm=65536] posnote:posz 65536
execute @e[tag=getpos_entity_0] ~ ~ ~ execute @e[tag=getpos_entity,rm=65536] ~ ~ ~ tp ~ ~ ~-65536

execute @e[tag=getpos_entity_0] ~ ~ ~ scoreboard players add @e[tag=getpos_entity,rm=32768] posnote:posz 32768
execute @e[tag=getpos_entity_0] ~ ~ ~ execute @e[tag=getpos_entity,rm=32768] ~ ~ ~ tp ~ ~ ~-32768

execute @e[tag=getpos_entity_0] ~ ~ ~ scoreboard players add @e[tag=getpos_entity,rm=16384] posnote:posz 16384
execute @e[tag=getpos_entity_0] ~ ~ ~ execute @e[tag=getpos_entity,rm=16384] ~ ~ ~ tp ~ ~ ~-16384

execute @e[tag=getpos_entity_0] ~ ~ ~ scoreboard players add @e[tag=getpos_entity,rm=8192] posnote:posz 8192
execute @e[tag=getpos_entity_0] ~ ~ ~ execute @e[tag=getpos_entity,rm=8192] ~ ~ ~ tp ~ ~ ~-8192

execute @e[tag=getpos_entity_0] ~ ~ ~ scoreboard players add @e[tag=getpos_entity,rm=4096] posnote:posz 4096
execute @e[tag=getpos_entity_0] ~ ~ ~ execute @e[tag=getpos_entity,rm=4096] ~ ~ ~ tp ~ ~ ~-4096

execute @e[tag=getpos_entity_0] ~ ~ ~ scoreboard players add @e[tag=getpos_entity,rm=2048] posnote:posz 2048
execute @e[tag=getpos_entity_0] ~ ~ ~ execute @e[tag=getpos_entity,rm=2048] ~ ~ ~ tp ~ ~ ~-2048

execute @e[tag=getpos_entity_0] ~ ~ ~ scoreboard players add @e[tag=getpos_entity,rm=1024] posnote:posz 1024
execute @e[tag=getpos_entity_0] ~ ~ ~ execute @e[tag=getpos_entity,rm=1024] ~ ~ ~ tp ~ ~ ~-1024

execute @e[tag=getpos_entity_0] ~ ~ ~ scoreboard players add @e[tag=getpos_entity,rm=512] posnote:posz 512
execute @e[tag=getpos_entity_0] ~ ~ ~ execute @e[tag=getpos_entity,rm=512] ~ ~ ~ tp ~ ~ ~-512

execute @e[tag=getpos_entity_0] ~ ~ ~ scoreboard players add @e[tag=getpos_entity,rm=256] posnote:posz 256
execute @e[tag=getpos_entity_0] ~ ~ ~ execute @e[tag=getpos_entity,rm=256] ~ ~ ~ tp ~ ~ ~-256

execute @e[tag=getpos_entity_0] ~ ~ ~ scoreboard players add @e[tag=getpos_entity,rm=128] posnote:posz 128
execute @e[tag=getpos_entity_0] ~ ~ ~ execute @e[tag=getpos_entity,rm=128] ~ ~ ~ tp ~ ~ ~-128

execute @e[tag=getpos_entity_0] ~ ~ ~ scoreboard players add @e[tag=getpos_entity,rm=64] posnote:posz 64
execute @e[tag=getpos_entity_0] ~ ~ ~ execute @e[tag=getpos_entity,rm=64] ~ ~ ~ tp ~ ~ ~-64

execute @e[tag=getpos_entity_0] ~ ~ ~ scoreboard players add @e[tag=getpos_entity,rm=32] posnote:posz 32
execute @e[tag=getpos_entity_0] ~ ~ ~ execute @e[tag=getpos_entity,rm=32] ~ ~ ~ tp ~ ~ ~-32

execute @e[tag=getpos_entity_0] ~ ~ ~ scoreboard players add @e[tag=getpos_entity,rm=16] posnote:posz 16
execute @e[tag=getpos_entity_0] ~ ~ ~ execute @e[tag=getpos_entity,rm=16] ~ ~ ~ tp ~ ~ ~-16

execute @e[tag=getpos_entity_0] ~ ~ ~ scoreboard players add @e[tag=getpos_entity,rm=8] posnote:posz 8
execute @e[tag=getpos_entity_0] ~ ~ ~ execute @e[tag=getpos_entity,rm=8] ~ ~ ~ tp ~ ~ ~-8

execute @e[tag=getpos_entity_0] ~ ~ ~ scoreboard players add @e[tag=getpos_entity,rm=4] posnote:posz 4
execute @e[tag=getpos_entity_0] ~ ~ ~ execute @e[tag=getpos_entity,rm=4] ~ ~ ~ tp ~ ~ ~-4

execute @e[tag=getpos_entity_0] ~ ~ ~ scoreboard players add @e[tag=getpos_entity,rm=2] posnote:posz 2
execute @e[tag=getpos_entity_0] ~ ~ ~ execute @e[tag=getpos_entity,rm=2] ~ ~ ~ tp ~ ~ ~-2

execute @e[tag=getpos_entity_0] ~ ~ ~ scoreboard players add @e[tag=getpos_entity,rm=1] posnote:posz 1
execute @e[tag=getpos_entity_0] ~ ~ ~ execute @e[tag=getpos_entity,rm=1] ~ ~ ~ tp ~ ~ ~-1


execute @e[tag=getpos_entity,tag=pos_fu] ~ ~ ~ scoreboard players remove @s posnote:posz 1048575
#mark


execute @e[tag=getpos_entity] ~ ~ ~ scoreboard players operation @a[tag=getpos] posnote:posx = @s posnote:posx
execute @e[tag=getpos_entity] ~ ~ ~ scoreboard players operation @a[tag=getpos] posnote:posy = @s posnote:posy
execute @e[tag=getpos_entity] ~ ~ ~ scoreboard players operation @a[tag=getpos] posnote:posz = @s posnote:posz
#pos_return


execute @e[tag=getpos_entity] ~ ~ ~ scoreboard players reset @s
execute @e[tag=getpos_entity] ~ ~ ~ tp ~ -32767.0 ~
execute @e[tag=getpos_entity_0] ~ ~ ~ tp ~ -32767.0 ~
execute @e[tag=getpos_mark] ~ ~ ~ tp ~ -32767.0 ~
execute @e[tag=getpos_entity] ~ ~ ~ kill @s
execute @e[tag=getpos_entity_0] ~ ~ ~ kill @s
execute @e[tag=getpos_mark] ~ ~ ~ kill @s
#clear_score(s)_and_kill_entities


execute @a[tag=getpos] ~ ~ ~ tag @s remove getpos
#tags_remove