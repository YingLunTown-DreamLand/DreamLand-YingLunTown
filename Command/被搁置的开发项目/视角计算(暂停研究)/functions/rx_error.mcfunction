scoreboard players reset * data
//scores_reset
tag @s[rx=90,rxm=0.00001] add rx_fu
//decide
summon boat ^^^10
summon armor_stand rx_replace_player
execute @s ^^^10 tag @e[type=boat,r=1,c=1] add facing
tag @e[type=armor_stand,name=rx_replace_player,r=1,c=1] add r_r_p
//prepare
execute @e[tag=facing] ~~~function posy
execute @e[tag=r_r_p] ~~~function posy
//get_posy
scoreboard players set facing data 0
scoreboard players set r_r_p data 0
#scores_reset
scoreboard players operation facing data = @e[tag=facing] posy_0
scoreboard players operation r_r_p data = @e[tag=r_r_p] posy_0
#get_posy
//save_posy
scoreboard players operation @e[tag=facing] posy_0 -= @e[tag=r_r_p] posy_0
//get_posy_D-value
scoreboard players set "D-value" data 0
#scores_reset
scoreboard players operation "D-value" data = @e[tag=facing] posy_0
#get_posy_D-value
//save_posy_D-value
execute @e[tag=r_r_p] ~~~summon armor_stand rx_get_rm_space
execute @e[tag=r_r_p] ~~~tag @e[type=armor_stand,name=rx_get_rm_space,r=1,c=1] add r_g_r_s
//summon_replace_armor_stand_and_add_tag
scoreboard players set @e[tag=r_g_r_s] posy_0 0
scoreboard players operation @e[tag=r_g_r_s] posy_0 = @e[tag=facing] posy_0
//scores_operation
execute @e[tag=r_g_r_s] ~~~function posy_return
//posy_return
tag @e[tag=facing] add target
execute @e[tag=r_g_r_s] ~~~function rm
//get_rm_space
scoreboard players set rm data 0
#scores_reset
scoreboard players operation rm data = @e[tag=r_g_r_s] rm_0
#get_rm_space
//save_rm_space
tp @e[tag=r_g_r_s] @e[tag=r_r_p]
#tp
scoreboard players set @e[tag=r_g_r_s] posy_0 0
#scores_reset
scoreboard players operation @e[tag=r_g_r_s] posy_0 = @e[tag=r_g_r_s] rm_0
scoreboard players set fu data -1
execute @e[scores={posy_0=..-1},tag=facing] ~~~scoreboard players operation @s posy_0 *= fu data
scoreboard players operation @e[tag=r_g_r_s] rm_0 = @e[tag=facing] posy_0
#scores_operation
//big_return_prepare
scoreboard players set posy_0 data 0
scoreboard players set rm_0 data 0
#scores_reset
scoreboard players operation posy_0 data = @e[tag=r_g_r_s] posy_0
scoreboard players operation rm_0 data = @e[tag=r_g_r_s] rm_0
#get_big_retrun_data
//save_big_return_data
execute @e[tag=r_g_r_s] ~~~function posy_return
execute @e[tag=r_g_r_s] ~~~function rm_return
//big_return
tp @e[tag=facing] @e[tag=r_r_p]
execute @e[tag=facing] ~~~tp~~~facing @e[tag=r_g_r_s]
//facing
execute @e[tag=facing] ~~~function get_rx
//get_rx_score
scoreboard players set rx data 0
#scores_reset
scoreboard players operation rx data = @e[tag=facing] rx
#get_rx_score
//save_rx_score
scoreboard players set jian data 9000000
scoreboard players operation jian data -= @e[tag=facing] rx
scoreboard players operation @e[tag=facing] rx = jian data
//get_rx_true_score
scoreboard players set rx_0 data 0
#scores_reset
scoreboard players operation rx_0 data = @e[tag=facing] rx
#get_rx_true_score
//save_rx_true_score
execute @s[tag=!rx_fu] ~~~scoreboard players operation @e[tag=facing] rx *= fu data
//get_rx_truly_score
scoreboard players set rx_true data 0
#scores_reset
scoreboard players operation rx_true data = @e[tag=facing] rx
//save_rx_truly_score
scoreboard players set @s rx_truly 0
#scores_reset
scoreboard players operation @s rx_truly = @e[tag=facing] rx
#get_rx_truly_score
//scores_operation
tag @s[tag=rx_fu] remove rx_fu
//remove_tag
execute @e[tag=facing] ~~~tp~~32767~
kill @e[tag=facing]
execute @e[tag=r_r_p] ~~~tp~~32767~
kill @e[tag=r_r_p]
execute @e[tag=r_g_r_s] ~~~tp~~32767~
kill @e[tag=r_g_r_s]
//kill_armor_stand_and_boat