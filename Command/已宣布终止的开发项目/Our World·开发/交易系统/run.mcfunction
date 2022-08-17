scoreboard objectives add uid dummy
scoreboard objectives add buy:online dummy
scoreboard objectives add buy:math dummy
scoreboard objectives add buy:uid dummy
scoreboard objectives add coin dummy
scoreboard objectives add buy:price dummy
scoreboard objectives add buy:number dummy
scoreboard objectives add buy:i_c_uid dummy
scoreboard objectives add buy:time dummy
#scoreboards_add
execute @e[tag=buy:item_change_to_coin_helper_list] ~ ~ ~ tp ~ ~ ~
#teleport_entity/entities
scoreboard players add @a uid 0
execute @a[scores={uid=0},c=1] ~ ~ ~ function uid
#uid
scoreboard players add @a buy:online 0
execute @a[scores={buy:online=0}] ~ ~ ~ tag @s add buy:reset
scoreboard players reset * buy:online
scoreboard players set @a buy:online 1
#test_if_is_unonline_change_to_online
execute @a[tag=buy:reset,c=1] ~ ~ ~ function reset
#reset
scoreboard players add @a buy:uid 0
execute @e[tag=buy:item_change_to_coin_helper_list,c=1] ~ ~ ~ function item_change_to_coin
#item_change_to_coin
execute @e[tag=buy:c_i,c=1,rm=0] ~ ~ ~ function coin_change_to_item
#coin_change_to_item
function time
#time
execute @a[tag=buy:creator_mode,c=1] ~ ~ ~ execute @e[tag=buy:get_logs,c=1] ~ ~ ~ function buy:get_logs
#get_logs