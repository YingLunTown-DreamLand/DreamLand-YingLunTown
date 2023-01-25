execute @e[tag=buy:c_i,c=1,rm=0] ~ ~ ~ tag @s add buy:c_i_random
#tag_set
*#execute @a[tag=buy:c_i_random] ~ ~ ~ structure load buy:item_list ~ ~ ~
#structure_load
function tags_change_to_scores
#tags_change_to_scores
execute @e[tag=buy:item_list] ~ ~ ~ scoreboard players operation @s buy:uid -= @a[tag=buy:c_i_random] buy:uid
#be_sure_the_right_entity
scoreboard objectives add buy:price_save dummy
execute @a ~ ~ ~ scoreboard players operation @s buy:price_save = @s buy:price
#score_operation_=
execute @a ~ ~ ~ scoreboard players operation @s buy:price -= @a[tag=buy:c_i_random] coin
#score_operation_-=
execute @a[tag=buy:c_i_random,scores={buy:price=..0}] ~ ~ ~ scoreboard players operation @s coin -= @s buy:price_save
execute @a[tag=buy:c_i_random,scores={buy:price=..0}] ~ ~ ~ tellraw @s {"rawtext":[{"text":"§l§f【§b交易§1系统§f】 §r§a交易成功§f！§a您已成功使用 §l§e金§6币 §r§7* §l§b"},{"score":{"objective":"buy:price_save","name":"@s"}},{"text":"§r §a兑换 §l§b"},{"selector":"@e[tag=buy:item_list,scores={buy:uid=0}]"},{"text":" §r§7* §l§b"},{"score":{"objective":"buy:number","name":"@s"}},{"text":"\n§r§a当前还有 §l§e金§6币 §r§7* §l§b"},{"score":{"objective":"coin","name":"*"}}]}
execute @a[tag=buy:c_i_random,scores={buy:price=..0}] ~ ~ ~ title @s title §l§a交易§2成功§f！
execute @a[tag=buy:c_i_random,scores={buy:price=..0}] ~ ~ ~ title @s subtitle §l|§6已成功§g兑换§e物品§f|
execute @a[tag=buy:c_i_random,scores={buy:price=..0}] ~ ~ ~ playsound random.orb @s ~ ~ ~ 1 1 1
execute @e[tag=buy:item_list,scores={buy:uid=0}] ~ ~ ~ tp @a[tag=buy:c_i_random,scores={buy:price=..0}]
execute @a[tag=buy:c_i_random,scores={buy:price=..0}] ~ ~ ~ tag @e[tag=buy:item_list,scores={buy:uid=0}] remove buy:item_list
#if_buy_result_is_success
execute @a[tag=buy:c_i_random,scores={buy:price=1..}] ~ ~ ~ tellraw @s {"rawtext":[{"text":"§l§f【§b交易§1系统§f】 §r§c交易失败§f，§c您至少还需要 §l§e金§6币 §r§7* §l§b"},{"score":{"objective":"buy:price","name":"@s"}},{"text":" §r§c才能完成本次交易§f。"}]}
execute @a[tag=buy:c_i_random,scores={buy:price=1..}] ~ ~ ~ title @a[tag=buy:c_i_random] title §l§c交易§4失败§f！
execute @a[tag=buy:c_i_random,scores={buy:price=1..}] ~ ~ ~ title @a[tag=buy:c_i_random] subtitle §l|§b请前往§3聊天栏§9查询日志§1以了解详情§f|
execute @a[tag=buy:c_i_random,scores={buy:price=1..}] ~ ~ ~ playsound random.break @s ~ ~ ~ 1 1 1
#if_buy_result_is_unsuccess
execute @a[tag=buy:c_i_random] ~ ~ ~ kill @e[tag=buy:item_list]
#clean_entity/entities
execute @a[tag=buy:c_i_random] ~ ~ ~ function mark_buy
#mark_buy
execute @a[tag=buy:c_i_random] ~ ~ ~ scoreboard players reset @s buy:uid
execute @a[tag=buy:c_i_random] ~ ~ ~ scoreboard players reset @s buy:price
execute @a[tag=buy:c_i_random] ~ ~ ~ scoreboard players reset @s buy:number
execute @a[tag=buy:c_i_random] ~ ~ ~ tag @s remove buy:c_i
execute @a[tag=buy:c_i_random] ~ ~ ~ tag @s remove buy:c_i_random
#end_1
scoreboard objectives remove buy:price_save
#end_2