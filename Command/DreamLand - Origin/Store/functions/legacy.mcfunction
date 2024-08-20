# 启动项
testfor @a[scores={money_cost=1..}]
setblock ~-1 ~ ~-1 chain_command_block 5
setblock ~-1 ~ ~ air

execute @a[scores={money_cost=1..}] ~~~ scoreboard players operation @s money_int = @s money
execute @a[scores={money_cost=1..}] ~~~ scoreboard players operation @s money_int -= @s money_cost
execute @a[scores={money_cost=1..,money_int=..-1}] ~~~ titleraw @s actionbar {"rawtext":[{"text":"§f<§b商店§f> 你的§b幻想币§f不足，仍差§a "},{"score":{"objective":"money_int","name":"@s"}}]}
execute @a[scores={money_cost=1..,money_int=0..}] ~~~ testforblock ~~-3~ barrel

# 有条件
execute @a[scores={money_cost=1..,money_int=0..}] ~~~ clone ~~-3~ ~~-3~ ~~2~
execute @a[scores={money_cost=1..,money_int=0..}] ~~~ fill ~~2~ ~~2~ air 0 destroy

execute @a[scores={money_cost=1..,money_int=0..}] ~~~ kill @e[r=5,type=item,name=木桶]

# 有条件
execute @a[scores={money_cost=1..,money_int=0..}] ~~~ playsound random.levelup @s
execute @a[scores={money_cost=1..,money_int=0..}] ~~~ titleraw @s actionbar {"rawtext":[{"text":"§f<§b商店§f>§e "},{"selector":"@s"},{"text":"§f 花费§a "},{"score":{"objective":"money_cost","name":"@s"}},{"text":" §d幻想币§f，购买了§e "},{"selector":"@e[r=10,c=1,type=item]"},{"text":" §f，§d幻想币§f余额为：§a "},{"score":{"objective":"money_int","name":"@s"}}]}
execute @a[scores={money_cost=1..,money_int=0..}] ~~~ scoreboard players operation @s money = @s money_int
execute @a[scores={money_cost=1..}] ~~~ scoreboard players reset @s money_int

execute @a[scores={money_int=0..}] ~~~ title @a actionbar §b未能检测到商品，请站到正确的位置
execute @a[scores={money_cost=1..}] ~~~ scoreboard players reset @s money_int
execute @a[scores={money_cost=1..}] ~~~ scoreboard players reset @s money_cost