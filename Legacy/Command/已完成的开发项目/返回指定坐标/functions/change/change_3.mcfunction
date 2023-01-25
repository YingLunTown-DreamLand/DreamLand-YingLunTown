execute @s[scores={bp:keyboard=-2147483648..2147483647}] ~ ~ ~ tag @s add bp:change_3_true
execute @s[tag=!bp:change_3_true] ~ ~ ~ tellraw @s {"rawtext":[{"text":"§c未输入任何数字时无法移动光标§f！"}]}
execute @s[tag=!bp:change_3_true] ~ ~ ~ playsound random.break @s ~ ~ ~ 1 1 1
#1

execute @s[tag=bp:change_3_true,scores={bp:scores=11,bp:keyboard=!0}] ~ ~ ~ scoreboard players reset * bp:math
execute @s[tag=bp:change_3_true,scores={bp:scores=11,bp:keyboard=!0}] ~ ~ ~ scoreboard players set ten bp:math 10
#//
execute @s[tag=bp:change_3_true,scores={bp:scores=11,bp:keyboard=!0}] ~ ~ ~ scoreboard players operation @s bp:math = @s bp:keyboard
execute @s[tag=bp:change_3_true,scores={bp:scores=11,bp:keyboard=!0}] ~ ~ ~ scoreboard players operation @s bp:math /= @s bp:ws
#//
execute @s[tag=bp:change_3_true,scores={bp:scores=11,bp:keyboard=!0,bp:math=0}] ~ ~ ~ tellraw @s {"rawtext":[{"text":"§c光标已达边界§f，§c不能继续移动§f！"}]}
execute @s[tag=bp:change_3_true,scores={bp:scores=11,bp:keyboard=!0,bp:math=0}] ~ ~ ~ playsound random.break @s ~ ~ ~ 1 1 1
#//
execute @s[tag=bp:change_3_true,scores={bp:scores=11,bp:keyboard=!0,bp:math=!0}] ~ ~ ~ scoreboard players operation @s bp:ws *= ten bp:math
#//
execute @s[tag=bp:change_3_true,scores={bp:scores=11,bp:keyboard=!0,bp:math=!0}] ~ ~ ~ tellraw @s {"rawtext":[{"text":"§a已成功将光标向左移动§b1§a位§f！"}]}
execute @s[tag=bp:change_3_true,scores={bp:scores=11,bp:keyboard=!0,bp:math=!0}] ~ ~ ~ playsound random.orb @s ~ ~ ~ 1 1 1
#//
#2-1

#//
execute @s[tag=bp:change_3_true,scores={bp:scores=11,bp:keyboard=0,bp:ws=!1}] ~ ~ ~ tellraw @s {"rawtext":[{"text":"§c光标已达边界§f，§c不能继续移动§f！"}]}
execute @s[tag=bp:change_3_true,scores={bp:scores=11,bp:keyboard=0,bp:ws=!1}] ~ ~ ~ playsound random.break @s ~ ~ ~ 1 1 1
#//
execute @s[tag=bp:change_3_true,scores={bp:scores=11,bp:keyboard=0,bp:ws=1}] ~ ~ ~ tellraw @s {"rawtext":[{"text":"§a已成功将光标向左移动§b1§a位§f！"}]}
execute @s[tag=bp:change_3_true,scores={bp:scores=11,bp:keyboard=0,bp:ws=1}] ~ ~ ~ playsound random.orb @s ~ ~ ~ 1 1 1
execute @s[tag=bp:change_3_true,scores={bp:scores=11,bp:keyboard=0,bp:ws=1}] ~ ~ ~ scoreboard players set @s bp:ws 10
#//
#2-2

execute @s[tag=bp:change_3_true,scores={bp:scores=12,bp:ws=10..}] ~ ~ ~ scoreboard players reset * bp:math
execute @s[tag=bp:change_3_true,scores={bp:scores=12,bp:ws=10..}] ~ ~ ~ scoreboard players set ten bp:math 10
#//
execute @s[tag=bp:change_3_true,scores={bp:scores=12,bp:ws=1}] ~ ~ ~ tellraw @s {"rawtext":[{"text":"§c光标已达边界§f，§c不能继续移动§f！"}]}
execute @s[tag=bp:change_3_true,scores={bp:scores=12,bp:ws=1}] ~ ~ ~ playsound random.break @s ~ ~ ~ 1 1 1
#//
execute @s[tag=bp:change_3_true,scores={bp:scores=12,bp:ws=10..}] ~ ~ ~ tellraw @s {"rawtext":[{"text":"§a已成功将光标向右移动§b1§a位§f！"}]}
execute @s[tag=bp:change_3_true,scores={bp:scores=12,bp:ws=10..}] ~ ~ ~ playsound random.orb @s ~ ~ ~ 1 1 1
execute @s[tag=bp:change_3_true,scores={bp:scores=12,bp:ws=10..}] ~ ~ ~ scoreboard players operation @s bp:ws /= ten bp:math
#//
#3

execute @s[tag=bp:change_3_true] ~ ~ ~ tag @s remove bp:change_3_true
#4
#change_3