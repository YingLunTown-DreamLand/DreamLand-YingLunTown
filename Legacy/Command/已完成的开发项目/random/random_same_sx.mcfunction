execute @e[tag=random:sx_list_choose] ~ ~ ~ tag @s remove random:sx_list_choose
scoreboard players set random:sx random 0
scoreboard players operation random:sx random > @e[tag=random:sx_list] random:ws
execute @e[tag=random:sx_list] ~ ~ ~ scoreboard players operation @s random:wss = @s random:ws
execute @e[tag=random:sx_list] ~ ~ ~ scoreboard players operation @s random:wss -= random:sx random
execute @e[tag=random:sx_list,scores={random:wss=0}] ~ ~ ~ tag @s add random:sx_list_choose
execute @e[tag=random:sx_list_choose] ~ ~ ~ tag @s remove random:sx_list
execute @e[tag=random:sx_list_choose,scores={random:wsrs=1..}] ~ ~ ~ tag @s add random:sx_error
execute @e[tag=random:sx_list_choose,scores={random:wsrs=0}] ~ ~ ~ function random_same_sx
# random_same_sx