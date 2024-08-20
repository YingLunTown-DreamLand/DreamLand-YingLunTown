# 启动项
testfor @a[scores={store:buy_money_cost=1..},c=1]



# 计算
scoreboard players set @a[scores={store:buy_money_cost=1..}] general:math 0
execute as @a[scores={store:buy_money_cost=1..}] run scoreboard players operation @s general:math = @s money
execute as @a[scores={store:buy_money_cost=1..}] run scoreboard players operation @s general:math -= @s store:buy_money_cost

# 向机器人通知交易更改
execute as @a[scores={store:buy_money_cost=1..,general:math=..-1}] run tellraw @a[tag=core:bot] {"rawtext":[{"text":"StoreBuyProductEvent(1)|"},{"selector":"@s"},{"text":","},{"score":{"objective":"store:buy_product_type","name":"@s"}},{"text":",false,"},{"score":{"objective":"store:buy_money_cost","name":"@s"}},{"text":","},{"score":{"objective":"money","name":"@s"}},{"text":","},{"score":{"objective":"general:math","name":"@s"}}]}
execute as @a[scores={store:buy_money_cost=1..,general:math=0..}] run tellraw @a[tag=core:bot] {"rawtext":[{"text":"StoreBuyProductEvent(1)|"},{"selector":"@s"},{"text":","},{"score":{"objective":"store:buy_product_type","name":"@s"}},{"text":",true,"},{"score":{"objective":"store:buy_money_cost","name":"@s"}},{"text":","},{"score":{"objective":"money","name":"@s"}},{"text":","},{"score":{"objective":"general:math","name":"@s"}}]}

# 交易物品生成
execute as @a[scores={store:buy_money_cost=1..,general:math=0..}] at @s if block ~ ~-3 ~ minecraft:barrel run clone ~~-3~ ~~-3~ ~~2~
execute as @a[scores={store:buy_money_cost=1..,general:math=0..}] at @s if block ~ ~2 ~ minecraft:barrel run setblock ~ ~2 ~ minecraft:air 0 destroy
execute as @a[scores={store:buy_money_cost=1..,general:math=0..}] at @s run kill @e[name=木桶,y=~2,c=1,type=item,r=1.5]

# 通知购买成功
execute as @a[scores={store:buy_money_cost=1..,general:math=0..}] at @s run playsound random.levelup @s ~ ~ ~ 1.00 1.00 1.00
execute as @a[scores={store:buy_money_cost=1..,general:math=0..}] at @s run titleraw @s actionbar {"rawtext":[{"text":"§f<§b商店§f>§e "},{"selector":"@s"},{"text":"§f 花费§a "},{"score":{"objective":"store:buy_money_cost","name":"@s"}},{"text":" §d幻想币§f，购买了§e "},{"selector":"@e[y=~2,c=1,type=item,r=1.5]"},{"text":" §f，§d幻想币§f余额为：§a "},{"score":{"objective":"general:math","name":"@s"}}]}
execute as @a[scores={store:buy_money_cost=1..,general:math=0..}] run scoreboard players operation @s money = @s general:math

# 通知购买失败
execute as @a[scores={store:buy_money_cost=1..,general:math=..-1}] run tag @s add store:buy_failed
execute as @a[tag=store:buy_failed] at @s run playsound random.break @s ~ ~ ~ 1.00 1.00 1.00
execute as @a[tag=store:buy_failed] run scoreboard players operation @s general:math *= reversal general:math
execute as @a[tag=store:buy_failed] run titleraw @s actionbar {"rawtext":[{"text":"§f<§b商店§f> 你的§b幻想币§f不足，仍差§a "},{"score":{"objective":"general:math","name":"@s"}}]}
tag @a[tag=store:buy_failed] remove store:buy_failed

# 善后处理
execute as @a[scores={store:buy_money_cost=1..}] run scoreboard players reset @s store:buy_product_type
execute as @a[scores={store:buy_money_cost=1..}] run scoreboard players reset @s general:math
execute as @a[scores={store:buy_money_cost=1..}] run scoreboard players reset @s store:buy_money_cost
