scoreboard objectives add bp:ws_number dummy
scoreboard objectives add bp:ws_uid dummy
scoreboard objectives add bp:wsu_save dummy
#//
scoreboard players reset * bp:math
scoreboard players set ten bp:math 10
scoreboard players set fu bp:math -1
#//
#1

tag @s[scores={bp:keyboard=-2147483648..2147483647}] add bp:screen_true
#//
execute @s[tag=bp:screen_true] ~ ~ ~ scoreboard players operation @s bp:math = @s bp:keyboard
scoreboard players set uid bp:ws_uid 0
#/
execute @s[tag=bp:screen_true] ~ ~ ~ summon minecraft:armor_stand bp:part_number_result ~ 32767.0 ~
execute @s[tag=bp:screen_true] ~ ~ ~ scoreboard players operation @s bp:ws_uid = @s bp:math
execute @s[tag=bp:screen_true] ~ ~ ~ scoreboard players operation @s bp:ws_number = @s bp:math
execute @s[tag=bp:screen_true] ~ ~ ~ scoreboard players operation @s bp:ws_uid %= ten bp:math
execute @s[tag=bp:screen_true] ~ ~ ~ scoreboard players operation @s  bp:ws_number /= ten bp:math
execute @s[tag=bp:screen_true,scores={bp:ws_uid=..-1,bp:ws_number=!0}] ~ ~ ~ scoreboard players operation @s bp:ws_uid *= fu bp:math
execute @s[tag=bp:screen_true] ~ ~ ~ scoreboard players operation @e[name=bp:part_number_result,y=32767.0,c=1,dx=0,r=3,tag=!bp:part_number_result] bp:ws_number = @s bp:ws_uid
execute @s[tag=bp:screen_true] ~ ~ ~ scoreboard players add uid bp:ws_uid 1
execute @s[tag=bp:screen_true] ~ ~ ~ scoreboard players operation @e[name=bp:part_number_result,y=32767.0,c=1,dx=0,r=3,tag=!bp:part_number_result] bp:ws_uid = uid bp:ws_uid
execute @s[tag=bp:screen_true] ~ ~ ~ tag @e[name=bp:part_number_result,y=32767.0,c=1,dx=0,r=3,tag=!bp:part_number_result] add bp:part_number_result
execute @s[tag=bp:screen_true] ~ ~ ~ scoreboard players reset @s bp:ws_uid
execute @s[tag=bp:screen_true] ~ ~ ~ scoreboard players reset @s bp:ws_number
execute @s[tag=bp:screen_true] ~ ~ ~ scoreboard players operation @s bp:math /= ten bp:math
execute @s[tag=bp:screen_true,scores={bp:math=!0}] ~ ~ ~ function screen/part_number
#/
#//
execute @s[tag=bp:screen_true] ~ ~ ~ scoreboard players operation @s bp:math = @s bp:ws
scoreboard players set uid bp:ws_uid 10
execute @s[tag=bp:screen_true] ~ ~ ~ function screen/part_number
execute @s[tag=bp:screen_true] ~ ~ ~ tag @s remove bp:screen_true
#//
scoreboard players operation result bp:math > @e[tag=bp:part_number_result] bp:ws_uid
scoreboard players remove result bp:math 11
#//
execute @e[tag=bp:part_number_result,scores={bp:ws_uid=..10}] ~ ~ ~ scoreboard players operation @s bp:wsu_save = @s bp:ws_uid
execute @e[tag=bp:part_number_result,scores={bp:ws_uid=..10}] ~ ~ ~ scoreboard players operation @s bp:wsu_save -= result bp:math
#//
execute @e[tag=bp:part_number_result,scores={bp:ws_uid=..10,bp:wsu_save=1..}] ~ ~ ~ tag @s add bp:fonts_sort_0
execute @e[tag=bp:part_number_result,scores={bp:ws_uid=..10,bp:wsu_save=..0}] ~ ~ ~ tag @s add bp:fonts_sort_1
#//
#2

scoreboard objectives remove bp:wsu_save
#3
#get_information