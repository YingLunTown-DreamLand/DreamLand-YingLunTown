scoreboard objectives add pos_return dummy
#scoreboard_add


execute @a[tag=posnote:random,tag=!posnote:had_noted] ~ ~ ~ structure load posnote:middle_pos
#1


execute @e[tag=pos_return] ~ ~ ~ tp ~ ~ ~ facing ~1 ~ ~
execute @e[tag=pos_return] ~ ~ ~ scoreboard players operation @s pos_return = save_1 notepos:math
execute @e[tag=pos_return,scores={pos_return=..-1}] ~ ~ ~ tag @s add pos_return:pos_fu
execute @e[tag=pos_return,scores={pos_return=..-1}] ~ ~ ~ scoreboard players add @s pos_return 31
#prepare_1


execute @e[tag=pos_return,scores={pos_return=16..}] ~ ~ ~ tp ^ ^ ^16
execute @e[tag=pos_return,scores={pos_return=16..}] ~ ~ ~ scoreboard players remove @s pos_return 16

execute @e[tag=pos_return,scores={pos_return=8..}] ~ ~ ~ tp ^ ^ ^8
execute @e[tag=pos_return,scores={pos_return=8..}] ~ ~ ~ scoreboard players remove @s pos_return 8

execute @e[tag=pos_return,scores={pos_return=4..}] ~ ~ ~ tp ^ ^ ^4
execute @e[tag=pos_return,scores={pos_return=4..}] ~ ~ ~ scoreboard players remove @s pos_return 4

execute @e[tag=pos_return,scores={pos_return=2..}] ~ ~ ~ tp ^ ^ ^2
execute @e[tag=pos_return,scores={pos_return=2..}] ~ ~ ~ scoreboard players remove @s pos_return 2

execute @e[tag=pos_return,scores={pos_return=1..}] ~ ~ ~ tp ^ ^ ^1
execute @e[tag=pos_return,scores={pos_return=1..}] ~ ~ ~ scoreboard players remove @s pos_return 1

execute @e[tag=pos_return,tag=pos_return:pos_fu] ~ ~ ~ tp ^ ^ ^-31
execute @e[tag=pos_return,tag=pos_return:pos_fu] ~ ~ ~ tag @s remove pos_return:pos_fu
#23
#posx


execute @e[tag=pos_return] ~ ~ ~ tp ~ ~ ~ facing ~ ~ ~1
execute @e[tag=pos_return] ~ ~ ~ scoreboard players operation @s pos_return = @s posz
execute @e[tag=pos_return,scores={pos_return=..-1}] ~ ~ ~ tag @s add pos_return:pos_fu
execute @e[tag=pos_return,scores={pos_return=..-1}] ~ ~ ~ scoreboard players add @s pos_return 31
#prepare_2


execute @e[tag=pos_return,scores={pos_return=16..}] ~ ~ ~ tp ^ ^ ^16
execute @e[tag=pos_return,scores={pos_return=16..}] ~ ~ ~ scoreboard players remove @s pos_return 16

execute @e[tag=pos_return,scores={pos_return=8..}] ~ ~ ~ tp ^ ^ ^8
execute @e[tag=pos_return,scores={pos_return=8..}] ~ ~ ~ scoreboard players remove @s pos_return 8

execute @e[tag=pos_return,scores={pos_return=4..}] ~ ~ ~ tp ^ ^ ^4
execute @e[tag=pos_return,scores={pos_return=4..}] ~ ~ ~ scoreboard players remove @s pos_return 4

execute @e[tag=pos_return,scores={pos_return=2..}] ~ ~ ~ tp ^ ^ ^2
execute @e[tag=pos_return,scores={pos_return=2..}] ~ ~ ~ scoreboard players remove @s pos_return 2

execute @e[tag=pos_return,scores={pos_return=1..}] ~ ~ ~ tp ^ ^ ^1
execute @e[tag=pos_return,scores={pos_return=1..}] ~ ~ ~ scoreboard players remove @s pos_return 1

execute @e[tag=pos_return,tag=pos_return:pos_fu] ~ ~ ~ tp ^ ^ ^-31
execute @e[tag=pos_return,tag=pos_return:pos_fu] ~ ~ ~ tag @s remove pos_return:pos_fu
#posz


execute @e[tag=pos_return] ~ ~ ~ tp ~ 32767.0 ~
#posy


execute @e[tag=pos_return] ~ ~ ~ tag @s remove pos_return
#tag_set