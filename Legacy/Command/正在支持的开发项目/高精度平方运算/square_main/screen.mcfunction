scoreboard objectives add square:delete dummy
# 添加计分板

summon minecraft:armor_stand square:screen ~ 32767.0 ~
tag @e[name=square:screen,c=1,type=minecraft:armor_stand,y=32767.0,r=3,tag=""] add square:screen
# 生成辅助实体

execute @e[tag=square:screen] ~ ~ ~ scoreboard players operation @s square = float_save square
execute @e[tag=square:helper] ~ ~ ~ scoreboard players operation @s square = float square
# 同步分数

execute @e[tag=square:screen] ~ ~ ~ scoreboard players operation i square:delete = @s square
execute @e[tag=square:screen] ~ ~ ~ function square_main/delete_float
scoreboard players operation float_save square = i square:delete
execute @s[tag=square:continue] ~ ~ ~ tag @s remove square:continue
scoreboard players reset * square:delete
#
execute @e[tag=square:helper] ~ ~ ~ scoreboard players operation i square:delete = @s square
execute @e[tag=square:helper] ~ ~ ~ function square_main/delete_float
scoreboard players operation float square = i square:delete
execute @s[tag=square:continue] ~ ~ ~ tag @s remove square:continue
scoreboard players reset * square:delete
#
# 移除小数后面的0

titleraw @a actionbar {"rawtext":[{"translate":"%%2","with":{"rawtext":[{"selector":"@e[tag=square:fu]"},{"text":"§7-"}]}},{"text":"§b"},{"score":{"objective":"square","name":"int"}},{"text":"§f.§b"},{"translate":"%%5","with":{"rawtext":[{"selector":"@e[tag=square:screen,scores={square=10000..99999}]"},{"selector":"@e[tag=square:screen,scores={square=!..999,square=!100000..}]"},{"selector":"@e[tag=square:screen,scores={square=!..99,square=!100000..}]"},{"selector":"@e[tag=square:screen,scores={square=..999999}]"},{"rawtext":[{"text":"0"},{"score":{"objective":"square","name":"float_save"}}]},{"rawtext":[{"text":"00"},{"score":{"objective":"square","name":"float_save"}}]},{"rawtext":[{"text":"000"},{"score":{"objective":"square","name":"float_save"}}]},{"translate":"%%3","with":{"rawtext":[{"selector":"@e[tag=square:screen,scores={square=10..99}]"},{"selector":"@e[tag=square:screen,scores={square=1..99}]"},{"rawtext":[{"text":"0000"},{"score":{"objective":"square","name":"float_save"}}]},{"rawtext":[{"text":"00000"},{"score":{"objective":"square","name":"float_save"}}]},{"rawtext":[{"score":{"objective":"square","name":"float_save"}}]}]}}]}},{"text":" §f* "},{"translate":"%%2","with":{"rawtext":[{"selector":"@e[tag=square:fu]"},{"text":"§7-"}]}},{"text":"§b"},{"score":{"objective":"square","name":"int"}},{"text":"§f.§b"},{"translate":"%%5","with":{"rawtext":[{"selector":"@e[tag=square:screen,scores={square=10000..99999}]"},{"selector":"@e[tag=square:screen,scores={square=!..999,square=!100000..}]"},{"selector":"@e[tag=square:screen,scores={square=!..99,square=!100000..}]"},{"selector":"@e[tag=square:screen,scores={square=..999999}]"},{"rawtext":[{"text":"0"},{"score":{"objective":"square","name":"float_save"}}]},{"rawtext":[{"text":"00"},{"score":{"objective":"square","name":"float_save"}}]},{"rawtext":[{"text":"000"},{"score":{"objective":"square","name":"float_save"}}]},{"translate":"%%3","with":{"rawtext":[{"selector":"@e[tag=square:screen,scores={square=10..99}]"},{"selector":"@e[tag=square:screen,scores={square=1..99}]"},{"rawtext":[{"text":"0000"},{"score":{"objective":"square","name":"float_save"}}]},{"rawtext":[{"text":"00000"},{"score":{"objective":"square","name":"float_save"}}]},{"rawtext":[{"score":{"objective":"square","name":"float_save"}}]}]}}]}},{"text":" §e=§b "},{"score":{"objective":"square","name":"intA"}},{"text":"§f.§b"},{"translate":"%%5","with":{"rawtext":[{"selector":"@e[tag=square:helper,scores={square=10000..99999}]"},{"selector":"@e[tag=square:helper,scores={square=!..999,square=!100000..}]"},{"selector":"@e[tag=square:helper,scores={square=!..99,square=!100000..}]"},{"selector":"@e[tag=square:helper,scores={square=..999999}]"},{"rawtext":[{"text":"0"},{"score":{"objective":"square","name":"float"}}]},{"rawtext":[{"text":"00"},{"score":{"objective":"square","name":"float"}}]},{"rawtext":[{"text":"000"},{"score":{"objective":"square","name":"float"}}]},{"translate":"%%3","with":{"rawtext":[{"selector":"@e[tag=square:helper,scores={square=10..99}]"},{"selector":"@e[tag=square:helper,scores={square=1..99}]"},{"rawtext":[{"text":"0000"},{"score":{"objective":"square","name":"float"}}]},{"rawtext":[{"text":"00000"},{"score":{"objective":"square","name":"float"}}]},{"rawtext":[{"score":{"objective":"square","name":"float"}}]}]}}]}}]}
# 显示结果

execute @e[tag=square:screen] ~ ~ ~ tp ~ -32767.0 ~
execute @e[tag=square:screen] ~ ~ ~ kill @s
# 清理实体