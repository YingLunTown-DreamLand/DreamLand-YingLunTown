execute @a[tag=buy:reset,c=1] ~ ~ ~ tag @s add buy:reset_random
#tag_set
execute @a[tag=buy:reset_random] ~ ~ ~ scoreboard objectives add buy:js dummy
execute @a[tag=buy:reset_random] ~ ~ ~ execute @e[tag=buy:item_change_to_coin_helper_list] ~ ~ ~ scoreboard players operation @s buy:js = @s buy:uid
execute @a[tag=buy:reset_random] ~ ~ ~ execute @e[tag=buy:item_change_to_coin_helper_list] ~ ~ ~ scoreboard players operation @s buy:js -= @a[tag=buy:reset_random] uid
execute @a[tag=buy:reset_random] ~ ~ ~ execute @e[tag=buy:item_change_to_coin_helper_list,scores={buy:js=0}] ~ ~ ~ tag @s add buy:will_kill
execute @a[tag=buy:reset_random] ~ ~ ~ execute @e[tag=buy:will_kill] ~ ~ ~ scoreboard players reset @s
execute @a[tag=buy:reset_random] ~ ~ ~ execute @e[tag=buy:will_kill] ~ ~ ~ tp ~ 32767.0 ~
execute @a[tag=buy:reset_random] ~ ~ ~ execute @e[tag=buy:will_kill] ~ ~ ~ kill @s
#clean_entity/entities
execute @a[tag=buy:reset_random] ~ ~ ~ tag @s remove buy:i_c
execute @a[tag=buy:reset_random] ~ ~ ~ scoreboard players reset @s buy:uid
execute @a[tag=buy:reset_random] ~ ~ ~ tag @s remove buy:reset
execute @a[tag=buy:reset_random] ~ ~ ~ tag @s remove buy:reset_random
#end