execute @e[tag=buy:item_change_to_coin_helper,scores={buy:execute=1..}] ~ ~ ~ clone ~ ~ ~ ~ ~ ~ ~ ~ ~
execute @e[tag=buy:item_change_to_coin_helper,scores={buy:execute=1..}] ~ ~ ~ clear @a[tag=buy:i_c,scores={buy:math=0}] iron_ingot 0 1
*#scoreboard players remove @e[tag=buy:item_change_to_coin_helper] buy:execute 1
*#execute @e[tag=buy:item_change_to_coin_helper,scores={buy:execute=1..}] ~ ~ ~ tag @a[tag=buy:i_c,scores={buy:math=0}] add buy:i_c_success
execute @a[tag=buy:i_c,scores={buy:math=0},tag=!buy:i_c_success] ~ ~ ~ setblock ~ ~ ~ chain_command_block
tag @a[tag=buy:i_c_success] remove buy:i_c_success
#1
execute @e[tag=buy:item_change_to_coin_helper,scores={buy:execute=1..}] ~ ~ ~ clone ~ ~ ~ ~ ~ ~ ~ ~ ~
execute @e[tag=buy:item_change_to_coin_helper,scores={buy:execute=1..}] ~ ~ ~ clear @a[tag=buy:i_c,scores={buy:math=0}] iron_ingot 0 1
*#scoreboard players remove @e[tag=buy:item_change_to_coin_helper] buy:execute 1
*#execute @e[tag=buy:item_change_to_coin_helper,scores={buy:execute=1..}] ~ ~ ~ tag @a[tag=buy:i_c,scores={buy:math=0}] add buy:i_c_success
execute @a[tag=buy:i_c,scores={buy:math=0},tag=!buy:i_c_success] ~ ~ ~ setblock ~ ~ ~ chain_command_block
tag @a[tag=buy:i_c_success] remove buy:i_c_success
#2