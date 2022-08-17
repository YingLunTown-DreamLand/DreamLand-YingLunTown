title @a[tag=buy:i_c,scores={buy:math=0}] title §l§c交易§4失败§f！
title @a[tag=buy:i_c,scores={buy:math=0}] subtitle §l|§b请前往§3聊天栏§9查询日志§1以了解详情§f|
execute @a[tag=buy:i_c,scores={buy:math=0}] ~ ~ ~ playsound random.break @s ~ ~ ~ 1 1 1
execute @a[tag=buy:i_c,scores={buy:math=0}] ~ ~ ~ scoreboard objectives remove buy:execute
*#CHAIN_8_LOAD_PLACE
execute @a[tag=buy:i_c,scores={buy:math=0}] ~ ~ ~ scoreboard players reset @s buy:uid
execute @a[tag=buy:i_c,scores={buy:math=0}] ~ ~ ~ scoreboard players reset @s buy:i_c_uid
execute @a[tag=buy:i_c,scores={buy:math=0}] ~ ~ ~ tag @s remove buy:i_c
execute @e[tag=buy:item_change_to_coin_helper] ~ ~ ~ scoreboard players reset @s
execute @e[tag=buy:item_change_to_coin_helper] ~ ~ ~ tp ~ 32767.0 ~
execute @e[tag=buy:item_change_to_coin_helper] ~ ~ ~ kill @s