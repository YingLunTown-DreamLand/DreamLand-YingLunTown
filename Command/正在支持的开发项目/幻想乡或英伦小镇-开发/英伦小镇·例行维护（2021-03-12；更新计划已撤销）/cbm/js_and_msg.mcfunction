execute @a[tag=cbm_random,scores={授权=1,aid=1..99}] ~ ~ ~ scoreboard objectives add cbm:js dummy
execute @a[tag=cbm_random,scores={授权=1,aid=1..99}] ~ ~ ~ scoreboard players random shiwan cbm:js 1 9
execute @a[tag=cbm_random,scores={授权=1,aid=1..99}] ~ ~ ~ scoreboard players random wan cbm:js 0 9
execute @a[tag=cbm_random,scores={授权=1,aid=1..99}] ~ ~ ~ scoreboard players random qian cbm:js 0 9
execute @a[tag=cbm_random,scores={授权=1,aid=1..99}] ~ ~ ~ scoreboard players random bai cbm:js 0 9
execute @a[tag=cbm_random,scores={授权=1,aid=1..99}] ~ ~ ~ scoreboard players random shi cbm:js 0 9
execute @a[tag=cbm_random,scores={授权=1,aid=1..99}] ~ ~ ~ scoreboard players random ge cbm:js 0 9
#scoreboard_added_gave_random_scores
execute @a[tag=cbm_random,scores={授权=1,aid=1..99}] ~ ~ ~ scoreboard players operation all cbm:js = shiwan cbm:js
execute @a[tag=cbm_random,scores={授权=1,aid=1..99}] ~ ~ ~ scoreboard players operation unall cbm:js = shiwan cbm:js
execute @a[tag=cbm_random,scores={授权=1,aid=1..99}] ~ ~ ~ scoreboard players operation allall cbm:js = shiwan cbm:js
#jc_scores_operationed_=
execute @a[tag=cbm_random,scores={授权=1,aid=1..99}] ~ ~ ~ scoreboard players operation all cbm:js += wan cbm:js
execute @a[tag=cbm_random,scores={授权=1,aid=1..99}] ~ ~ ~ scoreboard players operation all cbm:js += qian cbm:js
execute @a[tag=cbm_random,scores={授权=1,aid=1..99}] ~ ~ ~ scoreboard players operation all cbm:js += bai cbm:js
execute @a[tag=cbm_random,scores={授权=1,aid=1..99}] ~ ~ ~ scoreboard players operation all cbm:js += shi cbm:js
execute @a[tag=cbm_random,scores={授权=1,aid=1..99}] ~ ~ ~ scoreboard players operation all cbm:js += ge cbm:js
#all
execute @a[tag=cbm_random,scores={授权=1,aid=1..99}] ~ ~ ~ scoreboard players operation unall cbm:js -= wan cbm:js
execute @a[tag=cbm_random,scores={授权=1,aid=1..99}] ~ ~ ~ scoreboard players operation unall cbm:js -= qian cbm:js
execute @a[tag=cbm_random,scores={授权=1,aid=1..99}] ~ ~ ~ scoreboard players operation unall cbm:js -= bai cbm:js
execute @a[tag=cbm_random,scores={授权=1,aid=1..99}] ~ ~ ~ scoreboard players operation unall cbm:js -= shi cbm:js
execute @a[tag=cbm_random,scores={授权=1,aid=1..99}] ~ ~ ~ scoreboard players operation unall cbm:js -= ge cbm:js
#unall
execute @a[tag=cbm_random,scores={授权=1,aid=1..99}] ~ ~32767 ~ summon minecraft:armor_stand cbm:js_and_msg_js
execute @a[tag=cbm_random,scores={授权=1,aid=1..99}] ~ ~32767 ~ execute @e[name=cbm:js_and_msg_js,type=minecraft:armor_stand,r=3] ~ ~ ~ scoreboard players operation @s cbm:js = wan cbm:js
execute @a[tag=cbm_random,scores={授权=1,aid=1..99}] ~ ~32767 ~ execute @e[scores={cbm:js=1..9},name=cbm:js_and_msg_js,type=minecraft:armor_stand,r=3] ~ ~ ~ scoreboard players operation allall cbm:js *= wan cbm:js
execute @a[tag=cbm_random,scores={授权=1,aid=1..99}] ~ ~32767 ~ execute @e[name=cbm:js_and_msg_js,type=minecraft:armor_stand,r=3] ~ ~ ~ scoreboard players operation @s cbm:js = qian cbm:js
execute @a[tag=cbm_random,scores={授权=1,aid=1..99}] ~ ~32767 ~ execute @e[scores={cbm:js=1..9},name=cbm:js_and_msg_js,type=minecraft:armor_stand,r=3] ~ ~ ~ scoreboard players operation allall cbm:js *= qian cbm:js
execute @a[tag=cbm_random,scores={授权=1,aid=1..99}] ~ ~32767 ~ execute @e[name=cbm:js_and_msg_js,type=minecraft:armor_stand,r=3] ~ ~ ~ scoreboard players operation @s cbm:js = bai cbm:js
execute @a[tag=cbm_random,scores={授权=1,aid=1..99}] ~ ~32767 ~ execute @e[scores={cbm:js=1..9},name=cbm:js_and_msg_js,type=minecraft:armor_stand,r=3] ~ ~ ~ scoreboard players operation allall cbm:js *= bai cbm:js
execute @a[tag=cbm_random,scores={授权=1,aid=1..99}] ~ ~32767 ~ execute @e[name=cbm:js_and_msg_js,type=minecraft:armor_stand,r=3] ~ ~ ~ scoreboard players operation @s cbm:js = shi cbm:js
execute @a[tag=cbm_random,scores={授权=1,aid=1..99}] ~ ~32767 ~ execute @e[scores={cbm:js=1..9},name=cbm:js_and_msg_js,type=minecraft:armor_stand,r=3] ~ ~ ~ scoreboard players operation allall cbm:js *= shi cbm:js
execute @a[tag=cbm_random,scores={授权=1,aid=1..99}] ~ ~32767 ~ execute @e[name=cbm:js_and_msg_js,type=minecraft:armor_stand,r=3] ~ ~ ~ scoreboard players operation @s cbm:js = ge cbm:js
execute @a[tag=cbm_random,scores={授权=1,aid=1..99}] ~ ~32767 ~ execute @e[scores={cbm:js=1..9},name=cbm:js_and_msg_js,type=minecraft:armor_stand,r=3] ~ ~ ~ scoreboard players operation allall cbm:js *= ge cbm:js
#allall
execute @a[tag=cbm_random,scores={授权=1,aid=1..99}] ~ ~ ~ scoreboard players operation all_0 cbm:js = all cbm:js
execute @a[tag=cbm_random,scores={授权=1,aid=1..99}] ~ ~ ~ scoreboard players operation allall_0 cbm:js = all cbm:js
#jc_score_operationed_=
execute @a[tag=cbm_random,scores={授权=1,aid=1..99}] ~ ~ ~ scoreboard players operation all_0 cbm:js += unall cbm:js
execute @a[tag=cbm_random,scores={授权=1,aid=1..99}] ~ ~ ~ scoreboard players operation all_0 cbm:js += allall cbm:js
#all_0
execute @a[tag=cbm_random,scores={授权=1,aid=1..99}] ~ ~ ~ scoreboard players set nember cbm:js 3
execute @a[tag=cbm_random,scores={授权=1,aid=1..99}] ~ ~ ~ scoreboard players operation all_n cbm:js = all_0 cbm:js
execute @a[tag=cbm_random,scores={授权=1,aid=1..99}] ~ ~ ~ scoreboard players operation all_n cbm:js /= nember cbm:js
#all_n
execute @a[tag=cbm_random,scores={授权=1,aid=1..99}] ~ ~32767 ~ execute @e[name=cbm:js_and_msg_js,type=minecraft:armor_stand,r=3] ~ ~ ~ scoreboard players operation @s cbm:js = unall cbm:js
execute @a[tag=cbm_random,scores={授权=1,aid=1..99}] ~ ~32767 ~ execute @e[scores={cbm:js=!0},name=cbm:js_and_msg_js,type=minecraft:armor_stand,r=3] ~ ~ ~ scoreboard players operation allall_0 cbm:js *= unall cbm:js
execute @a[tag=cbm_random,scores={授权=1,aid=1..99}] ~ ~ ~ scoreboard players operation allall_0 cbm:js *= allall cbm:js
#allall_0
execute @a[tag=cbm_random,scores={授权=1,aid=1..99}] ~ ~ ~ scoreboard players set fu cbm:js -1
#jc_score_operationed_=
execute @a[tag=cbm_random,scores={授权=1,aid=1..99}] ~ ~32767 ~ execute @e[name=cbm:js_and_msg_js,type=minecraft:armor_stand,r=3] ~ ~ ~ scoreboard players operation @s cbm:js = all_0 cbm:js
execute @a[tag=cbm_random,scores={授权=1,aid=1..99}] ~ ~32767 ~ execute @e[scores={cbm:js=..-1},name=cbm:js_and_msg_js,type=minecraft:armor_stand,r=3] ~ ~ ~ scoreboard players operation all_0 cbm:js *= fu cbm:js
execute @a[tag=cbm_random,scores={授权=1,aid=1..99}] ~ ~32767 ~ execute @e[name=cbm:js_and_msg_js,type=minecraft:armor_stand,r=3] ~ ~ ~ scoreboard players operation @s cbm:js = all_n cbm:js
execute @a[tag=cbm_random,scores={授权=1,aid=1..99}] ~ ~32767 ~ execute @e[scores={cbm:js=..-1},name=cbm:js_and_msg_js,type=minecraft:armor_stand,r=3] ~ ~ ~ scoreboard players operation all_n cbm:js *= fu cbm:js
execute @a[tag=cbm_random,scores={授权=1,aid=1..99}] ~ ~32767 ~ execute @e[name=cbm:js_and_msg_js,type=minecraft:armor_stand,r=3] ~ ~ ~ scoreboard players operation @s cbm:js = allall_0 cbm:js
execute @a[tag=cbm_random,scores={授权=1,aid=1..99}] ~ ~32767 ~ execute @e[scores={cbm:js=..-1},name=cbm:js_and_msg_js,type=minecraft:armor_stand,r=3] ~ ~ ~ scoreboard players operation allall_0 cbm:js *= fu cbm:js
execute @a[tag=cbm_random,scores={授权=1,aid=1..99}] ~ ~32767 ~ execute @e[name=cbm:js_and_msg_js,type=minecraft:armor_stand,r=3] ~ ~ ~ kill @s
execute @a[tag=cbm_random,scores={授权=1,aid=1..99}] ~ ~ ~ scoreboard players operation allall_0 cbm:js -= all_0 cbm:js
execute @a[tag=cbm_random,scores={授权=1,aid=1..99}] ~ ~ ~ scoreboard players operation allall_0 cbm:js -= all_n cbm:js
#got_the_result
execute @a[tag=cbm_random,scores={授权=1,aid=1..99}] ~ ~ ~ scoreboard objectives add cbm:save dummy
execute @a[tag=cbm_random,scores={授权=1,aid=1..99}] ~ ~ ~ scoreboard players operation @s cbm:save = allall_0 cbm:js
#scoreboard_added_operationed_=_the_result
execute @a[tag=cbm_random,scores={授权=1,aid=1..99}] ~ ~ ~ scoreboard objectives add cbm:screen dummy
execute @a[tag=cbm_random,scores={授权=1,aid=1..99}] ~ ~ ~ scoreboard objectives add cbm:screen_jz dummy
execute @a[tag=cbm_random,scores={授权=1,aid=1..99}] ~ ~32767 ~ summon minecraft:armor_stand "0"
execute @a[tag=cbm_random,scores={授权=1,aid=1..99}] ~ ~32767 ~ summon minecraft:armor_stand "1"
execute @a[tag=cbm_random,scores={授权=1,aid=1..99}] ~ ~32767 ~ summon minecraft:armor_stand "2"
execute @a[tag=cbm_random,scores={授权=1,aid=1..99}] ~ ~32767 ~ summon minecraft:armor_stand "3"
execute @a[tag=cbm_random,scores={授权=1,aid=1..99}] ~ ~32767 ~ summon minecraft:armor_stand "4"
execute @a[tag=cbm_random,scores={授权=1,aid=1..99}] ~ ~32767 ~ summon minecraft:armor_stand "5"
execute @a[tag=cbm_random,scores={授权=1,aid=1..99}] ~ ~32767 ~ summon minecraft:armor_stand "6"
execute @a[tag=cbm_random,scores={授权=1,aid=1..99}] ~ ~32767 ~ summon minecraft:armor_stand "7"
execute @a[tag=cbm_random,scores={授权=1,aid=1..99}] ~ ~32767 ~ summon minecraft:armor_stand "8"
execute @a[tag=cbm_random,scores={授权=1,aid=1..99}] ~ ~32767 ~ summon minecraft:armor_stand "9"
execute @a[tag=cbm_random,scores={授权=1,aid=1..99}] ~ ~32767 ~ scoreboard players set @e[r=3,name="0",type=minecraft:armor_stand] cbm:screen_jz 0
execute @a[tag=cbm_random,scores={授权=1,aid=1..99}] ~ ~32767 ~ scoreboard players set @e[r=3,name="1",type=minecraft:armor_stand] cbm:screen_jz 1
execute @a[tag=cbm_random,scores={授权=1,aid=1..99}] ~ ~32767 ~ scoreboard players set @e[r=3,name="2",type=minecraft:armor_stand] cbm:screen_jz 2
execute @a[tag=cbm_random,scores={授权=1,aid=1..99}] ~ ~32767 ~ scoreboard players set @e[r=3,name="3",type=minecraft:armor_stand] cbm:screen_jz 3
execute @a[tag=cbm_random,scores={授权=1,aid=1..99}] ~ ~32767 ~ scoreboard players set @e[r=3,name="4",type=minecraft:armor_stand] cbm:screen_jz 4
execute @a[tag=cbm_random,scores={授权=1,aid=1..99}] ~ ~32767 ~ scoreboard players set @e[r=3,name="5",type=minecraft:armor_stand] cbm:screen_jz 5
execute @a[tag=cbm_random,scores={授权=1,aid=1..99}] ~ ~32767 ~ scoreboard players set @e[r=3,name="6",type=minecraft:armor_stand] cbm:screen_jz 6
execute @a[tag=cbm_random,scores={授权=1,aid=1..99}] ~ ~32767 ~ scoreboard players set @e[r=3,name="7",type=minecraft:armor_stand] cbm:screen_jz 7
execute @a[tag=cbm_random,scores={授权=1,aid=1..99}] ~ ~32767 ~ scoreboard players set @e[r=3,name="8",type=minecraft:armor_stand] cbm:screen_jz 8
execute @a[tag=cbm_random,scores={授权=1,aid=1..99}] ~ ~32767 ~ scoreboard players set @e[r=3,name="9",type=minecraft:armor_stand] cbm:screen_jz 9
#scoreboards_added_screen_scores_set
execute @a[tag=cbm_random,scores={授权=1,aid=1..99}] ~ ~ ~ execute @e[scores={cbm:screen_jz=0..9}] ~ ~ ~ scoreboard players operation @s cbm:screen = @s cbm:screen_jz
execute @a[tag=cbm_random,scores={授权=1,aid=1..99}] ~ ~ ~ execute @e[scores={cbm:screen_jz=0..9}] ~ ~ ~ scoreboard players operation @s cbm:screen -= shiwan cbm:js
execute @a[tag=cbm_random,scores={授权=1,aid=1..99}] ~ ~ ~ execute @e[scores={cbm:screen=0}] ~ ~ ~ tag @s add cbm:screen_shiwan
#screen:shiwan
execute @a[tag=cbm_random,scores={授权=1,aid=1..99}] ~ ~ ~ scoreboard players reset * cbm:screen
execute @a[tag=cbm_random,scores={授权=1,aid=1..99}] ~ ~ ~ execute @e[scores={cbm:screen_jz=0..9}] ~ ~ ~ scoreboard players operation @s cbm:screen = @s cbm:screen_jz
execute @a[tag=cbm_random,scores={授权=1,aid=1..99}] ~ ~ ~ execute @e[scores={cbm:screen_jz=0..9}] ~ ~ ~ scoreboard players operation @s cbm:screen -= wan cbm:js
execute @a[tag=cbm_random,scores={授权=1,aid=1..99}] ~ ~ ~ execute @e[scores={cbm:screen=0}] ~ ~ ~ tag @s add cbm:screen_wan
#screen:wan
execute @a[tag=cbm_random,scores={授权=1,aid=1..99}] ~ ~ ~ scoreboard players reset * cbm:screen
execute @a[tag=cbm_random,scores={授权=1,aid=1..99}] ~ ~ ~ execute @e[scores={cbm:screen_jz=0..9}] ~ ~ ~ scoreboard players operation @s cbm:screen = @s cbm:screen_jz
execute @a[tag=cbm_random,scores={授权=1,aid=1..99}] ~ ~ ~ execute @e[scores={cbm:screen_jz=0..9}] ~ ~ ~ scoreboard players operation @s cbm:screen -= qian cbm:js
execute @a[tag=cbm_random,scores={授权=1,aid=1..99}] ~ ~ ~ execute @e[scores={cbm:screen=0}] ~ ~ ~ tag @s add cbm:screen_qian
#screen:qian
execute @a[tag=cbm_random,scores={授权=1,aid=1..99}] ~ ~ ~ scoreboard players reset * cbm:screen
execute @a[tag=cbm_random,scores={授权=1,aid=1..99}] ~ ~ ~ execute @e[scores={cbm:screen_jz=0..9}] ~ ~ ~ scoreboard players operation @s cbm:screen = @s cbm:screen_jz
execute @a[tag=cbm_random,scores={授权=1,aid=1..99}] ~ ~ ~ execute @e[scores={cbm:screen_jz=0..9}] ~ ~ ~ scoreboard players operation @s cbm:screen -= bai cbm:js
execute @a[tag=cbm_random,scores={授权=1,aid=1..99}] ~ ~ ~ execute @e[scores={cbm:screen=0}] ~ ~ ~ tag @s add cbm:screen_bai
#screen:bai
execute @a[tag=cbm_random,scores={授权=1,aid=1..99}] ~ ~ ~ scoreboard players reset * cbm:screen
execute @a[tag=cbm_random,scores={授权=1,aid=1..99}] ~ ~ ~ execute @e[scores={cbm:screen_jz=0..9}] ~ ~ ~ scoreboard players operation @s cbm:screen = @s cbm:screen_jz
execute @a[tag=cbm_random,scores={授权=1,aid=1..99}] ~ ~ ~ execute @e[scores={cbm:screen_jz=0..9}] ~ ~ ~ scoreboard players operation @s cbm:screen -= shi cbm:js
execute @a[tag=cbm_random,scores={授权=1,aid=1..99}] ~ ~ ~ execute @e[scores={cbm:screen=0}] ~ ~ ~ tag @s add cbm:screen_shi
#screen:shi
execute @a[tag=cbm_random,scores={授权=1,aid=1..99}] ~ ~ ~ scoreboard players reset * cbm:screen
execute @a[tag=cbm_random,scores={授权=1,aid=1..99}] ~ ~ ~ execute @e[scores={cbm:screen_jz=0..9}] ~ ~ ~ scoreboard players operation @s cbm:screen = @s cbm:screen_jz
execute @a[tag=cbm_random,scores={授权=1,aid=1..99}] ~ ~ ~ execute @e[scores={cbm:screen_jz=0..9}] ~ ~ ~ scoreboard players operation @s cbm:screen -= ge cbm:js
execute @a[tag=cbm_random,scores={授权=1,aid=1..99}] ~ ~ ~ execute @e[scores={cbm:screen=0}] ~ ~ ~ tag @s add cbm:screen_ge
#screen:ge
execute @a[tag=cbm_random,scores={授权=1,aid=1..99}] ~ ~32767 ~ summon minecraft:armor_stand "§l§6系统"
execute @a[tag=cbm_random,scores={授权=1,aid=1..99}] ~ ~32767 ~ execute @e[name="§l§6系统",type=minecraft:armor_stand,r=3] ~ ~-32767 ~ msg @a[tag=cbm_random,r=3] §r§l§f【§a命令块矿车§7·§a认证系统§f】
execute @a[tag=cbm_random,scores={授权=1,aid=1..99}] ~ ~32767 ~ execute @e[name="§l§6系统",type=minecraft:armor_stand,r=3] ~ ~-32767 ~ msg @a[tag=cbm_random,r=3] §r§l§f§a已确认您提交了认证请求§f，§a验证码如下§f：
execute @a[tag=cbm_random,scores={授权=1,aid=1..99}] ~ ~32767 ~ execute @e[name="§l§6系统",type=minecraft:armor_stand,r=3] ~ ~-32767 ~ msg @a[tag=cbm_random,r=3] §r§l§b@e[tag=cbm:screen_shiwan]@e[tag=cbm:screen_wan]@e[tag=cbm:screen_qian]@e[tag=cbm:screen_bai]@e[tag=cbm:screen_shi]@e[tag=cbm:screen_ge]
execute @a[tag=cbm_random,scores={授权=1,aid=1..99}] ~ ~32767 ~ execute @e[name="§l§6系统",type=minecraft:armor_stand,r=3] ~ ~-32767 ~ msg @a[tag=cbm_random,r=3] §r§l§a请执行以下命令以提交验证码§f(§a命令不含小括号和冒号§f)：§e/scoreboard players set <§b你的游戏名称§e> cbmrz <§b验证码§e>
execute @a[tag=cbm_random,scores={授权=1,aid=1..99}] ~ ~32767 ~ execute @e[name="§l§6系统",type=minecraft:armor_stand,r=3] ~ ~-32767 ~ msg @a[tag=cbm_random,r=3] §r§l§a示例§f：§e/scoreboard players set Happy2018new cbmrz 524288
execute @a[tag=cbm_random,scores={授权=1,aid=1..99}] ~ ~32767 ~ execute @e[name="§l§6系统",type=minecraft:armor_stand,r=3] ~ ~-32767 ~ msg @a[tag=cbm_random,r=3] §r§l§f(§a请在 §b30 §a秒内提交验证码§f，§a否则需重新发起认证请求§f)
execute @a[tag=cbm_random,scores={授权=1,aid=1..99}] ~ ~ ~ kill @e[scores={cbm:screen_jz=0..9}]
execute @a[tag=cbm_random,scores={授权=1,aid=1..99}] ~ ~32767 ~ execute @e[name="§l§6系统",type=minecraft:armor_stand,r=3] ~ ~ ~ kill @s
execute @a[tag=cbm_random,scores={授权=1,aid=1..99}] ~ ~ ~ playsound random.toast @s ~ ~ ~ 1 1 1
#msg
execute @a[tag=cbm_random,scores={授权=1,aid=1..99}] ~ ~ ~ scoreboard objectives add cbmrz dummy
execute @a[tag=cbm_random,scores={授权=1,aid=1..99}] ~ ~ ~ scoreboard players reset @s cbmrz
execute @a[tag=cbm_random,scores={授权=1,aid=1..99}] ~ ~ ~ scoreboard objectives remove cbm:js
execute @a[tag=cbm_random,scores={授权=1,aid=1..99}] ~ ~ ~ scoreboard objectives remove cbm:screen
execute @a[tag=cbm_random,scores={授权=1,aid=1..99}] ~ ~ ~ scoreboard objectives remove cbm:screen_jz
#scoreboards_added_and_removed