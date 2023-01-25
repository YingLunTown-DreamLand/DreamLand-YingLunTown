scoreboard objectives add tp_sound dummy
#scoreboard_add
tag @a[tag=tp_sound:player] remove tp_sound:player
execute @e[tag=tp_sound] ~ ~ ~ tag @a[r=50,tag=tp_will_sound] add tp_sound:player
execute @a[tag=tp_sound:player] ~ ~ ~ scoreboard players add @s tp_sound 1
#判定是否在目标区域范围内并执行相关操作
execute @a[scores={tp_sound=1..}] ~ ~ ~ playsound random.orb @s ~ ~ ~ 1 1 1
execute @a[scores={tp_sound=1..}] ~ ~ ~ tag @s remove tp_will_sound
execute @a[scores={tp_sound=1..}] ~ ~ ~ scoreboard players reset @s tp_sound
#end