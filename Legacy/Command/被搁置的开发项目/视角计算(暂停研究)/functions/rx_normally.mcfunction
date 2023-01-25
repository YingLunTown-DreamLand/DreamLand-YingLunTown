<<<<<<< HEAD
summon boat ^^^-10
execute @s ^^^-10 tag @e[type=boat,r=1,c=1] add facing
tag @s add player
//prepare
execute @e[tag=facing] ~~~tp~~~facing @a[tag=player]
//facing
execute @e[tag=facing,rx=90,rxm=0.00001] ~~~tag @s add rx_fu
execute @e[tag=facing,tag=rx_fu] ~~~tp~~~~~-90.0
//decide
execute @e[tag=facing] ~~~function get_rx
//get_rx_score
execute @s[tag=rx_fu] ~~~scoreboard players remove @e[tag=facing] rx 9000000
scoreboard players reset * data
scoreboard players set fu data -1
scoreboard players operation @e[tag=facing] rx *= fu data
//get_rx_true_score
scoreboard players set rx_true data 0
#scores_reset
scoreboard players operation rx_true data = @e[tag=facing] rx
#get_rx_true_score
//save_rx_true_score
scoreboard players set @s rx_truly 0
scoreboard players operation @s rx_truly = @e[tag=facing] rx
//scores_operation
tag @s[tag=player] remove player
//remove_tag
execute @e[tag=facing] ~~~tp~~32767~
kill @e[tag=facing]
=======
summon boat ^^^-10
execute @s ^^^-10 tag @e[type=boat,r=1,c=1] add facing
tag @s add player
//prepare
execute @e[tag=facing] ~~~tp~~~facing @a[tag=player]
//facing
execute @e[tag=facing,rx=90,rxm=0.00001] ~~~tag @s add rx_fu
execute @e[tag=facing,tag=rx_fu] ~~~tp~~~~~-90.0
//decide
execute @e[tag=facing] ~~~function get_rx
//get_rx_score
execute @s[tag=rx_fu] ~~~scoreboard players remove @e[tag=facing] rx 9000000
scoreboard players reset * data
scoreboard players set fu data -1
scoreboard players operation @e[tag=facing] rx *= fu data
//get_rx_true_score
scoreboard players set rx_true data 0
#scores_reset
scoreboard players operation rx_true data = @e[tag=facing] rx
#get_rx_true_score
//save_rx_true_score
scoreboard players set @s rx_truly 0
scoreboard players operation @s rx_truly = @e[tag=facing] rx
//scores_operation
tag @s[tag=player] remove player
//remove_tag
execute @e[tag=facing] ~~~tp~~32767~
kill @e[tag=facing]
>>>>>>> d95f919c53aa8612409504198bbed77f930d5f64
//kill_boat