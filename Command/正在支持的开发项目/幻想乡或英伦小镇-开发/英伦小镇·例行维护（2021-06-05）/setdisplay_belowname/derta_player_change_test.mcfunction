scoreboard objectives add player_number dummy
scoreboard objectives add p_n:mark dummy
#scoreboards_add
scoreboard players set number player_number 0
execute @a[scores={p_n:mark=1}] ~ ~ ~ scoreboard players add number player_number 1
#got_mark_player_number
scoreboard players operation number_random player_number = number player_number
#saved_number_to_random_place
scoreboard players add number_save player_number 0
scoreboard players operation number player_number -= number_save player_number
#got_derta_number
summon minecraft:armor_stand player_number ~ 32767 ~
tag @e[name=player_number,type=minecraft:armor_stand,y=32767,dy=0] add player_number
#工具人
scoreboard players operation @e[tag=player_number] player_number = number player_number
*#execute @e[tag=player_number,scores={player_number=!0}] ~ ~ ~ clone ~ ~ ~ ~ ~ ~ ~ ~ ~
execute @e[tag=player_number,scores={player_number=!0}] ~ ~ ~ say 1
#判定是否需要重新获取“Can_Screen:Belowname_armor_stand”列表
execute @e[tag=player_number,scores={player_number=!0}] ~ ~ ~ scoreboard players operation number_save player_number = number_random player_number
#operation_=_score
scoreboard players reset @e[tag=player_number] player_number
kill @e[tag=player_number]
#清理实体
scoreboard players reset * p_n:mark
scoreboard players set @a p_n:mark 1
#end