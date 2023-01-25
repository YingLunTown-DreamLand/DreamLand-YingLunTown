execute @a[tag=cre:getpos_InLoadedArea] ~ ~ ~ scoreboard players operation @s cre:math = @s cre:uid
scoreboard players operation @a[tag=cre:getpos_InLoadedArea] cre:math -= @s cre:uid
tp @s @a[scores={cre:math=0}]
#BeSureMaster