scoreboard players add @a p_r:online 0
scoreboard players add @a p_r:sound 0
#1

execute @a[scores={p_r:online=0,p_r:sound=!0}] ~ ~ ~ scoreboard players set @s p_r:sound 0
execute @a[tag="pos_return:sound_for_success/player",scores={p_r:online=0}] ~ ~ ~ tag @s remove "pos_return:sound_for_success/player"
#2

scoreboard players reset * p_r:online
scoreboard players set @a p_r:online 1
#3
#test_if_is_unonline_change_to_online