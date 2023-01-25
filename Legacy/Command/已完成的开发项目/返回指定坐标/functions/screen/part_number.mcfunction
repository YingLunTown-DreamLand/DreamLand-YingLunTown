execute @s[scores={bp:math=!0}] ~ ~ ~ summon minecraft:armor_stand bp:part_number_result ~ 32767.0 ~
execute @s[scores={bp:math=!0}] ~ ~ ~ scoreboard players operation @s bp:ws_uid = @s bp:math
execute @s[scores={bp:math=!0}] ~ ~ ~ scoreboard players operation @s bp:ws_number = @s bp:math
#1

execute @s[scores={bp:math=!0}] ~ ~ ~ scoreboard players operation @s bp:ws_uid %= ten bp:math
execute @s[scores={bp:math=!0}] ~ ~ ~ scoreboard players operation @s  bp:ws_number /= ten bp:math
execute @s[scores={bp:math=!0,bp:ws_uid=..-1,bp:ws_number=!0}] ~ ~ ~ scoreboard players operation @s bp:ws_uid *= fu bp:math
execute @s[scores={bp:math=!0}] ~ ~ ~ scoreboard players operation @e[name=bp:part_number_result,y=32767.0,c=1,dx=0,r=3,tag=!bp:part_number_result] bp:ws_number = @s bp:ws_uid
#//
execute @s[scores={bp:math=!0}] ~ ~ ~ scoreboard players add uid bp:ws_uid 1
execute @s[scores={bp:math=!0}] ~ ~ ~ scoreboard players operation @e[name=bp:part_number_result,y=32767.0,c=1,dx=0,r=3,tag=!bp:part_number_result] bp:ws_uid = uid bp:ws_uid
#//
execute @s[scores={bp:math=!0}] ~ ~ ~ tag @e[name=bp:part_number_result,y=32767.0,c=1,dx=0,r=3,tag=!bp:part_number_result] add bp:part_number_result
#//
execute @s[scores={bp:math=!0}] ~ ~ ~ scoreboard players reset @s bp:ws_uid
execute @s[scores={bp:math=!0}] ~ ~ ~ scoreboard players reset @s bp:ws_number
execute @s[scores={bp:math=!0}] ~ ~ ~ scoreboard players operation @s bp:math /= ten bp:math
#//
#2

execute @s[scores={bp:math=!0}] ~ ~ ~ function screen/part_number
#3