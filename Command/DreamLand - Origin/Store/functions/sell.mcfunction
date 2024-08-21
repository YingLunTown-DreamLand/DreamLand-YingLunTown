tag @p[y=~.5,z=~-1,r=0.5] add store:sell_iter
clear @a[tag=store:sell_iter] <item_name> 0 1

#有条件的
tag @p[tag=store:sell_iter] add store:sell_check_pass

scoreboard players set @a[tag=store:sell_iter] general:math 0
execute as @a[tag=store:sell_iter] run scoreboard players operation @s general:math = @s money

scoreboard players add @a[tag=store:sell_iter,tag=store:sell_check_pass] money <money_get>
title @p[tag=store:sell_iter,tag=store:sell_check_pass] title §a交易成功§f
title @p[tag=store:sell_iter,tag=!store:sell_check_pass] title §c交易失败§f

execute as @a[tag=store:sell_iter,tag=store:sell_check_pass] run tellraw @a[tag=core:bot] {"rawtext":[{"text":"StoreSellProductEvent(2)|"},{"selector":"@s"},{"text":","},{"text":"sell_product_type(int32)"},{"text":",true,"},{"text":"money_get(int32)"},{"text":","},{"score":{"objective":"general:math","name":"@s"}},{"text":","},{"score":{"objective":"money","name":"@s"}}]}
execute as @a[tag=store:sell_iter,tag=!store:sell_check_pass] run tellraw @a[tag=core:bot] {"rawtext":[{"text":"StoreSellProductEvent(2)|"},{"selector":"@s"},{"text":","},{"text":"sell_product_type(int32)"},{"text":",false,"},{"text":"money_get(int32)"},{"text":","},{"score":{"objective":"general:math","name":"@s"}},{"text":","},{"score":{"objective":"money","name":"@s"}}]}

scoreboard players reset @a[tag=store:sell_iter] general:math
tag @a[tag=store:sell_check_pass] remove store:sell_check_pass
tag @a[tag=store:sell_iter] remove store:sell_iter