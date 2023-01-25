scoreboard objectives add cbm:time dummy
#scoreboard_added
scoreboard players add @e[type=minecraft:armor_stand,name=cbm] cbm:time 1
scoreboard players add @a[tag=cbm:js_and_msg_down] cbm:time 1
tag @e[scores={cbm:time=901..},type=minecraft:armor_stand,name=cbm] add cbm:armor_stand_will_kill
scoreboard players reset @e[tag=cbm:armor_stand_will_kill] cbm:time
kill @e[tag=cbm:armor_stand_will_kill]
scoreboard players reset @a[tag=cbm:js_and_msg_down,scores={cbm:time=601..}] cbmrz
scoreboard players reset @a[tag=cbm:js_and_msg_down,scores={cbm:time=601..}] cbm:save
tellraw @a[tag=cbm:js_and_msg_down,scores={cbm:time=601..}] {"rawtext":[{"text":"§c认证超时(认证时长超过30秒)！"}]}
execute @a[tag=cbm:js_and_msg_down,scores={cbm:time=601..}] ~ ~ ~ playsound random.break @s ~ ~ ~ 1 1 1
tag @a[tag=cbm:js_and_msg_down,scores={cbm:time=601..}] remove cbm:js_and_msg_down
scoreboard players reset @a[scores={cbm:time=601..}] cbm:time
#time