scoreboard players add @e[tag=dl_libdb:scanner] dl_libdb:byte 0
scoreboard players add @e[tag=dl_libdb:scanner] dl_libdb:process 0
scoreboard players add @e[tag=dl_libdb:scanner] dl_libdb:math 0
scoreboard players add @e[tag=dl_libdb:scanner,scores={dl_libdb:process=0..3}] dl_libdb:process 1
# init



execute @e[tag=dl_libdb:scanner] ~ ~ ~ detect ~ ~ ~ minecraft:wool 0 scoreboard players set @s dl_libdb:byte 0
execute @e[tag=dl_libdb:scanner] ~ ~ ~ detect ~ ~ ~ minecraft:wool 1 scoreboard players set @s dl_libdb:byte 1
execute @e[tag=dl_libdb:scanner] ~ ~ ~ detect ~ ~ ~ minecraft:wool 2 scoreboard players set @s dl_libdb:byte 2
execute @e[tag=dl_libdb:scanner] ~ ~ ~ detect ~ ~ ~ minecraft:wool 3 scoreboard players set @s dl_libdb:byte 3
execute @e[tag=dl_libdb:scanner] ~ ~ ~ detect ~ ~ ~ minecraft:wool 4 scoreboard players set @s dl_libdb:byte 4
execute @e[tag=dl_libdb:scanner] ~ ~ ~ detect ~ ~ ~ minecraft:wool 5 scoreboard players set @s dl_libdb:byte 5
execute @e[tag=dl_libdb:scanner] ~ ~ ~ detect ~ ~ ~ minecraft:wool 6 scoreboard players set @s dl_libdb:byte 6
execute @e[tag=dl_libdb:scanner] ~ ~ ~ detect ~ ~ ~ minecraft:wool 7 scoreboard players set @s dl_libdb:byte 7
execute @e[tag=dl_libdb:scanner] ~ ~ ~ detect ~ ~ ~ minecraft:wool 8 scoreboard players set @s dl_libdb:byte 8
execute @e[tag=dl_libdb:scanner] ~ ~ ~ detect ~ ~ ~ minecraft:wool 9 scoreboard players set @s dl_libdb:byte 9
execute @e[tag=dl_libdb:scanner] ~ ~ ~ detect ~ ~ ~ minecraft:wool 10 scoreboard players set @s dl_libdb:byte 10
execute @e[tag=dl_libdb:scanner] ~ ~ ~ detect ~ ~ ~ minecraft:wool 11 scoreboard players set @s dl_libdb:byte 11
execute @e[tag=dl_libdb:scanner] ~ ~ ~ detect ~ ~ ~ minecraft:wool 12 scoreboard players set @s dl_libdb:byte 12
execute @e[tag=dl_libdb:scanner] ~ ~ ~ detect ~ ~ ~ minecraft:wool 13 scoreboard players set @s dl_libdb:byte 13
execute @e[tag=dl_libdb:scanner] ~ ~ ~ detect ~ ~ ~ minecraft:wool 14 scoreboard players set @s dl_libdb:byte 14
execute @e[tag=dl_libdb:scanner] ~ ~ ~ detect ~ ~ ~ minecraft:wool 15 scoreboard players set @s dl_libdb:byte 15
# get uint4



execute @e[tag=dl_libdb:scanner,scores={dl_libdb:process=1}] ~ ~ ~ scoreboard players operation @s dl_libdb:byte *= _4096 dl:settings
execute @e[tag=dl_libdb:scanner,scores={dl_libdb:process=2}] ~ ~ ~ scoreboard players operation @s dl_libdb:byte *= _256 dl:settings
execute @e[tag=dl_libdb:scanner,scores={dl_libdb:process=3}] ~ ~ ~ scoreboard players operation @s dl_libdb:byte *= _16 dl:settings

execute @e[tag=dl_libdb:scanner,scores={dl_libdb:process=1..4}] ~ ~ ~ scoreboard players operation @s dl_libdb:math += @s dl_libdb:byte
# get uint8(or in progress)



execute @e[tag=dl_libdb:scanner,scores={dl_libdb:process=4..}]