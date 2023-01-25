summon minecraft:armor_stand random:part
tag @e[type=minecraft:armor_stand,name=random:part,dx=0,c=1,tag=!random:part] add random:parting
scoreboard players operation @e[tag=random:parting] random:pr = @s random
scoreboard players operation @e[tag=random:parting] random:pr %= ten random
scoreboard players operation @s random /= ten random
scoreboard players add ws random 1
scoreboard players operation @e[tag=random:parting] random:ws = ws random
tag @e[tag=random:parting] add random:part
tag @e[tag=random:parting] remove random:parting
execute @e[tag=random:helper,scores={random=!0}] ~ ~ ~ function random_same_part
# random_same_part