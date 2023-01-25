scoreboard objectives add buy:logs_buyuid dummy
scoreboard objectives add buy:logs_puid dummy
#scoreboard_add
execute @e[tag=buy:get_logs] ~ ~ ~ scoreboard players set @s buy:logs_buyuid 0
execute @e[tag=buy:get_logs] ~ ~ ~ scoreboard players set @s buy:logs_puid 0
#scores_restart
execute @e[tag=buy:get_logs,tag=buy:mark_scores_0_128] ~ ~ ~ scoreboard players add @s buy:logs_buyuid 128
execute @e[tag=buy:get_logs,tag=buy:mark_scores_0_63] ~ ~ ~ scoreboard players add @s buy:logs_buyuid 63
execute @e[tag=buy:get_logs,tag=buy:mark_scores_0_32] ~ ~ ~ scoreboard players add @s buy:logs_buyuid 32
execute @e[tag=buy:get_logs,tag=buy:mark_scores_0_16] ~ ~ ~ scoreboard players add @s buy:logs_buyuid 16
execute @e[tag=buy:get_logs,tag=buy:mark_scores_0_8] ~ ~ ~ scoreboard players add @s buy:logs_buyuid 8
execute @e[tag=buy:get_logs,tag=buy:mark_scores_0_4] ~ ~ ~ scoreboard players add @s buy:logs_buyuid 4
execute @e[tag=buy:get_logs,tag=buy:mark_scores_0_2] ~ ~ ~ scoreboard players add @s buy:logs_buyuid 2
execute @e[tag=buy:get_logs,tag=buy:mark_scores_0_1] ~ ~ ~ scoreboard players add @s buy:logs_buyuid 1
execute @e[tag=buy:get_logs,tag=buy:mark_scores_0_0] ~ ~ ~ scoreboard players add @s buy:logs_buyuid 1
execute @e[tag=buy:get_logs,tag=buy:mark_scores_0_00] ~ ~ ~ scoreboard players add @s buy:logs_buyuid 1
#buy:uid
execute @e[tag=buy:get_logs,tag=buy:mark_scores_1_2097152] ~ ~ ~ scoreboard players add @s buy:logs_puid 2097152
execute @e[tag=buy:get_logs,tag=buy:mark_scores_1_1048576] ~ ~ ~ scoreboard players add @s buy:logs_puid 1048576
execute @e[tag=buy:get_logs,tag=buy:mark_scores_1_524288] ~ ~ ~ scoreboard players add @s buy:logs_puid 524288
execute @e[tag=buy:get_logs,tag=buy:mark_scores_1_262144] ~ ~ ~ scoreboard players add @s buy:logs_puid 262144
execute @e[tag=buy:get_logs,tag=buy:mark_scores_1_131072] ~ ~ ~ scoreboard players add @s buy:logs_puid 131072
execute @e[tag=buy:get_logs,tag=buy:mark_scores_1_65536] ~ ~ ~ scoreboard players add @s buy:logs_puid 65536
execute @e[tag=buy:get_logs,tag=buy:mark_scores_1_32768] ~ ~ ~ scoreboard players add @s buy:logs_puid 32768
execute @e[tag=buy:get_logs,tag=buy:mark_scores_1_16384] ~ ~ ~ scoreboard players add @s buy:logs_puid 16384
execute @e[tag=buy:get_logs,tag=buy:mark_scores_1_8192] ~ ~ ~ scoreboard players add @s buy:logs_puid 8192
execute @e[tag=buy:get_logs,tag=buy:mark_scores_1_4096] ~ ~ ~ scoreboard players add @s buy:logs_puid 4096
execute @e[tag=buy:get_logs,tag=buy:mark_scores_1_2048] ~ ~ ~ scoreboard players add @s buy:logs_puid 2048
execute @e[tag=buy:get_logs,tag=buy:mark_scores_1_1024] ~ ~ ~ scoreboard players add @s buy:logs_puid 1024
execute @e[tag=buy:get_logs,tag=buy:mark_scores_1_512] ~ ~ ~ scoreboard players add @s buy:logs_puid 512
execute @e[tag=buy:get_logs,tag=buy:mark_scores_1_256] ~ ~ ~ scoreboard players add @s buy:logs_puid 256
execute @e[tag=buy:get_logs,tag=buy:mark_scores_1_128] ~ ~ ~ scoreboard players add @s buy:logs_puid 128
execute @e[tag=buy:get_logs,tag=buy:mark_scores_1_63] ~ ~ ~ scoreboard players add @s buy:logs_puid 63
execute @e[tag=buy:get_logs,tag=buy:mark_scores_1_32] ~ ~ ~ scoreboard players add @s buy:logs_puid 32
execute @e[tag=buy:get_logs,tag=buy:mark_scores_1_16] ~ ~ ~ scoreboard players add @s buy:logs_puid 16
execute @e[tag=buy:get_logs,tag=buy:mark_scores_1_8] ~ ~ ~ scoreboard players add @s buy:logs_puid 8
execute @e[tag=buy:get_logs,tag=buy:mark_scores_1_4] ~ ~ ~ scoreboard players add @s buy:logs_puid 4
execute @e[tag=buy:get_logs,tag=buy:mark_scores_1_2] ~ ~ ~ scoreboard players add @s buy:logs_puid 2
execute @e[tag=buy:get_logs,tag=buy:mark_scores_1_1] ~ ~ ~ scoreboard players add @s buy:logs_puid 1
execute @e[tag=buy:get_logs,tag=buy:mark_scores_1_0] ~ ~ ~ scoreboard players add @s buy:logs_puid 1
#player_uid
tellraw @a[tag=buy:creator_mode] {"rawtext":[{"text":"§b[BUY SYSTEM|INFO] Creator/Debug/God Mode = Successful\n§bLogs:"}]}
execute @e[tag=buy:get_logs,tag=buy:mark_result_is_success,tag=buy:mark_type_is_i_c] ~ ~ ~ tellraw @a[tag=buy:creator_mode] {"rawtext":[{"text":"§aType:Item_change_to_Coin ,Result:Successful ,BuyUid:"},{"score":{"objective":"buy:logs_buyuid","name":"@s"}},{"text":" ,PlayerUid:"},{"score":{"objective":"buy:logs_puid","name":"@s"}}]}
execute @e[tag=buy:get_logs,tag=buy:mark_result_is_unsuccess,tag=buy:mark_type_is_i_c] ~ ~ ~ tellraw @a[tag=buy:creator_mode] {"rawtext":[{"text":"§cType:Item_change_to_Coin ,Result:Unsuccessful ,BuyUid:"},{"score":{"objective":"buy:logs_buyuid","name":"@s"}},{"text":" ,PlayerUid:"},{"score":{"objective":"buy:logs_puid","name":"@s"}}]}
execute @e[tag=buy:get_logs,tag=buy:mark_result_is_success,tag=buy:mark_type_is_c_i] ~ ~ ~ tellraw @a[tag=buy:creator_mode] {"rawtext":[{"text":"§aType:Coin_change_to_Item ,Result:Successful ,BuyUid:"},{"score":{"objective":"buy:logs_buyuid","name":"@s"}},{"text":" ,PlayerUid:"},{"score":{"objective":"buy:logs_puid","name":"@s"}}]}
execute @e[tag=buy:get_logs,tag=buy:mark_result_is_unsuccess,tag=buy:mark_type_is_c_i] ~ ~ ~ tellraw @a[tag=buy:creator_mode] {"rawtext":[{"text":"§cType:Coin_change_to_Item ,Result:Unuccessful ,BuyUid:"},{"score":{"objective":"buy:logs_buyuid","name":"@s"}},{"text":" ,PlayerUid:"},{"score":{"objective":"buy:logs_puid","name":"@s"}}]}
#send_message
scoreboard objectives remove buy:logs_buyuid
scoreboard objectives remove buy:logs_puid
#scoreboard_remove
tag @a[tag=buy:creator_mode] remove buy:creator_mode
#tag_set