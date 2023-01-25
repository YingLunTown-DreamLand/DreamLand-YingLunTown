execute @s[scores={bp:keyboard=-2147483648..2147483647}] ~ ~ ~ tag @s add bp:change_4_true
execute @s[tag=!bp:change_4_true] ~ ~ ~ tellraw @s {"rawtext":[{"text":"§c未输入任何数字时无法退格§f！"}]}
execute @s[tag=!bp:change_4_true] ~ ~ ~ playsound random.break @s ~ ~ ~ 1 1 1
#1

execute @s[tag=bp:change_4_true,scores={bp:keyboard=0,bp:ws=1}] ~ ~ ~ tellraw @s {"rawtext":[{"text":"§a已成功退格§b1§a位§f！"}]}
execute @s[tag=bp:change_4_true,scores={bp:keyboard=0,bp:ws=1}] ~ ~ ~ playsound random.orb @s ~ ~ ~ 1 1 1
execute @s[tag=bp:change_4_true,scores={bp:keyboard=0,bp:ws=1}] ~ ~ ~ scoreboard players reset @s bp:keyboard
execute @s[tag=bp:change_4_true,scores={bp:keyboard=0,bp:ws=!1}] ~ ~ ~ tellraw @s {"rawtext":[{"text":"§c光标已抵达边界位置§f，§c退格失败§f！"}]}
execute @s[tag=bp:change_4_true,scores={bp:keyboard=0,bp:ws=!1}] ~ ~ ~ playsound random.break @s ~ ~ ~ 1 1 1
#2

execute @s[tag=bp:change_4_true,scores={bp:keyboard=!0}] ~ ~ ~ tag @s add bp:change_4_un0
execute @s[tag=bp:change_4_un0] ~ ~ ~ scoreboard players reset * bp:math
execute @s[tag=bp:change_4_un0] ~ ~ ~ scoreboard players set ten bp:math 10
#//
execute @s[tag=bp:change_4_un0] ~ ~ ~ scoreboard players operation @s bp:math = @s bp:keyboard
execute @s[tag=bp:change_4_un0] ~ ~ ~ scoreboard players operation @s bp:math /= @s bp:ws
#//
execute @s[tag=bp:change_4_un0,scores={bp:keyboard=!0,bp:math=!0}] ~ ~ ~ tag @s add bp:change_4_true_0
#//
execute @s[tag=bp:change_4_true_0] ~ ~ ~ scoreboard players operation @s bp:math /= ten bp:math
execute @s[tag=bp:change_4_true_0] ~ ~ ~ scoreboard players operation @s bp:math *= @s bp:ws
#//
execute @s[tag=bp:change_4_true_0] ~ ~ ~ scoreboard players operation ys bp:math= @s bp:keyboard
execute @s[tag=bp:change_4_true_0] ~ ~ ~ scoreboard players operation ys bp:math %= @s bp:ws
execute @s[tag=bp:change_4_true_0] ~ ~ ~ scoreboard players operation @s bp:math += ys bp:math
#//
execute @s[tag=bp:change_4_true_0] ~ ~ ~ tellraw @s {"rawtext":[{"text":"§a已成功退格§b1§a位§f！"}]}
execute @s[tag=bp:change_4_true_0] ~ ~ ~ playsound random.orb @s ~ ~ ~ 1 1 1
execute @s[tag=bp:change_4_true_0] ~ ~ ~ scoreboard players operation @s bp:keyboard = @s bp:math
execute @s[tag=bp:change_4_true_0,scores={bp:keyboard=0,bp:ws=1}] ~ ~ ~ scoreboard players reset @s bp:keyboard
#//
execute @s[tag=bp:change_4_un0,tag=!bp:change_4_true_0] ~ ~ ~ tellraw @s {"rawtext":[{"text":"§c光标已抵达边界位置§f，§c退格失败§f！"}]}
execute @s[tag=bp:change_4_un0,tag=!bp:change_4_true_0] ~ ~ ~ playsound random.break @s ~ ~ ~ 1 1 1
#//
#3

execute @s[tag=bp:change_4_true] ~ ~ ~ tag @s remove bp:change_4_true
execute @s[tag=bp:change_4_true_0] ~ ~ ~ tag @s remove bp:change_4_true_0
execute @s[tag=bp:change_4_un0] ~ ~ ~ tag @s remove bp:change_4_un0
#4
#change_4