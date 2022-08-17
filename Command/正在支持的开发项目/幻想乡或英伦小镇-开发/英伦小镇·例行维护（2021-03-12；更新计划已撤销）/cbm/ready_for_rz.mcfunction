execute @a[tag=cbm:js_and_msg_down,scores={授权=!1,aid=!1..99}] ~ ~ ~ tag @s add cbm:rz_unallow
execute @a[tag=cbm:js_and_msg_down,scores={授权=!1,aid=!1..99}] ~ ~ ~ tag @s add cbm:rz_unallow
execute @a[tag=cbm:rz_unallow] ~ ~ ~ tellraw @s {"rawtext":[{"text":"§c您需要权限来执行命令。"}]}
execute @a[tag=cbm:rz_unallow] ~ ~ ~ playsound random.break @s ~ ~ ~ 1 1 1
execute @a[tag=cbm:rz_unallow] ~ ~ ~ tag @s remove cbm:js_and_msg_down
execute @a[tag=cbm:rz_unallow] ~ ~ ~ tag @s remove cbm:rz_unallow
#test_want_to_rz_player
execute @a[tag=cbm:js_and_msg_down,c=1] ~ ~ ~ tag @s add cbm:rz_team_test
execute @a[tag=cbm:js_and_msg_down,c=1] ~ ~ ~ execute @a[tag=cbm:rz_team,c=1] ~ ~ ~ tag @a[tag=cbm:rz_team_test] remove cbm:rz_team_test
execute @a[tag=cbm:js_and_msg_down,c=1] ~ ~ ~ execute @a[tag=cbm:rz_team_test] ~ ~ ~ tag @a[tag=cbm:js_and_msg_down] add cbm:rz_team
execute @a[tag=cbm:js_and_msg_down,c=1] ~ ~ ~ execute @a[tag=cbm:rz_team_test] ~ ~ ~ tag @s remove cbm:rz_team_test
execute @a[tag=cbm:rz_team,c=1] ~ ~ ~ tag @s add cbm:rz_random
execute @a[tag=cbm:rz_random] ~ ~ ~ tag @s remove cbm:rz_team
execute @a[tag=cbm:rz_random] ~ ~ ~ function rz
execute @a[tag=cbm:rz_random] ~ ~ ~ tag @s remove cbm:rz_random
#rz