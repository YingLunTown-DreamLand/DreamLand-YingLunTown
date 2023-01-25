execute @e[tag=random:part] ~ ~ ~ scoreboard players random @s random:wsr 0 9
# random

execute @e[tag=random:part] ~ ~ ~ scoreboard players operation @s random:wsrs = @s random:wsr
execute @e[tag=random:part] ~ ~ ~ scoreboard players operation @s random:wsrs -= @s random:pr
# get_situation

execute @e[tag=random:sx_error] ~ ~ ~ tag @s remove random:sx_error
execute @e[tag=random:part] ~ ~ ~ tag @s add random:sx_list
execute @e[tag=random:part,c=1] ~ ~ ~ function random_same_sx
# random_same_sx

execute @e[tag=random:sx_error] ~ ~ ~ function random_same_get
# random_same_get