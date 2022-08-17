execute @e[tag=buy:item_change_to_coin_helper_list,c=1] ~ ~ ~ tag @s add buy:i_c_random
#tag_set
*#execute @e[tag=buy:i_c_random] ~ ~ ~ fill ~ ~ ~ ~ ~ ~ air
scoreboard players reset * buy:math
execute @a[tag=buy:i_c,rm=0] ~ ~ ~ scoreboard players operation @s buy:math = @s uid
execute @a[tag=buy:i_c,rm=0] ~ ~ ~ scoreboard players operation @s buy:math -= @e[tag=buy:i_c_random] buy:uid
execute @a[tag=buy:i_c,scores={buy:math=0},rm=0] ~ ~ ~ tag @e[tag=buy:i_c_random] add buy:item_change_to_coin_helper
#be_sure_the_player
*#execute @a[tag=buy:i_c,scores={buy:math=0},rm=0] ~ ~ ~ structure load buy:item_change_to_coin_result_return ~ ~ ~
#clean_unneed_command_block_and_load_structure(load:example/chain_1,chain_4)
execute @a[tag=buy:i_c,scores={buy:math=0},rm=0] ~ ~ ~ scoreboard objectives add buy:execute dummy
#scoreboard_add
*#execute @a[tag=buy:i_c,scores={buy:math=0},rm=0] ~ ~ ~ execute @e[tag=buy:item_change_to_coin_helper] ~ ~ ~ clone ~ ~ ~ ~ ~ ~ ~ ~ ~
#load_structure(load:example/chain_0)
*#execute @a[tag=buy:i_c,scores={buy:math=0},rm=0] ~ ~ ~ execute @e[tag=buy:item_change_to_coin_helper] ~ ~ ~ clone ~ ~ ~ ~ ~ ~ ~ ~ ~
#load_structure(load:example/chain_2)
execute @e[tag=buy:i_c_random] ~ ~ ~ tp ~ 32767.0 ~
execute @e[tag=buy:i_c_random] ~ ~ ~ kill @s
#若第15行命令未能执行则执行上述2条命令