scoreboard players reset * random
scoreboard players reset * random_0
scoreboard players random @a[tag=wantpos] random 1 32767
tag @a[tag=wantpos,tag=!random,c=1] add random
execute @a[tag=wantpos] ~~~scoreboard players operation @s random_0 = @s random
execute @a[tag=random] ~~~scoreboard players operation @s random_0 > @a[tag=wantpos] random_0
execute @a[tag=random] ~~~scoreboard players operation @a[tag=wantpos] random -= @s random_0
tag @a[tag=wantpos,scores={random=0},c=1,tag=!random_result] add random_result
tag @a[tag=random_result] add posx
tag @a[tag=random_result] add posy
tag @a[tag=random_result] add posz
tag @a[tag=random_result] remove wantpos
tag @a[tag=random_result] remove random_result
tag @a[tag=random] remove random
function posx
