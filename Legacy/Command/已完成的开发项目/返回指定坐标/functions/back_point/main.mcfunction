scoreboard objectives add p_r:sound dummy
scoreboard objectives add p_r:online dummy
scoreboard objectives add p_r:entity_time dummy
scoreboard objectives add pos_return dummy
scoreboard objectives add s_m:settings dummy
#scoreboard_add

function back_point/getin_prepare
#test_if_is_unonline_change_to_online

execute @e[tag=pos_return:sound_for_success] ~ ~ ~ function back_point/entity
#entity

execute @a[tag=pos_return,c=1] ~ ~ ~ function back_point/pos_return
#pos_return