scoreboard players add @s bp:time 1
scoreboard players add @s bp:gb 0
execute @s[scores={bp:time=2..}] ~ ~ ~ tag @s add bp:random
#1

execute @s[scores={bp:time=2..},tag=bp:gb_down] ~ ~ ~ scoreboard players remove @s bp:gb 1
execute @s[scores={bp:time=2..},tag=!bp:gb_down] ~ ~ ~ scoreboard players add @s bp:gb 1
#2

execute @s[scores={bp:time=2..,bp:gb=..-1}] ~ ~ ~ tag @s remove bp:gb_down
execute @s[scores={bp:time=2..,bp:gb=..-1}] ~ ~ ~ scoreboard players set @s bp:gb 1
#//
execute @s[scores={bp:time=2..,bp:gb=5..}] ~ ~ ~ tag @s add bp:gb_down
execute @s[scores={bp:time=2..,bp:gb=5..}] ~ ~ ~ scoreboard players set @s bp:gb 3
#//
#3

execute @s[scores={bp:time=2..}] ~ ~ ~ scoreboard players reset @s bp:time
#4