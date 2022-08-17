function move/y_pb_test
function move/y_pb_test
function move/y_pb_test
function move/y_pb_test
function move/y_pb_test
#0
execute @s[scores={pwb:posx=0..}] ~ ~-512 ~ detect ~0.25 ~ ~ air -1 tag @s add "pwb:test_unair_x_air"
execute @s[scores={pwb:posz=0..}] ~ ~-512 ~ detect ~ ~ ~0.25 air -1 tag @s add "pwb:test_unair_z_air"
#1
execute @s[scores={pwb:posx=..-1}] ~ ~-512 ~ detect ~-0.25 ~ ~ air -1 tag @s add "pwb:test_unair_x_air"
execute @s[scores={pwb:posz=..-1}] ~ ~-512 ~ detect ~ ~ ~-0.25 air -1 tag @s add "pwb:test_unair_z_air"
#2
scoreboard players set a pwb:time 100
scoreboard players set b pwb:time 80
scoreboard players set c pwb:time -1
scoreboard players set d pwb:time 32
scoreboard players set e pwb:time 50
execute @s[tag=!"pwb:test_unair_x_air"] ~ ~ ~ scoreboard players operation @s pwb:posx *= c pwb:time
#execute @s[tag=!"pwb:test_unair_x_air"] ~ ~ ~ scoreboard players operation @s pwb:posx /= a pwb:time
#execute @s[tag=!"pwb:test_unair_x_air"] ~ ~ ~ scoreboard players operation @s pwb:posx *= b pwb:time
#execute @s[tag=!"pwb:test_unair_x_air"] ~ ~ ~ scoreboard players operation @s pwb:posy /= a pwb:time
#execute @s[tag=!"pwb:test_unair_x_air"] ~ ~ ~ scoreboard players operation @s pwb:posy *= b pwb:time
#execute @s[tag=!"pwb:test_unair_x_air"] ~ ~ ~ scoreboard players operation @s pwb:posz /= a pwb:time
#execute @s[tag=!"pwb:test_unair_x_air"] ~ ~ ~ scoreboard players operation @s pwb:posz *= b pwb:time
#
execute @s[tag=pwb:y_unair] ~ ~ ~ scoreboard players operation @s pwb:posx /= a pwb:time
execute @s[tag=pwb:y_unair] ~ ~ ~ scoreboard players operation @s pwb:posx *= b pwb:time
execute @s[tag=pwb:y_unair] ~ ~ ~ scoreboard players operation @s pwb:posy *= c pwb:time
execute @s[tag=pwb:y_unair] ~ ~ ~ scoreboard players operation @s pwb:posy /= a pwb:time
execute @s[tag=pwb:y_unair,tag=!pwb:y_pzed] ~ ~ ~ scoreboard players operation @s pwb:posy *= e pwb:time
execute @s[tag=pwb:y_unair,tag=pwb:y_pzed] ~ ~ ~ scoreboard players operation @s pwb:posy *= d pwb:time
execute @s[tag=pwb:y_unair] ~ ~ ~ scoreboard players operation @s pwb:posz /= a pwb:time
execute @s[tag=pwb:y_unair] ~ ~ ~ scoreboard players operation @s pwb:posz *= b pwb:time
execute @s[tag=pwb:y_unair] ~ ~ ~ scoreboard players set @s pwb:xl_y_save 0
#
#execute @s[tag=!"pwb:test_unair_z_air"] ~ ~ ~ scoreboard players operation @s pwb:posx /= a pwb:time
#execute @s[tag=!"pwb:test_unair_z_air"] ~ ~ ~ scoreboard players operation @s pwb:posx *= b pwb:time
#execute @s[tag=!"pwb:test_unair_z_air"] ~ ~ ~ scoreboard players operation @s pwb:posy /= a pwb:time
#execute @s[tag=!"pwb:test_unair_z_air"] ~ ~ ~ scoreboard players operation @s pwb:posy *= b pwb:time
execute @s[tag=!"pwb:test_unair_z_air"] ~ ~ ~ scoreboard players operation @s pwb:posz *= c pwb:time
#execute @s[tag=!"pwb:test_unair_z_air"] ~ ~ ~ scoreboard players operation @s pwb:posz /= a pwb:time
#execute @s[tag=!"pwb:test_unair_z_air"] ~ ~ ~ scoreboard players operation @s pwb:posz *= b pwb:time
#5
execute @s[tag=pwb:y_unair,tag=!pwb:y_pzed] ~ ~ ~ tag @s add pwb:y_pzed
tag @s remove pwb:test_unair_x_air
tag @s remove pwb:test_unair_y_air
tag @s remove pwb:test_unair_z_air
tag @s remove pwb:y_unair