execute @a[tag=buy:i_c,scores={buy:math=0}] ~ ~ ~ summon minecraft:armor_stand buy:mark 0 4 0
execute @a[tag=buy:i_c,scores={buy:math=0}] 0 4 0 tag @e[c=1,type=minecraft:armor_stand,name=buy:mark] add buy:mark
execute @a[tag=buy:i_c,scores={buy:math=0}] 0 4 0 tag @e[c=1,type=minecraft:armor_stand,name=buy:mark] add buy:mark_type_is_i_c
execute @a[tag=buy:i_c,scores={buy:math=0}] 0 4 0 tag @e[c=1,type=minecraft:armor_stand,name=buy:mark] add buy:mark_result_is_unsuccess
#summon_and_mark_entity
execute @a[tag=buy:i_c,scores={buy:math=0,buy:i_c_uid=128..}] ~ ~ ~ tag @e[tag=buy:mark] add buy:mark_scores_0_128
execute @a[tag=buy:i_c,scores={buy:math=0,buy:i_c_uid=128..}] ~ ~ ~ scoreboard players remove @s buy:i_c_uid 128
#1
execute @a[tag=buy:i_c,scores={buy:math=0,buy:i_c_uid=63..}] ~ ~ ~ tag @e[tag=buy:mark] add buy:mark_scores_0_63
execute @a[tag=buy:i_c,scores={buy:math=0,buy:i_c_uid=63..}] ~ ~ ~ scoreboard players remove @s buy:i_c_uid 63
#2
execute @a[tag=buy:i_c,scores={buy:math=0,buy:i_c_uid=32..}] ~ ~ ~ tag @e[tag=buy:mark] add buy:mark_scores_0_32
execute @a[tag=buy:i_c,scores={buy:math=0,buy:i_c_uid=32..}] ~ ~ ~ scoreboard players remove @s buy:i_c_uid 32
#3
execute @a[tag=buy:i_c,scores={buy:math=0,buy:i_c_uid=16..}] ~ ~ ~ tag @e[tag=buy:mark] add buy:mark_scores_0_16
execute @a[tag=buy:i_c,scores={buy:math=0,buy:i_c_uid=16..}] ~ ~ ~ scoreboard players remove @s buy:i_c_uid 16
#4
execute @a[tag=buy:i_c,scores={buy:math=0,buy:i_c_uid=8..}] ~ ~ ~ tag @e[tag=buy:mark] add buy:mark_scores_0_8
execute @a[tag=buy:i_c,scores={buy:math=0,buy:i_c_uid=8..}] ~ ~ ~ scoreboard players remove @s buy:i_c_uid 8
#5
execute @a[tag=buy:i_c,scores={buy:math=0,buy:i_c_uid=4..}] ~ ~ ~ tag @e[tag=buy:mark] add buy:mark_scores_0_4
execute @a[tag=buy:i_c,scores={buy:math=0,buy:i_c_uid=4..}] ~ ~ ~ scoreboard players remove @s buy:i_c_uid 4
#6
execute @a[tag=buy:i_c,scores={buy:math=0,buy:i_c_uid=2..}] ~ ~ ~ tag @e[tag=buy:mark] add buy:mark_scores_0_2
execute @a[tag=buy:i_c,scores={buy:math=0,buy:i_c_uid=2..}] ~ ~ ~ scoreboard players remove @s buy:i_c_uid 2
#7
execute @a[tag=buy:i_c,scores={buy:math=0,buy:i_c_uid=1..}] ~ ~ ~ tag @e[tag=buy:mark] add buy:mark_scores_0_1
execute @a[tag=buy:i_c,scores={buy:math=0,buy:i_c_uid=1..}] ~ ~ ~ scoreboard players remove @s buy:i_c_uid 1
#8
execute @a[tag=buy:i_c,scores={buy:math=0,buy:i_c_uid=1..}] ~ ~ ~ tag @e[tag=buy:mark] add buy:mark_scores_0_0
execute @a[tag=buy:i_c,scores={buy:math=0,buy:i_c_uid=1..}] ~ ~ ~ scoreboard players remove @s buy:i_c_uid 1
#9
execute @a[tag=buy:i_c,scores={buy:math=0,buy:i_c_uid=1..}] ~ ~ ~ tag @e[tag=buy:mark] add buy:mark_scores_0_00
execute @a[tag=buy:i_c,scores={buy:math=0,buy:i_c_uid=1..}] ~ ~ ~ scoreboard players remove @s buy:i_c_uid 1
#10
scoreboard objectives add buy:uid_save dummy
execute @a[tag=buy:i_c,scores={buy:math=0}] ~ ~ ~ scoreboard players operation @s buy:uid_save = @s uid
#score_operation_=
execute @a[tag=buy:i_c,scores={buy:math=0,buy:uid_save=2097152..}] ~ ~ ~ tag @e[tag=buy:mark] add buy:mark_scores_1_2097152
execute @a[tag=buy:i_c,scores={buy:math=0,buy:uid_save=2097152..}] ~ ~ ~ scoreboard players remove @s buy:uid_save 2097152
#1
execute @a[tag=buy:i_c,scores={buy:math=0,buy:uid_save=1048576..}] ~ ~ ~ tag @e[tag=buy:mark] add buy:mark_scores_1_1048576
execute @a[tag=buy:i_c,scores={buy:math=0,buy:uid_save=1048576..}] ~ ~ ~ scoreboard players remove @s buy:uid_save 1048576
#2
execute @a[tag=buy:i_c,scores={buy:math=0,buy:uid_save=524288..}] ~ ~ ~ tag @e[tag=buy:mark] add buy:mark_scores_1_524288
execute @a[tag=buy:i_c,scores={buy:math=0,buy:uid_save=524288..}] ~ ~ ~ scoreboard players remove @s buy:uid_save 524288
#3
execute @a[tag=buy:i_c,scores={buy:math=0,buy:uid_save=262144..}] ~ ~ ~ tag @e[tag=buy:mark] add buy:mark_scores_1_262144
execute @a[tag=buy:i_c,scores={buy:math=0,buy:uid_save=262144..}] ~ ~ ~ scoreboard players remove @s buy:uid_save 262144
#4
execute @a[tag=buy:i_c,scores={buy:math=0,buy:uid_save=131072..}] ~ ~ ~ tag @e[tag=buy:mark] add buy:mark_scores_1_131072
execute @a[tag=buy:i_c,scores={buy:math=0,buy:uid_save=131072..}] ~ ~ ~ scoreboard players remove @s buy:uid_save 131072
#5
execute @a[tag=buy:i_c,scores={buy:math=0,buy:uid_save=65536..}] ~ ~ ~ tag @e[tag=buy:mark] add buy:mark_scores_1_65536
execute @a[tag=buy:i_c,scores={buy:math=0,buy:uid_save=65536..}] ~ ~ ~ scoreboard players remove @s buy:uid_save 65536
#6
execute @a[tag=buy:i_c,scores={buy:math=0,buy:uid_save=32768..}] ~ ~ ~ tag @e[tag=buy:mark] add buy:mark_scores_1_32768
execute @a[tag=buy:i_c,scores={buy:math=0,buy:uid_save=32768..}] ~ ~ ~ scoreboard players remove @s buy:uid_save 32768
#7
execute @a[tag=buy:i_c,scores={buy:math=0,buy:uid_save=16384..}] ~ ~ ~ tag @e[tag=buy:mark] add buy:mark_scores_1_16384
execute @a[tag=buy:i_c,scores={buy:math=0,buy:uid_save=16384..}] ~ ~ ~ scoreboard players remove @s buy:uid_save 16384
#8
execute @a[tag=buy:i_c,scores={buy:math=0,buy:uid_save=8192..}] ~ ~ ~ tag @e[tag=buy:mark] add buy:mark_scores_1_8192
execute @a[tag=buy:i_c,scores={buy:math=0,buy:uid_save=8192..}] ~ ~ ~ scoreboard players remove @s buy:uid_save 8192
#9
execute @a[tag=buy:i_c,scores={buy:math=0,buy:uid_save=4096..}] ~ ~ ~ tag @e[tag=buy:mark] add buy:mark_scores_1_4096
execute @a[tag=buy:i_c,scores={buy:math=0,buy:uid_save=4096..}] ~ ~ ~ scoreboard players remove @s buy:uid_save 4096
#10
execute @a[tag=buy:i_c,scores={buy:math=0,buy:uid_save=2048..}] ~ ~ ~ tag @e[tag=buy:mark] add buy:mark_scores_1_2048
execute @a[tag=buy:i_c,scores={buy:math=0,buy:uid_save=2048..}] ~ ~ ~ scoreboard players remove @s buy:uid_save 2048
#11
execute @a[tag=buy:i_c,scores={buy:math=0,buy:uid_save=1024..}] ~ ~ ~ tag @e[tag=buy:mark] add buy:mark_scores_1_1024
execute @a[tag=buy:i_c,scores={buy:math=0,buy:uid_save=1024..}] ~ ~ ~ scoreboard players remove @s buy:uid_save 1024
#12
execute @a[tag=buy:i_c,scores={buy:math=0,buy:uid_save=512..}] ~ ~ ~ tag @e[tag=buy:mark] add buy:mark_scores_1_512
execute @a[tag=buy:i_c,scores={buy:math=0,buy:uid_save=512..}] ~ ~ ~ scoreboard players remove @s buy:uid_save 512
#13
execute @a[tag=buy:i_c,scores={buy:math=0,buy:uid_save=256..}] ~ ~ ~ tag @e[tag=buy:mark] add buy:mark_scores_1_256
execute @a[tag=buy:i_c,scores={buy:math=0,buy:uid_save=256..}] ~ ~ ~ scoreboard players remove @s buy:uid_save 256
#14
execute @a[tag=buy:i_c,scores={buy:math=0,buy:uid_save=128..}] ~ ~ ~ tag @e[tag=buy:mark] add buy:mark_scores_1_128
execute @a[tag=buy:i_c,scores={buy:math=0,buy:uid_save=128..}] ~ ~ ~ scoreboard players remove @s buy:uid_save 128
#15
execute @a[tag=buy:i_c,scores={buy:math=0,buy:uid_save=63..}] ~ ~ ~ tag @e[tag=buy:mark] add buy:mark_scores_1_63
execute @a[tag=buy:i_c,scores={buy:math=0,buy:uid_save=63..}] ~ ~ ~ scoreboard players remove @s buy:uid_save 63
#16
execute @a[tag=buy:i_c,scores={buy:math=0,buy:uid_save=32..}] ~ ~ ~ tag @e[tag=buy:mark] add buy:mark_scores_1_32
execute @a[tag=buy:i_c,scores={buy:math=0,buy:uid_save=32..}] ~ ~ ~ scoreboard players remove @s buy:uid_save 32
#17
execute @a[tag=buy:i_c,scores={buy:math=0,buy:uid_save=16..}] ~ ~ ~ tag @e[tag=buy:mark] add buy:mark_scores_1_16
execute @a[tag=buy:i_c,scores={buy:math=0,buy:uid_save=16..}] ~ ~ ~ scoreboard players remove @s buy:uid_save 16
#18
execute @a[tag=buy:i_c,scores={buy:math=0,buy:uid_save=8..}] ~ ~ ~ tag @e[tag=buy:mark] add buy:mark_scores_1_8
execute @a[tag=buy:i_c,scores={buy:math=0,buy:uid_save=8..}] ~ ~ ~ scoreboard players remove @s buy:uid_save 8
#19
execute @a[tag=buy:i_c,scores={buy:math=0,buy:uid_save=4..}] ~ ~ ~ tag @e[tag=buy:mark] add buy:mark_scores_1_4
execute @a[tag=buy:i_c,scores={buy:math=0,buy:uid_save=4..}] ~ ~ ~ scoreboard players remove @s buy:uid_save 4
#20
execute @a[tag=buy:i_c,scores={buy:math=0,buy:uid_save=2..}] ~ ~ ~ tag @e[tag=buy:mark] add buy:mark_scores_1_2
execute @a[tag=buy:i_c,scores={buy:math=0,buy:uid_save=2..}] ~ ~ ~ scoreboard players remove @s buy:uid_save 2
#21
execute @a[tag=buy:i_c,scores={buy:math=0,buy:uid_save=1..}] ~ ~ ~ tag @e[tag=buy:mark] add buy:mark_scores_1_1
execute @a[tag=buy:i_c,scores={buy:math=0,buy:uid_save=1..}] ~ ~ ~ scoreboard players remove @s buy:uid_save 1
#22
execute @a[tag=buy:i_c,scores={buy:math=0,buy:uid_save=1..}] ~ ~ ~ tag @e[tag=buy:mark] add buy:mark_scores_1_0
execute @a[tag=buy:i_c,scores={buy:math=0,buy:uid_save=1..}] ~ ~ ~ scoreboard players remove @s buy:uid_save 1
#23
scoreboard objectives remove buy:uid_save
#scoreboard_remove
execute @e[tag=buy:mark] ~ ~ ~ structure load buy:mark ~ ~ ~
execute @e[tag=buy:mark,c=1] ~ ~ ~ structure save buy:mark ~ ~ ~ ~ ~ ~ true disk false
execute @e[tag=buy:mark] ~ ~ ~ tp ~ -1.0 ~
#save_date