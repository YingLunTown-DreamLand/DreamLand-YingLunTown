execute @s[scores={bp:keyboard=-2147483648..2147483647}] ~ ~ ~ tag @s add bp:change_5_true
execute @s[scores={bp:situation=1},tag=bp:change_5_true] ~ ~ ~ tag @s remove bp:change_5_true
execute @s[tag=!bp:change_5_true,scores={bp:situation=!1}] ~ ~ ~ tellraw @s {"rawtext":[{"text":"§c未输入任何数字时无法执行该操作§f！"}]}
execute @s[tag=!bp:change_5_true,scores={bp:situation=1}] ~ ~ ~ tellraw @s {"rawtext":[{"text":"§c该轴数值不允许被取相反数§f！"}]}
execute @s[tag=!bp:change_5_true] ~ ~ ~ playsound random.break @s ~ ~ ~ 1 1 1
#1

execute @s[tag=bp:change_5_true] ~ ~ ~ scoreboard players reset * bp:math
execute @s[tag=bp:change_5_true] ~ ~ ~ scoreboard players set fu bp:math -1
#//
execute @s[tag=bp:change_5_true] ~ ~ ~ scoreboard players operation @s bp:keyboard *= fu bp:math
#//
execute @s[tag=bp:change_5_true] ~ ~ ~ tellraw @s {"rawtext":[{"text":"§a已成功将目标数值取相反数§f！"}]}
execute @s[tag=bp:change_5_true] ~ ~ ~ playsound random.orb @s ~ ~ ~ 1 1 1
#//
#2

execute @s[tag=bp:change_5_true] ~ ~ ~ tag @s remove bp:change_5_true
#3
#change_5