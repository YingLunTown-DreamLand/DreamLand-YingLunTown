scoreboard objectives add aid dummy
scoreboard players add @a aid 0
*#scoreboard players set @a[name=] aid 1
#uid
scoreboard objectives add 授权 dummy
scoreboard players add @a 授权 0
*#scoreboard players set @a[scores={白名单=2}] 授权 1
execute @a[tag=cbm,c=1,tag=!cbm:js_and_msg_down] ~ ~ ~ function ready_for_j_a_m
execute @a[tag=cbm,tag=cbm:js_and_msg_down] ~ ~ ~ tellraw @s {"rawtext":[{"text":"§c请不要频繁请求验证码！"}]}
execute @a[tag=cbm,tag=cbm:js_and_msg_down] ~ ~ ~ playsound random.break @s ~ ~ ~ 1 1 1
execute @a[tag=cbm,tag=cbm:js_and_msg_down] ~ ~ ~ tag @s remove cbm
#ready_for_j_a_m
execute @a[tag=cbm:js_and_msg_down,scores={cbmrz=..0},c=1] ~ ~ ~ function ready_for_rz
execute @a[tag=cbm:js_and_msg_down,scores={cbmrz=0..},c=1] ~ ~ ~ function ready_for_rz
#rz
scoreboard players reset @a[tag=!cbm:js_and_msg_down] cbm:time
scoreboard players reset @e[type=minecraft:armor_stand,name=!cbm] cbm:time
execute @e[type=minecraft:armor_stand,name=cbm,c=1] ~ ~ ~ function time
execute @a[tag=cbm:js_and_msg_down,c=1] ~ ~ ~ function time
#time
scoreboard objectives add cbm:cbm_save dummy
scoreboard objectives add cbm:c_s_r dummy
scoreboard players add @e[type=minecraft:command_block_minecart] cbm:cbm_save 0
scoreboard players add @e[type=minecraft:command_block_minecart] cbm:c_s_r 0
kill @e[scores={cbm:cbm_save=!100000..999999,cbm:c_s_r=!..-1,cbm:c_s_r=!1..},type=minecraft:command_block_minecart]
execute @e[type=minecraft:command_block_minecart,c=1] ~ ~ ~ function kill
#kill