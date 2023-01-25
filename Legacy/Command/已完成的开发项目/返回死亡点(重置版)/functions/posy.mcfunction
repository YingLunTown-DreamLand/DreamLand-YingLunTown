summon minecraft:armor_stand player
summon minecraft:armor_stand entity
tag @e[type=minecraft:armor_stand,c=1,name=player] add player
tag @e[type=minecraft:armor_stand,c=1,name=entity] add entity
scoreboard players set @e[tag=player] posy 0
#restart
execute @e[tag=entity] ~ ~ ~ tp ~ 0 ~
#start
execute @e[tag=entity] ~ ~ ~ execute @e[tag=player,rm=256] ~ ~ ~ scoreboard players add @s posy 256
execute @e[tag=player] ~ ~ ~ execute @e[tag=entity,rm=256] ~ ~ ~ tp ~ ~256 ~
execute @e[tag=entity] ~ ~ ~ execute @e[tag=player,rm=128] ~ ~ ~ scoreboard players add @s posy 128
execute @e[tag=player] ~ ~ ~ execute @e[tag=entity,rm=128] ~ ~ ~ tp ~ ~128 ~
execute @e[tag=entity] ~ ~ ~ execute @e[tag=player,rm=64] ~ ~ ~ scoreboard players add @s posy 64
execute @e[tag=player] ~ ~ ~ execute @e[tag=entity,rm=64] ~ ~ ~ tp ~ ~64 ~
execute @e[tag=entity] ~ ~ ~ execute @e[tag=player,rm=32] ~ ~ ~ scoreboard players add @s posy 32
execute @e[tag=player] ~ ~ ~ execute @e[tag=entity,rm=32] ~ ~ ~ tp ~ ~32 ~
execute @e[tag=entity] ~ ~ ~ execute @e[tag=player,rm=16] ~ ~ ~ scoreboard players add @s posy 16
execute @e[tag=player] ~ ~ ~ execute @e[tag=entity,rm=16] ~ ~ ~ tp ~ ~16 ~
execute @e[tag=entity] ~ ~ ~ execute @e[tag=player,rm=8] ~ ~ ~ scoreboard players add @s posy 8
execute @e[tag=player] ~ ~ ~ execute @e[tag=entity,rm=8] ~ ~ ~ tp ~ ~8 ~
execute @e[tag=entity] ~ ~ ~ execute @e[tag=player,rm=4] ~ ~ ~ scoreboard players add @s posy 4
execute @e[tag=player] ~ ~ ~ execute @e[tag=entity,rm=4] ~ ~ ~ tp ~ ~4 ~
execute @e[tag=entity] ~ ~ ~ execute @e[tag=player,rm=2] ~ ~ ~ scoreboard players add @s posy 2
execute @e[tag=player] ~ ~ ~ execute @e[tag=entity,rm=2] ~ ~ ~ tp ~ ~2 ~
execute @e[tag=entity] ~ ~ ~ execute @e[tag=player,rm=1] ~ ~ ~ scoreboard players add @s posy 1
execute @e[tag=player] ~ ~ ~ execute @e[tag=entity,rm=1] ~ ~ ~ tp ~ ~1 ~
#get_pos
scoreboard players operation @s posy = @e[tag=player] posy
#operation_score
execute @e[tag=entity] ~ ~ ~ tp ~ ~ ~32767 ~
execute @e[tag=player] ~ ~ ~ tp ~ ~ ~32767 ~
execute @e[tag=entity] ~ ~ ~ kill @s
execute @e[tag=player] ~ ~ ~ kill @s
#kill