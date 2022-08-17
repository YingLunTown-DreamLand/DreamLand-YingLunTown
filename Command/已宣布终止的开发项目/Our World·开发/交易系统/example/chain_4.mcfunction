execute @e[tag=buy:item_change_to_coin_helper,scores={buy:execute=1..}] ~ ~ ~ scoreboard players operation save_0 buy:execute = @s buy:execute
execute @e[tag=buy:item_change_to_coin_helper,scores={buy:execute=1..}] ~ ~ ~ scoreboard players operation save buy:execute -= @s buy:execute
#scores_operation
execute @e[tag=buy:item_change_to_coin_helper,scores={buy:execute=1..}] ~ ~ ~ fill ~ ~ ~ ~ ~ ~ air
execute @e[tag=buy:item_change_to_coin_helper,scores={buy:execute=1..}] ~ ~ ~ structure save buy:item_change_to_coin_ccb ~ ~ ~ ~ ~ ~ false memory true
execute @e[tag=buy:item_change_to_coin_helper,scores={buy:execute=1..}] ~ ~ ~ structure load buy:item_change_to_coin_ccb ~ ~ ~
#structure_load(load:example/chain_3)
execute @e[tag=buy:item_change_to_coin_helper,scores={buy:execute=..0}] ~ ~ ~ structure save buy:item_change_to_coin_ccb ~ ~ ~ ~ ~ ~ false memory true
execute @e[tag=buy:item_change_to_coin_helper,scores={buy:execute=..0}] ~ ~ ~ structure load buy:item_change_to_coin_ccb ~ ~ ~
execute @e[tag=buy:item_change_to_coin_helper,scores={buy:execute=1..}] ~ ~ ~ scoreboard players operation @s buy:execute = save buy:execute
#structure_load(load:example/chain_5)
*#CHAIN_5_LOAD_PLACE
title @a[tag=buy:i_c,scores={buy:math=0}] title §l§a交易§2成功§f！
title @a[tag=buy:i_c,scores={buy:math=0}] subtitle §l|§6已成功§g兑换§e金币§f|
execute @a[tag=buy:i_c,scores={buy:math=0}] ~ ~ ~ playsound random.orb @s ~ ~ ~ 1 1 1
#end_1
execute @a[tag=buy:i_c,scores={buy:math=0}] ~ ~ ~ scoreboard objectives remove buy:execute
#end_2
*#CHAIN_7_LOAD_PLACE
execute @a[tag=buy:i_c,scores={buy:math=0}] ~ ~ ~ scoreboard players reset @s buy:uid
execute @a[tag=buy:i_c,scores={buy:math=0}] ~ ~ ~ scoreboard players reset @s buy:i_c_uid
execute @a[tag=buy:i_c,scores={buy:math=0}] ~ ~ ~ tag @s remove buy:i_c
execute @e[tag=buy:item_change_to_coin_helper] ~ ~ ~ scoreboard players reset @s
execute @e[tag=buy:item_change_to_coin_helper] ~ ~ ~ tp ~ 32767.0 ~
execute @e[tag=buy:item_change_to_coin_helper] ~ ~ ~ kill @s
#end_3