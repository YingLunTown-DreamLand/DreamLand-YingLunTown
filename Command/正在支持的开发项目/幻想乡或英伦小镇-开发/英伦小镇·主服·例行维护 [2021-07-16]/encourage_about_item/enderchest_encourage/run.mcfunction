scoreboard objectives add e_e_s:online dummy
scoreboard objectives add e_e_s:o_t dummy
scoreboard objectives add e_e_s:mark dummy
#scoreboard_add
scoreboard players add @a e_e_s:online 0
execute @a[scores={e_e_s:online=0}] ~ ~ ~ scoreboard players set @s e_e_s:o_t 100
execute @a[scores={e_e_s:online=0,e_e_s:mark=!2..4,e_e_s:mark=!5,e_e_s:mark=!7..9,e_e_s:mark=!10,e_e_s:mark=!13..14}] ~ ~ ~ scoreboard players add @s e_e_s:mark 1
scoreboard players reset * e_e_s:online
scoreboard players set @a e_e_s:online 1
scoreboard players add @a e_e_s:mark 0
#分数初始化
execute @a[scores={e_e_s:mark=0..14,e_e_s:mark=!4,e_e_s:mark=!9,e_e_s:mark=!14,e_e_s:o_t=0},c=1] ~ ~ ~ function enderchest_encourage
#enderchest_encourage
execute @a[scores={time_min=1000..,e_e_s:mark=4},tag=enderchest_encourage:said] ~ ~ ~ tag @s remove enderchest_encourage:said
execute @a[scores={time_min=1000..,e_e_s:mark=4}] ~ ~ ~ scoreboard players set @s e_e_s:mark 5
execute @a[scores={time_min=5000..,e_e_s:mark=9},tag=enderchest_encourage:said] ~ ~ ~ tag @s remove enderchest_encourage:said
execute @a[scores={time_min=5000..,e_e_s:mark=9}] ~ ~ ~ scoreboard players set @s e_e_s:mark 10
#阶段性奖励给予
execute @a[scores={e_e_s:o_t=1..}] ~ ~ ~ scoreboard players remove @s e_e_s:o_t 1
#等待玩家上线完成