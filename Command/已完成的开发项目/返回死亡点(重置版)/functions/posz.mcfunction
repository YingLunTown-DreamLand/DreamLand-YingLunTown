summon minecraft:armor_stand player
summon minecraft:armor_stand entity
tag @e[type=minecraft:armor_stand,c=1,name=player] add player
tag @e[type=minecraft:armor_stand,c=1,name=entity] add entity
scoreboard players set @e[tag=player] posz 0
#restart
execute @e[tag=player,z=-524288,dz=524287] ~ ~ ~ tag @s add pos_fu
execute @e[tag=player,z=-524288,dz=524287] ~ ~ ~ tp ~ ~ ~524288
execute @e[tag=entity] ~ ~ ~ tp ~ ~ 0
#start
execute @e[tag=entity] ~ ~ ~ execute @e[tag=player,rm=524288] ~ ~ ~ scoreboard players add @s posz 524288
execute @e[tag=player] ~ ~ ~ execute @e[tag=entity,rm=524288] ~ ~ ~ tp ~ ~ ~524288
execute @e[tag=entity] ~ ~ ~ execute @e[tag=player,rm=262144] ~ ~ ~ scoreboard players add @s posz 262144
execute @e[tag=player] ~ ~ ~ execute @e[tag=entity,rm=262144] ~ ~ ~ tp ~ ~ ~262144
execute @e[tag=entity] ~ ~ ~ execute @e[tag=player,rm=131072] ~ ~ ~ scoreboard players add @s posz 131072
execute @e[tag=player] ~ ~ ~ execute @e[tag=entity,rm=131072] ~ ~ ~ tp ~ ~ ~131072
execute @e[tag=entity] ~ ~ ~ execute @e[tag=player,rm=65536] ~ ~ ~ scoreboard players add @s posz 65536
execute @e[tag=player] ~ ~ ~ execute @e[tag=entity,rm=65536] ~ ~ ~ tp ~ ~ ~65536
execute @e[tag=entity] ~ ~ ~ execute @e[tag=player,rm=32768] ~ ~ ~ scoreboard players add @s posz 32768
execute @e[tag=player] ~ ~ ~ execute @e[tag=entity,rm=32768] ~ ~ ~ tp ~ ~ ~32768
execute @e[tag=entity] ~ ~ ~ execute @e[tag=player,rm=16384] ~ ~ ~ scoreboard players add @s posz 16384
execute @e[tag=player] ~ ~ ~ execute @e[tag=entity,rm=16384] ~ ~ ~ tp ~ ~ ~16384
execute @e[tag=entity] ~ ~ ~ execute @e[tag=player,rm=8192] ~ ~ ~ scoreboard players add @s posz 8192
execute @e[tag=player] ~ ~ ~ execute @e[tag=entity,rm=8192] ~ ~ ~ tp ~ ~ ~8192
execute @e[tag=entity] ~ ~ ~ execute @e[tag=player,rm=4096] ~ ~ ~ scoreboard players add @s posz 4096
execute @e[tag=player] ~ ~ ~ execute @e[tag=entity,rm=4096] ~ ~ ~ tp ~ ~ ~4096
execute @e[tag=entity] ~ ~ ~ execute @e[tag=player,rm=2048] ~ ~ ~ scoreboard players add @s posz 2048
execute @e[tag=player] ~ ~ ~ execute @e[tag=entity,rm=2048] ~ ~ ~ tp ~ ~ ~2048
execute @e[tag=entity] ~ ~ ~ execute @e[tag=player,rm=1024] ~ ~ ~ scoreboard players add @s posz 1024
execute @e[tag=player] ~ ~ ~ execute @e[tag=entity,rm=1024] ~ ~ ~ tp ~ ~ ~1024
execute @e[tag=entity] ~ ~ ~ execute @e[tag=player,rm=512] ~ ~ ~ scoreboard players add @s posz 512
execute @e[tag=player] ~ ~ ~ execute @e[tag=entity,rm=512] ~ ~ ~ tp ~ ~ ~512
execute @e[tag=entity] ~ ~ ~ execute @e[tag=player,rm=256] ~ ~ ~ scoreboard players add @s posz 256
execute @e[tag=player] ~ ~ ~ execute @e[tag=entity,rm=256] ~ ~ ~ tp ~ ~ ~256
execute @e[tag=entity] ~ ~ ~ execute @e[tag=player,rm=128] ~ ~ ~ scoreboard players add @s posz 128
execute @e[tag=player] ~ ~ ~ execute @e[tag=entity,rm=128] ~ ~ ~ tp ~ ~ ~128
execute @e[tag=entity] ~ ~ ~ execute @e[tag=player,rm=64] ~ ~ ~ scoreboard players add @s posz 64
execute @e[tag=player] ~ ~ ~ execute @e[tag=entity,rm=64] ~ ~ ~ tp ~ ~ ~64
execute @e[tag=entity] ~ ~ ~ execute @e[tag=player,rm=32] ~ ~ ~ scoreboard players add @s posz 32
execute @e[tag=player] ~ ~ ~ execute @e[tag=entity,rm=32] ~ ~ ~ tp ~ ~ ~32
execute @e[tag=entity] ~ ~ ~ execute @e[tag=player,rm=16] ~ ~ ~ scoreboard players add @s posz 16
execute @e[tag=player] ~ ~ ~ execute @e[tag=entity,rm=16] ~ ~ ~ tp ~ ~ ~16
execute @e[tag=entity] ~ ~ ~ execute @e[tag=player,rm=8] ~ ~ ~ scoreboard players add @s posz 8
execute @e[tag=player] ~ ~ ~ execute @e[tag=entity,rm=8] ~ ~ ~ tp ~ ~ ~8
execute @e[tag=entity] ~ ~ ~ execute @e[tag=player,rm=4] ~ ~ ~ scoreboard players add @s posz 4
execute @e[tag=player] ~ ~ ~ execute @e[tag=entity,rm=4] ~ ~ ~ tp ~ ~ ~4
execute @e[tag=entity] ~ ~ ~ execute @e[tag=player,rm=2] ~ ~ ~ scoreboard players add @s posz 2
execute @e[tag=player] ~ ~ ~ execute @e[tag=entity,rm=2] ~ ~ ~ tp ~ ~ ~2
execute @e[tag=entity] ~ ~ ~ execute @e[tag=player,rm=1] ~ ~ ~ scoreboard players add @s posz 1
execute @e[tag=player] ~ ~ ~ execute @e[tag=entity,rm=1] ~ ~ ~ tp ~ ~ ~1
#get_pos
execute @e[tag=pos_fu] ~ ~ ~ scoreboard players add @s posz -524288
scoreboard players operation @s posz = @e[tag=player] posz
#execute_fu_and_operation_score
execute @e[tag=entity] ~ ~ ~ tp ~ ~ ~ ~32767 ~
execute @e[tag=player] ~ ~ ~ tp ~ ~ ~ ~32767 ~
execute @e[tag=entity] ~ ~ ~ kill @s
execute @e[tag=player] ~ ~ ~ kill @s
#kill