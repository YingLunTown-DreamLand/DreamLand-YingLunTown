execute @a[tag=tpa:ere_true] ~ ~ ~ scoreboard players reset * tpa:math
#清理计算用计分板上的数据
execute @a[tag=tpa:ere_true,scores={tpa:screen=!8}] ~ ~ ~
execute @e[tag=tpa:uid_save] ~ ~ ~ scoreboard players operation @s 