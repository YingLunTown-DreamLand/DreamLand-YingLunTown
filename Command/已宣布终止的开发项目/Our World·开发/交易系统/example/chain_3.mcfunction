execute @e[tag=buy:item_change_to_coin_helper,scores={buy:execute=128..}] ~ ~ ~ give @a[tag=buy:i_c,scores={buy:math=0}] iron_ingot 128
execute @e[tag=buy:item_change_to_coin_helper,scores={buy:execute=128..}] ~ ~ ~ scoreboard players remove @s buy:execute 128
#0
execute @e[tag=buy:item_change_to_coin_helper,scores={buy:execute=63..}] ~ ~ ~ give @a[tag=buy:i_c,scores={buy:math=0}] iron_ingot 63
execute @e[tag=buy:item_change_to_coin_helper,scores={buy:execute=63..}] ~ ~ ~ scoreboard players remove @s buy:execute 63
#1
execute @e[tag=buy:item_change_to_coin_helper,scores={buy:execute=32..}] ~ ~ ~ give @a[tag=buy:i_c,scores={buy:math=0}] iron_ingot 32
execute @e[tag=buy:item_change_to_coin_helper,scores={buy:execute=32..}] ~ ~ ~ scoreboard players remove @s buy:execute 32
#2
execute @e[tag=buy:item_change_to_coin_helper,scores={buy:execute=16..}] ~ ~ ~ give @a[tag=buy:i_c,scores={buy:math=0}] iron_ingot 16
execute @e[tag=buy:item_change_to_coin_helper,scores={buy:execute=16..}] ~ ~ ~ scoreboard players remove @s buy:execute 16
#3
execute @e[tag=buy:item_change_to_coin_helper,scores={buy:execute=8..}] ~ ~ ~ give @a[tag=buy:i_c,scores={buy:math=0}] iron_ingot 8
execute @e[tag=buy:item_change_to_coin_helper,scores={buy:execute=8..}] ~ ~ ~ scoreboard players remove @s buy:execute 8
#4
execute @e[tag=buy:item_change_to_coin_helper,scores={buy:execute=4..}] ~ ~ ~ give @a[tag=buy:i_c,scores={buy:math=0}] iron_ingot 4
execute @e[tag=buy:item_change_to_coin_helper,scores={buy:execute=4..}] ~ ~ ~ scoreboard players remove @s buy:execute 4
#5
execute @e[tag=buy:item_change_to_coin_helper,scores={buy:execute=2..}] ~ ~ ~ give @a[tag=buy:i_c,scores={buy:math=0}] iron_ingot 2
execute @e[tag=buy:item_change_to_coin_helper,scores={buy:execute=2..}] ~ ~ ~ scoreboard players remove @s buy:execute 2
#6
execute @e[tag=buy:item_change_to_coin_helper,scores={buy:execute=1..}] ~ ~ ~ give @a[tag=buy:i_c,scores={buy:math=0}] iron_ingot 1
execute @e[tag=buy:item_change_to_coin_helper,scores={buy:execute=1..}] ~ ~ ~ scoreboard players remove @s buy:execute 1
#7
execute @e[tag=buy:item_change_to_coin_helper,scores={buy:execute=1..}] ~ ~ ~ give @a[tag=buy:i_c,scores={buy:math=0}] iron_ingot 1
execute @e[tag=buy:item_change_to_coin_helper,scores={buy:execute=1..}] ~ ~ ~ scoreboard players remove @s buy:execute 1
#8
execute @e[tag=buy:item_change_to_coin_helper,scores={buy:execute=1..}] ~ ~ ~ give @a[tag=buy:i_c,scores={buy:math=0}] iron_ingot 1
execute @e[tag=buy:item_change_to_coin_helper,scores={buy:execute=1..}] ~ ~ ~ scoreboard players remove @s buy:execute 1
#9
tellraw @a[tag=buy:i_c,scores={buy:math=0}] {"rawtext":[{"text":"§l§f【§b交易§1系统§f】 §r§c交易失败§f，§c您至少还需要 §l§b"},{"score":{"objective":"buy:execute","name":"save_0"}},{"text":" §r§c个铁锭才能完成本次交易§f。"}]}
#send_message
structure load buy:item_change_to_coin_unsuccess_result_return ~ ~1 ~
#structure_load(load:example/chain_6)