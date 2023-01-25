scoreboard objectives add random dummy
scoreboard objectives add random:pr dummy
scoreboard objectives add random:ws dummy
scoreboard objectives add random:wss dummy
scoreboard objectives add random:wsr dummy
scoreboard objectives add random:wsrs dummy
# scoreboard_add

scoreboard players add number1 random 0
scoreboard players add number2 random 0
scoreboard players set fu random -1
scoreboard players set ten random 10
# scores_reset

scoreboard players operation save random = number1 random
scoreboard players operation save random -= number2 random
# math

summon minecraft:armor_stand random:helper
tag @e[name=random:helper,type=minecraft:armor_stand,dx=0,c=1] add random:helper
scoreboard players operation @e[tag=random:helper] random = save random
# score_operation_=

execute @e[scores={random=..-1},tag=random:helper] ~ ~ ~ scoreboard players operation @s random *= fu random
# get_zheng

scoreboard players set ws random 0
execute @e[tag=random:helper] ~ ~ ~ function random_same_part
execute @e[tag=random:helper] ~ ~ ~ tp ~ -32767.0 ~
execute @e[tag=random:helper] ~ ~ ~ kill @s
# random_same_part

execute @e[tag=random:part,c=1] ~ ~ ~ function random_same_get
# random_same_get

execute @e[tag=random:part] ~ ~ ~ function random_result_return
# random_result_return

scoreboard players operation save_0 random = number1 random
scoreboard players operation save_0 random < number2 random
scoreboard players operation save_0 random += @e[tag=random:part] random:wsr
scoreboard players operation result random = save_0 random
# get_result

execute @e[tag=random:part] ~ ~ ~ scoreboard players reset @s
execute @e[tag=random:part] ~ ~ ~ tp ~ -32767.0 ~
execute @e[tag=random:part] ~ ~ ~ kill @s
tellraw @a[tag=random:get_result] {"rawtext":[{"text":"§bRandom("},{"score":{"objective":"random","name":"number1"}},{"text":", "},{"score":{"objective":"random","name":"number2"}},{"text":") == "},{"score":{"objective":"random","name":"result"}}]}
# end1

scoreboard players reset fu random
scoreboard players reset ten random
scoreboard players reset save random
scoreboard players reset save_0 random
scoreboard players reset ws random
scoreboard players reset random:sx random
# end2

scoreboard objectives remove random:pr
scoreboard objectives remove random:ws
scoreboard objectives remove random:wss
scoreboard objectives remove random:wsr
scoreboard objectives remove random:wsrs
# end3