execute @a[tag=cbm:rz_random,scores={授权=1,cbmrz=..99999}] ~ ~ ~ tag @s add cbm:rz_unallow
execute @a[tag=cbm:rz_random,scores={授权=1,cbmrz=1000000..}] ~ ~ ~ tag @s add cbm:rz_unallow
execute @a[tag=cbm:rz_unallow] ~ ~ ~ tellraw @s {"rawtext":[{"text":"§c无效的验证码(验证码只能为100000-999999之间的数)。"}]}
execute @a[tag=cbm:rz_unallow] ~ ~ ~ playsound random.break @s ~ ~ ~ 1 1 1
execute @a[tag=cbm:rz_unallow] ~ ~ ~ scoreboard players reset @s cbmrz
execute @a[tag=cbm:rz_unallow] ~ ~ ~ tag @s remove cbm:rz_random
execute @a[tag=cbm:rz_unallow] ~ ~ ~ tag @s remove cbm:rz_unallow
#test_want_to_rz_player
execute @a[tag=cbm:rz_random] ~ ~ ~ scoreboard objectives add cbm:rz_js dummy
execute @a[tag=cbm:rz_random] ~ ~ ~ scoreboard players operation shiwan cbm:rz_js = @s cbmrz
execute @a[tag=cbm:rz_random] ~ ~ ~ scoreboard players operation wan cbm:rz_js = @s cbmrz
execute @a[tag=cbm:rz_random] ~ ~ ~ scoreboard players operation qian cbm:rz_js = @s cbmrz
execute @a[tag=cbm:rz_random] ~ ~ ~ scoreboard players operation bai cbm:rz_js = @s cbmrz
execute @a[tag=cbm:rz_random] ~ ~ ~ scoreboard players operation shi cbm:rz_js = @s cbmrz
execute @a[tag=cbm:rz_random] ~ ~ ~ scoreboard players operation ge cbm:rz_js = @s cbmrz
#scoreboard_added_and_scores_operationed_=
execute @a[tag=cbm:rz_random] ~ ~ ~ scoreboard players set chu cbm:rz_js 100000
execute @a[tag=cbm:rz_random] ~ ~ ~ scoreboard players operation shiwan cbm:rz_js /= chu cbm:rz_js
#shiwan
execute @a[tag=cbm:rz_random] ~ ~ ~ scoreboard players set chu cbm:rz_js 10000
execute @a[tag=cbm:rz_random] ~ ~ ~ scoreboard players set chu_0 cbm:rz_js 10
execute @a[tag=cbm:rz_random] ~ ~ ~ scoreboard players operation wan cbm:rz_js /= chu cbm:rz_js
execute @a[tag=cbm:rz_random] ~ ~ ~ scoreboard players operation wan cbm:rz_js %= chu_0 cbm:rz_js
#wan
execute @a[tag=cbm:rz_random] ~ ~ ~ scoreboard players set chu cbm:rz_js 1000
execute @a[tag=cbm:rz_random] ~ ~ ~ scoreboard players operation qian cbm:rz_js /= chu cbm:rz_js
execute @a[tag=cbm:rz_random] ~ ~ ~ scoreboard players operation qian cbm:rz_js %= chu_0 cbm:rz_js
#qian
execute @a[tag=cbm:rz_random] ~ ~ ~ scoreboard players set chu cbm:rz_js 100
execute @a[tag=cbm:rz_random] ~ ~ ~ scoreboard players operation bai cbm:rz_js /= chu cbm:rz_js
execute @a[tag=cbm:rz_random] ~ ~ ~ scoreboard players operation bai cbm:rz_js %= chu_0 cbm:rz_js
#bai
execute @a[tag=cbm:rz_random] ~ ~ ~ scoreboard players operation shi cbm:rz_js /= chu_0 cbm:rz_js
execute @a[tag=cbm:rz_random] ~ ~ ~ scoreboard players operation shi cbm:rz_js %= chu_0 cbm:rz_js
#shi
execute @a[tag=cbm:rz_random] ~ ~ ~ scoreboard players operation ge cbm:rz_js %= chu_0 cbm:rz_js
#ge
execute @a[tag=cbm:rz_random] ~ ~ ~ scoreboard players operation all cbm:rz_js = shiwan cbm:rz_js
execute @a[tag=cbm:rz_random] ~ ~ ~ scoreboard players operation unall cbm:rz_js = shiwan cbm:rz_js
execute @a[tag=cbm:rz_random] ~ ~ ~ scoreboard players operation allall cbm:rz_js = shiwan cbm:rz_js
#scores_operationed_=
execute @a[tag=cbm:rz_random] ~ ~ ~ scoreboard players operation all cbm:rz_js += wan cbm:rz_js
execute @a[tag=cbm:rz_random] ~ ~ ~ scoreboard players operation all cbm:rz_js += qian cbm:rz_js
execute @a[tag=cbm:rz_random] ~ ~ ~ scoreboard players operation all cbm:rz_js += bai cbm:rz_js
execute @a[tag=cbm:rz_random] ~ ~ ~ scoreboard players operation all cbm:rz_js += shi cbm:rz_js
execute @a[tag=cbm:rz_random] ~ ~ ~ scoreboard players operation all cbm:rz_js += ge cbm:rz_js
#all
execute @a[tag=cbm:rz_random] ~ ~ ~ scoreboard players operation unall cbm:rz_js -= wan cbm:rz_js
execute @a[tag=cbm:rz_random] ~ ~ ~ scoreboard players operation unall cbm:rz_js -= qian cbm:rz_js
execute @a[tag=cbm:rz_random] ~ ~ ~ scoreboard players operation unall cbm:rz_js -= bai cbm:rz_js
execute @a[tag=cbm:rz_random] ~ ~ ~ scoreboard players operation unall cbm:rz_js -= shi cbm:rz_js
execute @a[tag=cbm:rz_random] ~ ~ ~ scoreboard players operation unall cbm:rz_js -= ge cbm:rz_js
#unall
execute @a[tag=cbm:rz_random] ~ ~32767 ~ summon minecraft:armor_stand cbm:rz_js
execute @a[tag=cbm:rz_random] ~ ~32767 ~ execute @e[r=3,name=cbm:rz_js,type=minecraft:armor_stand] ~ ~ ~ scoreboard players operation @s cbm:rz_js = wan cbm:rz_js
execute @a[tag=cbm:rz_random] ~ ~32767 ~ execute @e[scores={cbm:rz_js=1..9},r=3,name=cbm:rz_js,type=minecraft:armor_stand] ~ ~ ~ scoreboard players operation allall cbm:rz_js *= wan cbm:rz_js
execute @a[tag=cbm:rz_random] ~ ~32767 ~ execute @e[r=3,name=cbm:rz_js,type=minecraft:armor_stand] ~ ~ ~ scoreboard players operation @s cbm:rz_js = qian cbm:rz_js
execute @a[tag=cbm:rz_random] ~ ~32767 ~ execute @e[scores={cbm:rz_js=1..9},r=3,name=cbm:rz_js,type=minecraft:armor_stand] ~ ~ ~ scoreboard players operation allall cbm:rz_js *= qian cbm:rz_js
execute @a[tag=cbm:rz_random] ~ ~32767 ~ execute @e[r=3,name=cbm:rz_js,type=minecraft:armor_stand] ~ ~ ~ scoreboard players operation @s cbm:rz_js = bai cbm:rz_js
execute @a[tag=cbm:rz_random] ~ ~32767 ~ execute @e[scores={cbm:rz_js=1..9},r=3,name=cbm:rz_js,type=minecraft:armor_stand] ~ ~ ~ scoreboard players operation allall cbm:rz_js *= bai cbm:rz_js
execute @a[tag=cbm:rz_random] ~ ~32767 ~ execute @e[r=3,name=cbm:rz_js,type=minecraft:armor_stand] ~ ~ ~ scoreboard players operation @s cbm:rz_js = shi cbm:rz_js
execute @a[tag=cbm:rz_random] ~ ~32767 ~ execute @e[scores={cbm:rz_js=1..9},r=3,name=cbm:rz_js,type=minecraft:armor_stand] ~ ~ ~ scoreboard players operation allall cbm:rz_js *= shi cbm:rz_js
execute @a[tag=cbm:rz_random] ~ ~32767 ~ execute @e[r=3,name=cbm:rz_js,type=minecraft:armor_stand] ~ ~ ~ scoreboard players operation @s cbm:rz_js = ge cbm:rz_js
execute @a[tag=cbm:rz_random] ~ ~32767 ~ execute @e[scores={cbm:rz_js=1..9},r=3,name=cbm:rz_js,type=minecraft:armor_stand] ~ ~ ~ scoreboard players operation allall cbm:rz_js *= ge cbm:rz_js
#allall
execute @a[tag=cbm:rz_random] ~ ~ ~ scoreboard players operation all_0 cbm:rz_js = all cbm:rz_js
execute @a[tag=cbm:rz_random] ~ ~ ~ scoreboard players operation allall_0 cbm:rz_js = all cbm:rz_js
#scores_operationed_=
execute @a[tag=cbm:rz_random] ~ ~ ~ scoreboard players operation all_0 cbm:rz_js += unall cbm:rz_js
execute @a[tag=cbm:rz_random] ~ ~ ~ scoreboard players operation all_0 cbm:rz_js += allall cbm:rz_js
#all_0
execute @a[tag=cbm:rz_random] ~ ~ ~ scoreboard players operation all_n cbm:rz_js = all_0 cbm:rz_js
execute @a[tag=cbm:rz_random] ~ ~ ~ scoreboard players set number cbm:rz_js 3
execute @a[tag=cbm:rz_random] ~ ~ ~ scoreboard players operation all_n cbm:rz_js /= number cbm:rz_js
#all_n
execute @a[tag=cbm:rz_random] ~ ~ ~ scoreboard players operation allall_0 cbm:rz_js *= allall cbm:rz_js
execute @a[tag=cbm:rz_random] ~ ~32767 ~ execute @e[r=3,name=cbm:rz_js,type=minecraft:armor_stand] ~ ~ ~ scoreboard players operation @s cbm:rz_js = unall cbm:rz_js
execute @a[tag=cbm:rz_random] ~ ~32767 ~ execute @e[scores={cbm:rz_js=!0},r=3,name=cbm:rz_js,type=minecraft:armor_stand] ~ ~ ~ scoreboard players operation allall_0 cbm:rz_js *= unall cbm:rz_js
#allall_0
execute @a[tag=cbm:rz_random] ~ ~ ~ scoreboard players set fu cbm:rz_js -1
execute @a[tag=cbm:rz_random] ~ ~32767 ~ execute @e[r=3,name=cbm:rz_js,type=minecraft:armor_stand] ~ ~ ~ scoreboard players operation @s cbm:rz_js = all_0 cbm:rz_js
execute @a[tag=cbm:rz_random] ~ ~32767 ~ execute @e[scores={cbm:rz_js=..-1},r=3,name=cbm:rz_js,type=minecraft:armor_stand] ~ ~ ~ scoreboard players operation all_0 cbm:rz_js *= fu cbm:rz_js
execute @a[tag=cbm:rz_random] ~ ~32767 ~ execute @e[r=3,name=cbm:rz_js,type=minecraft:armor_stand] ~ ~ ~ scoreboard players operation @s cbm:rz_js = all_n cbm:rz_js
execute @a[tag=cbm:rz_random] ~ ~32767 ~ execute @e[scores={cbm:rz_js=..-1},r=3,name=cbm:rz_js,type=minecraft:armor_stand] ~ ~ ~ scoreboard players operation all_n cbm:rz_js *= fu cbm:rz_js
execute @a[tag=cbm:rz_random] ~ ~32767 ~ execute @e[r=3,name=cbm:rz_js,type=minecraft:armor_stand] ~ ~ ~ scoreboard players operation @s cbm:rz_js = allall_0 cbm:rz_js
execute @a[tag=cbm:rz_random] ~ ~32767 ~ execute @e[scores={cbm:rz_js=..-1},r=3,name=cbm:rz_js,type=minecraft:armor_stand] ~ ~ ~ scoreboard players operation allall_0 cbm:rz_js *= fu cbm:rz_js
execute @a[tag=cbm:rz_random] ~ ~ ~ scoreboard players operation allall_0 cbm:rz_js -= all_n cbm:rz_js
execute @a[tag=cbm:rz_random] ~ ~ ~ scoreboard players operation allall_0 cbm:rz_js -= all_0 cbm:rz_js
#got_the_result
execute @a[tag=cbm:rz_random] ~ ~ ~ scoreboard players operation allall_0 cbm:rz_js -= @s cbm:save
execute @a[tag=cbm:rz_random] ~ ~32767 ~ execute @e[r=3,name=cbm:rz_js,type=minecraft:armor_stand] ~ ~ ~ scoreboard players operation @s cbm:rz_js = allall_0 cbm:rz_js
execute @a[tag=cbm:rz_random] ~ ~32767 ~ execute @e[scores={cbm:rz_js=0},r=3,name=cbm:rz_js,type=minecraft:armor_stand] ~ ~-32767 ~ tag @a[tag=cbm:rz_random,r=3] add cbm:rz_allow
execute @a[tag=cbm:rz_random,tag=!cbm:rz_allow] ~ ~ ~ tellraw @s {"rawtext":[{"text":"§c验证码错误，请重试！"}]}
execute @a[tag=cbm:rz_random,tag=!cbm:rz_allow] ~ ~ ~ playsound random.break @s ~ ~ ~ 1 1 1
execute @a[tag=cbm:rz_random,tag=!cbm:rz_allow] ~ ~ ~ scoreboard players reset @s cbmrz
execute @a[tag=cbm:rz_random] ~ ~ ~ scoreboard objectives remove cbm:rz_js
execute @a[tag=cbm:rz_random] ~ ~32767 ~ execute @e[r=3,name=cbm:rz_js,type=minecraft:armor_stand] ~ ~ ~ kill @s
#tested_the_result_and_removed_scoreboard
execute @a[tag=cbm:rz_random,tag=cbm:rz_allow] ~ ~ ~ tag @e[type=minecraft:command_block_minecart] add yczd_mlfkqc
execute @a[tag=cbm:rz_random,tag=cbm:rz_allow] ~ ~ ~ execute @e[r=5,type=minecraft:armor_stand,name=cbm] ~ ~ ~ summon minecraft:command_block_minecart
execute @a[tag=cbm:rz_random,tag=cbm:rz_allow] ~ ~ ~ execute @e[r=5,type=minecraft:armor_stand,name=cbm] ~ ~ ~ kill @s
execute @a[tag=cbm:rz_random,tag=cbm:rz_allow] ~ ~ ~ tag @e[type=minecraft:command_block_minecart,tag=!yczd_mlfkqc] add cbm:rzing
execute @a[tag=cbm:rz_random,tag=cbm:rz_allow] ~ ~ ~ execute @e[tag=cbm:rzing] ~ ~ ~ setblock ~ ~ ~ activator_rail 0 keep
execute @a[tag=cbm:rz_random,tag=cbm:rz_allow] ~ ~ ~ tag @e[type=minecraft:command_block_minecart,tag=yczd_mlfkqc] add yczd_mlfkqc
execute @a[tag=cbm:rz_random,tag=cbm:rz_allow] ~ ~ ~ execute @e[tag=cbm:rzing,c=1] ~ ~ ~ function cbm_rz
execute @a[tag=cbm:rz_random,tag=cbm:rz_allow] ~ ~ ~ tag @s add cbm:rz_test
execute @a[tag=cbm:rz_random,tag=cbm:rz_allow,tag=cbm:rz_test] ~ ~ ~ tellraw @s {"rawtext":[{"text":"§c尝试执行生成工作时出现问题(周围没有相应实体可供生成命令块矿车)！"}]}
execute @a[tag=cbm:rz_random,tag=cbm:rz_allow,tag=cbm:rz_test] ~ ~ ~ tellraw @s {"rawtext":[{"text":"§c本轮验证和生成已经结束，若需重新申请，请重新执行申请命令！"}]}
execute @a[tag=cbm:rz_random,tag=cbm:rz_allow,tag=cbm:rz_test] ~ ~ ~ playsound random.break @s ~ ~ ~ 1 1 1
execute @a[tag=cbm:rz_random,tag=cbm:rz_allow,tag=cbm:rz_test] ~ ~ ~ scoreboard players reset @s cbmrz
execute @a[tag=cbm:rz_random,tag=cbm:rz_allow,tag=cbm:rz_test] ~ ~ ~ scoreboard players reset @s cbm:save
execute @a[tag=cbm:rz_random,tag=cbm:rz_allow,tag=cbm:rz_test] ~ ~ ~ tag @s remove cbm:rz_allow
execute @a[tag=cbm:rz_random,tag=cbm:rz_test] ~ ~ ~ tag @s remove cbm:js_and_msg_down
execute @a[tag=cbm:rz_test] ~ ~ ~ tag @s remove cbm:rz_test
#down