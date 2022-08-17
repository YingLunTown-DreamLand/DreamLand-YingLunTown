scoreboard objectives add pwb:time dummy
#scoreboard_add
tickingarea add circle 0 0 0 4 "抛物球(pwb)"
#tickingarea_add
scoreboard players add time pwb:time 0
summon minecraft:armor_stand pwb:test ~ 32767.0 ~
scoreboard players operation @e[name=pwb:test,type=minecraft:armor_stand,y=32767.0,dy=0] pwb:time = time pwb:time
execute @e[name=pwb:test,type=minecraft:armor_stand,y=32767.0,dy=0,scores={pwb:time=0..19}] ~ ~ ~ scoreboard players add time pwb:time 1
#be_sure_that_this_system_can_run
execute @e[name=pwb:test,type=minecraft:armor_stand,y=32767.0,dy=0] ~ ~ ~ execute @e[type=minecraft:fishing_hook] ~ ~ ~ execute @p[r=3] ~ ~ ~ function get_distance
#get_distance
execute @e[name=pwb:test,type=minecraft:armor_stand,y=32767.0,dy=0] ~ ~ ~ execute @e[tag=pwb:ball] ~ ~ ~ function move/main
#move
scoreboard players reset @e[name=pwb:test,type=minecraft:armor_stand,y=32767.0,dy=0] pwb:time
kill @e[name=pwb:test,type=minecraft:armor_stand,y=32767.0,dy=0]
#clean_entity's_date_and_itself 
execute @e[tag=pwb:ball] ~ ~-512 ~ particle minecraft:balloon_gas_particle ~ ~ ~
kill @e[type=minecraft:fishing_hook]
execute @e[tag=pwb:ball] ~ ~ ~ execute @s[y=512,dy=-30000000] ~ ~ ~ kill @s
execute @e[tag=pwb:ball,scores={pwb:posx=250001..}] ~ ~ ~ kill @s
execute @e[tag=pwb:ball,scores={pwb:posz=250001..}] ~ ~ ~ kill @s