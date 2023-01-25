execute @e[tag=ldc:getposy] ~ ~ ~ scoreboard players operation @s ldc:math = @s ldc:posuid
scoreboard players operation @e[tag=ldc:getposy] ldc:math -= @s ldc:posuid
tp @s @e[scores={ldc:math=0}]
#BeSureMaster