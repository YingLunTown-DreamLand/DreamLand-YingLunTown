execute @s[scores={bp:scores=1..10}] ~ ~ ~ scoreboard players reset * bp:math
execute @s[scores={bp:scores=1..10}] ~ ~ ~ scoreboard players set ten bp:math 10
execute @s[scores={bp:scores=1..10}] ~ ~ ~ scoreboard players set fu bp:math -1
execute @s[scores={bp:scores=1..10}] ~ ~ ~ scoreboard players operation @s bp:math = @s bp:keyboard
#1

execute @s[scores={bp:scores=1..10}] ~ ~ ~ scoreboard players operation @s bp:math /= @s bp:ws
execute @s[scores={bp:scores=1..10,bp:keyboard=..-1,bp:math=0}] ~ ~ ~ tag @s add bp:change_2_fu
execute @s[scores={bp:scores=1..10}] ~ ~ ~ scoreboard players operation @s bp:math *= ten bp:math
execute @s[scores={bp:scores=1..9}] ~ ~ ~ scoreboard players operation @s bp:math += @s bp:scores
execute @s[scores={bp:scores=1..9,bp:keyboard=..-1},tag=!bp:change_2_fu] ~ ~ ~ scoreboard players operation @s bp:math -= @s bp:scores
execute @s[scores={bp:scores=1..9,bp:keyboard=..-1},tag=!bp:change_2_fu] ~ ~ ~ scoreboard players operation @s bp:math -= @s bp:scores
execute @s[scores={bp:scores=1..10}] ~ ~ ~ scoreboard players operation @s bp:math *=  @s bp:ws
execute @s[scores={bp:scores=1..10},tag=bp:change_2_fu] ~ ~ ~ scoreboard players operation @s bp:math *= fu bp:math
execute @s[scores={bp:scores=1..10},tag=bp:change_2_fu] ~ ~ ~ tag @s remove bp:change_2_fu
#2

execute @s[scores={bp:scores=1..10}] ~ ~ ~ scoreboard players operation ys bp:math = @s bp:keyboard
execute @s[scores={bp:scores=1..10}] ~ ~ ~ scoreboard players operation ys bp:math %= @s bp:ws
execute @s[scores={bp:scores=1..10}] ~ ~ ~ scoreboard players operation @s bp:math += ys bp:math
#3

execute @s[scores={bp:scores=1..10,bp:math=1048576..}] ~ ~ ~ tag @s add bp:change_2_error
execute @s[scores={bp:scores=1..10,bp:math=..-1048576}] ~ ~ ~ tag @s add bp:change_2_error
execute @s[scores={bp:scores=1..10,bp:math=257..,bp:situation=1}] ~ ~ ~ tag @s add bp:change_2_error
#4

execute @s[tag=bp:change_2_error,scores={bp:situation=!1}] ~ ~ ~ tellraw @s {"rawtext":[{"text":"§c最终分数超过有效范围§f(§b-1048575§f~§b1048575§f)，§c输入失败§f！"}]}
execute @s[tag=bp:change_2_error,scores={bp:situation=1}] ~ ~ ~ tellraw @s {"rawtext":[{"text":"§c最终分数超过有效范围§f(§b0§f~§b256§f)，§c输入失败§f！"}]}
execute @s[tag=bp:change_2_error] ~ ~ ~ playsound random.break @s ~ ~ ~ 1 1 1
#5

execute @s[scores={bp:scores=1..10},tag=!bp:change_2_error] ~ ~ ~ scoreboard players operation @s bp:keyboard = @s bp:math
execute @s[scores={bp:scores=1..9},tag=!bp:change_2_error] ~ ~ ~ tellraw @s {"rawtext":[{"text":"§a已成功输入数字§b"},{"score":{"objective":"bp:scores","name":"*"}},{"text":"§f！"}]}
execute @s[scores={bp:scores=10},tag=!bp:change_2_error] ~ ~ ~ tellraw @s {"rawtext":[{"text":"§a已成功输入数字§b0§f！"}]}
execute @s[scores={bp:scores=1..10},tag=!bp:change_2_error] ~ ~ ~ playsound random.orb @s ~ ~ ~ 1 1 1
#6

execute @s[tag=bp:change_2_error] ~ ~ ~ tag @s remove bp:change_2_error
#7
#change_2