execute @e[tag=ldc:locked,y=-30000000,dy=60000000] ~ ~ ~ scoreboard players operation @s ldc:math = @s ldc:uid
scoreboard players operation @e[tag=ldc:locked,y=-30000000,dy=60000000] ldc:math -= @s uid
tag @e[tag=ldc:locked,y=-30000000,dy=60000000,scores={ldc:math=0}] add ldc:choose
#1
execute @e[tag=ldc:choose] ~ ~ ~ scoreboard players operation @s ldc:math = @s ldc:posy
scoreboard players operation @e[tag=ldc:choose] ldc:math -= @s ldc:posy
tag @s add ldc:iMark
#2
execute @e[tag=ldc:choose,scores={ldc:math=0}] ~ ~ ~ tag @a[tag=ldc:iMark] add ldc:UnlockSuccessful
execute @e[tag=ldc:choose,scores={ldc:math=0}] ~ ~ ~ tp ~ -32767.0 ~
execute @e[tag=ldc:choose,scores={ldc:math=0}] ~ ~ ~ kill @s
execute @e[tag=ldc:choose] ~ ~ ~ tag @s remove ldc:choose
tag @s remove ldc:iMark
#3
#GetRightEntity