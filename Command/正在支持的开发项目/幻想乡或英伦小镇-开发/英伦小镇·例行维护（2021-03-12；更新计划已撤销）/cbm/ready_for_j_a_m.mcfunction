execute @a[tag=cbm,scores={授权=!1,aid=!1..99},tag=!cbm:js_and_msg_down] ~ ~ ~ tellraw @s {"rawtext":[{"text":"§c您需要权限来执行命令。"}]}
execute @a[tag=cbm,scores={授权=!1,aid=!1..99},tag=!cbm:js_and_msg_down] ~ ~ ~ playsound random.break @s ~ ~ ~ 1 1 1
execute @a[tag=cbm,scores={授权=!1,aid=!1..99},tag=!cbm:js_and_msg_down] ~ ~ ~ tag @s remove cbm
#test_want_to_js_and_msg_player
execute @a[tag=cbm,scores={授权=1,aid=1..99},c=1,tag=!cbm:js_and_msg_down] ~ ~ ~ tag @s add cbm_random
#choose_one
execute @a[tag=cbm_random,scores={授权=1,aid=1..99},tag=!cbm:js_and_msg_down] ~ ~ ~ function js_and_msg
execute @a[tag=cbm_random,scores={授权=1,aid=1..99}] ~ ~ ~ tag @s add cbm:js_and_msg_down
execute @a[tag=cbm_random,scores={授权=1,aid=1..99}] ~ ~ ~ tag @s remove cbm
execute @a[tag=cbm_random,scores={授权=1,aid=1..99}] ~ ~ ~ tag @s remove cbm_random
#js_and_msg