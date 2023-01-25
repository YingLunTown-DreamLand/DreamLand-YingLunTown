execute @e[tag=cbm:rzing,c=1] ~ ~ ~ scoreboard objectives add cbm:rz_js_shiwan dummy
execute @e[tag=cbm:rzing,c=1] ~ ~ ~ scoreboard objectives add cbm:rz_js_wan dummy
execute @e[tag=cbm:rzing,c=1] ~ ~ ~ scoreboard objectives add cbm:rz_js_qian dummy
execute @e[tag=cbm:rzing,c=1] ~ ~ ~ scoreboard objectives add cbm:rz_js_bai dummy
execute @e[tag=cbm:rzing,c=1] ~ ~ ~ scoreboard objectives add cbm:rz_js_shi dummy
execute @e[tag=cbm:rzing,c=1] ~ ~ ~ scoreboard objectives add cbm:rz_js_ge dummy
execute @e[tag=cbm:rzing,c=1] ~ ~ ~ scoreboard objectives add cbm:rz_js_all dummy
execute @e[tag=cbm:rzing,c=1] ~ ~ ~ scoreboard objectives add cbm:rz_js_unall dummy
execute @e[tag=cbm:rzing,c=1] ~ ~ ~ scoreboard objectives add cbm:rz_js_allall dummy
execute @e[tag=cbm:rzing,c=1] ~ ~ ~ scoreboard objectives add cbm:rj_all dummy
execute @e[tag=cbm:rzing,c=1] ~ ~ ~ scoreboard objectives add cbm:rj_all_n dummy
execute @e[tag=cbm:rzing,c=1] ~ ~ ~ scoreboard objectives add cbm:rj_allall dummy
execute @e[tag=cbm:rzing,c=1] ~ ~ ~ scoreboard objectives add cbm:rz_js dummy
#scoreboards_added
execute @e[tag=cbm:rzing] ~ ~ ~ scoreboard players random @s cbm:rz_js_shiwan 1 9
execute @e[tag=cbm:rzing] ~ ~ ~ scoreboard players random @s cbm:rz_js_wan 0 9
execute @e[tag=cbm:rzing] ~ ~ ~ scoreboard players random @s cbm:rz_js_qian 0 9
execute @e[tag=cbm:rzing] ~ ~ ~ scoreboard players random @s cbm:rz_js_bai 0 9
execute @e[tag=cbm:rzing] ~ ~ ~ scoreboard players operation @s cbm:rz_js_shi = @a[tag=cbm:rz_random,tag=cbm:rz_allow] aid
execute @e[tag=cbm:rzing,c=1] ~ ~ ~ scoreboard players set shi cbm:rz_js 10
execute @e[tag=cbm:rzing] ~ ~ ~ scoreboard players operation @s cbm:rz_js_shi /= shi cbm:rz_js
execute @e[tag=cbm:rzing] ~ ~ ~ scoreboard players operation @s cbm:rz_js_ge = @a[tag=cbm:rz_random,tag=cbm:rz_allow] aid
execute @e[tag=cbm:rzing] ~ ~ ~ scoreboard players operation @s cbm:rz_js_ge %= shi cbm:rz_js
#gave_random_scores
execute @e[tag=cbm:rzing] ~ ~ ~ scoreboard players operation @s cbm:rz_js_all = @s cbm:rz_js_shiwan
execute @e[tag=cbm:rzing] ~ ~ ~ scoreboard players operation @s cbm:rz_js_all += @s cbm:rz_js_wan
execute @e[tag=cbm:rzing] ~ ~ ~ scoreboard players operation @s cbm:rz_js_all += @s cbm:rz_js_qian
execute @e[tag=cbm:rzing] ~ ~ ~ scoreboard players operation @s cbm:rz_js_all += @s cbm:rz_js_bai
execute @e[tag=cbm:rzing] ~ ~ ~ scoreboard players operation @s cbm:rz_js_all += @s cbm:rz_js_shi
execute @e[tag=cbm:rzing] ~ ~ ~ scoreboard players operation @s cbm:rz_js_all += @s cbm:rz_js_ge
#all
execute @e[tag=cbm:rzing] ~ ~ ~ scoreboard players operation @s cbm:rz_js_unall = @s cbm:rz_js_shiwan
execute @e[tag=cbm:rzing] ~ ~ ~ scoreboard players operation @s cbm:rz_js_unall -= @s cbm:rz_js_wan
execute @e[tag=cbm:rzing] ~ ~ ~ scoreboard players operation @s cbm:rz_js_unall -= @s cbm:rz_js_qian
execute @e[tag=cbm:rzing] ~ ~ ~ scoreboard players operation @s cbm:rz_js_unall -= @s cbm:rz_js_bai
execute @e[tag=cbm:rzing] ~ ~ ~ scoreboard players operation @s cbm:rz_js_unall -= @s cbm:rz_js_shi
execute @e[tag=cbm:rzing] ~ ~ ~ scoreboard players operation @s cbm:rz_js_unall -= @s cbm:rz_js_ge
#unall
execute @e[tag=cbm:rzing] ~ ~ ~ scoreboard players operation @s cbm:rz_js_allall = @s cbm:rz_js_shiwan
execute @e[tag=cbm:rzing,scores={cbm:rz_js_wan=1..9}] ~ ~ ~ scoreboard players operation @s cbm:rz_js_allall *= @s cbm:rz_js_wan
execute @e[tag=cbm:rzing,scores={cbm:rz_js_qian=1..9}] ~ ~ ~ scoreboard players operation @s cbm:rz_js_allall *= @s cbm:rz_js_qian
execute @e[tag=cbm:rzing,scores={cbm:rz_js_bai=1..9}] ~ ~ ~ scoreboard players operation @s cbm:rz_js_allall *= @s cbm:rz_js_bai
execute @e[tag=cbm:rzing,scores={cbm:rz_js_shi=1..9}] ~ ~ ~ scoreboard players operation @s cbm:rz_js_allall *= @s cbm:rz_js_shi
execute @e[tag=cbm:rzing,scores={cbm:rz_js_ge=1..9}] ~ ~ ~ scoreboard players operation @s cbm:rz_js_allall *= @s cbm:rz_js_ge
#allall
execute @e[tag=cbm:rzing] ~ ~ ~ scoreboard players operation @s cbm:rj_all = @s cbm:rz_js_all
execute @e[tag=cbm:rzing] ~ ~ ~ scoreboard players operation @s cbm:rj_all += @s cbm:rz_js_unall
execute @e[tag=cbm:rzing] ~ ~ ~ scoreboard players operation @s cbm:rj_all += @s cbm:rz_js_allall
#all_0
execute @e[tag=cbm:rzing] ~ ~ ~ scoreboard players operation @s cbm:rj_all_n = @s cbm:rj_all
execute @e[tag=cbm:rzing,c=1] ~ ~ ~ scoreboard players set number cbm:rz_js 3
execute @e[tag=cbm:rzing] ~ ~ ~ scoreboard players operation @s cbm:rj_all_n /= number cbm:rz_js
#all_n
execute @e[tag=cbm:rzing] ~ ~ ~ scoreboard players operation @s cbm:rj_allall = @s cbm:rz_js_all
execute @e[tag=cbm:rzing,scores={cbm:rz_js_unall=!0}] ~ ~ ~ scoreboard players operation @s cbm:rj_allall *= @s cbm:rz_js_unall
execute @e[tag=cbm:rzing] ~ ~ ~ scoreboard players operation @s cbm:rj_allall *= @s cbm:rz_js_allall
#allall_0
execute @e[tag=cbm:rzing,c=1] ~ ~ ~ scoreboard players set fu cbm:rz_js -1
execute @e[tag=cbm:rzing,scores={cbm:rj_all=..-1}] ~ ~ ~ scoreboard players operation @s cbm:rj_all *= fu cbm:rz_js
execute @e[tag=cbm:rzing,scores={cbm:rj_all_n=..-1}] ~ ~ ~ scoreboard players operation @s cbm:rj_all_n *= fu cbm:rz_js
execute @e[tag=cbm:rzing,scores={cbm:rj_allall=..-1}] ~ ~ ~ scoreboard players operation @s cbm:rj_allall *= fu cbm:rz_js
execute @e[tag=cbm:rzing] ~ ~ ~ scoreboard players operation @s cbm:rj_allall += @s cbm:rj_all_n
execute @e[tag=cbm:rzing] ~ ~ ~ scoreboard players operation @s cbm:rj_allall += @s cbm:rj_all
execute @e[tag=cbm:rzing] ~ ~ ~ scoreboard players operation @s cbm:c_s_r = @s  cbm:rj_allall
#got_the_result
execute @e[tag=cbm:rzing,c=1] ~ ~ ~ scoreboard players set shiwan cbm:rz_js 100000
execute @e[tag=cbm:rzing,c=1] ~ ~ ~ scoreboard players set wan cbm:rz_js 10000
execute @e[tag=cbm:rzing,c=1] ~ ~ ~ scoreboard players set qian cbm:rz_js 1000
execute @e[tag=cbm:rzing,c=1] ~ ~ ~ scoreboard players set bai cbm:rz_js 100
execute @e[tag=cbm:rzing] ~ ~ ~ scoreboard players operation @s cbm:rz_js_shiwan *= shiwan cbm:rz_js
execute @e[tag=cbm:rzing] ~ ~ ~ scoreboard players operation @s cbm:rz_js_wan *= wan cbm:rz_js
execute @e[tag=cbm:rzing] ~ ~ ~ scoreboard players operation @s cbm:rz_js_qian *= qian cbm:rz_js
execute @e[tag=cbm:rzing] ~ ~ ~ scoreboard players operation @s cbm:rz_js_bai *= bai cbm:rz_js
execute @e[tag=cbm:rzing] ~ ~ ~ scoreboard players operation @s cbm:rz_js_shiwan += @s cbm:rz_js_wan
execute @e[tag=cbm:rzing] ~ ~ ~ scoreboard players operation @s cbm:rz_js_shiwan += @s cbm:rz_js_qian
execute @e[tag=cbm:rzing] ~ ~ ~ scoreboard players operation @s cbm:rz_js_shiwan += @s cbm:rz_js_bai
execute @e[tag=cbm:rzing] ~ ~ ~ scoreboard players operation @s cbm:rz_js_shiwan += @a[tag=cbm:rz_random,tag=cbm:rz_allow] aid
execute @e[tag=cbm:rzing] ~ ~ ~ scoreboard players operation @s cbm:cbm_save = @s cbm:rz_js_shiwan
#js_and_saved_the_real_result
execute @a[tag=cbm:rz_random,tag=cbm:rz_allow] ~ ~32767 ~ summon minecraft:armor_stand "§l§e通§6知"
execute @a[tag=cbm:rz_random,tag=cbm:rz_allow] ~ ~32767 ~ execute @e[name="§l§e通§6知",type=minecraft:armor_stand,r=3] ~ ~ ~ w @a[tag=cbm:rz_random,tag=cbm:rz_allow] §r§l§a已成功为 §b@e[tag=cbm:rzing] §a添加到已认证的命令块列中§f！
execute @a[tag=cbm:rz_random,tag=cbm:rz_allow] ~ ~32767 ~ execute @e[name="§l§e通§6知",type=minecraft:armor_stand,r=3] ~ ~ ~ w @a[scores={授权=1,aid=1..99},tag=!cbm:rz_random,tag=!cbm:rz_allow] §r§l§2管理员 §b@a[tag=cbm:rz_random,tag=cbm:rz_allow] §a已成功为 §b@e[tag=cbm:rzing] §a添加到已认证的命令块列中§f！
execute @a[tag=cbm:rz_random,tag=cbm:rz_allow] ~ ~32767 ~ execute @e[name="§l§e通§6知",type=minecraft:armor_stand,r=3] ~ ~ ~ kill @s
execute @a[tag=cbm:rz_random,tag=cbm:rz_allow] ~ ~ ~ playsound random.levelup @s ~ ~ ~ 1 1 1
execute @a[scores={授权=1,aid=1..99},tag=!cbm:rz_random,tag=!cbm:rz_allow] ~ ~ ~ playsound random.toast @s ~ ~ ~ 1 1 1
execute @a[tag=cbm:rz_random,tag=cbm:rz_allow] ~ ~ ~ scoreboard players reset @s cbmrz
execute @a[tag=cbm:rz_random,tag=cbm:rz_allow] ~ ~ ~ scoreboard players reset @s cbm:save
execute @a[tag=cbm:rz_random,tag=cbm:rz_allow] ~ ~ ~ scoreboard objectives remove cbm:rz_js_shiwan
execute @a[tag=cbm:rz_random,tag=cbm:rz_allow] ~ ~ ~ scoreboard objectives remove cbm:rz_js_wan
execute @a[tag=cbm:rz_random,tag=cbm:rz_allow] ~ ~ ~ scoreboard objectives remove cbm:rz_js_qian
execute @a[tag=cbm:rz_random,tag=cbm:rz_allow] ~ ~ ~ scoreboard objectives remove cbm:rz_js_bai
execute @a[tag=cbm:rz_random,tag=cbm:rz_allow] ~ ~ ~ scoreboard objectives remove cbm:rz_js_shi
execute @a[tag=cbm:rz_random,tag=cbm:rz_allow] ~ ~ ~ scoreboard objectives remove cbm:rz_js_ge
execute @a[tag=cbm:rz_random,tag=cbm:rz_allow] ~ ~ ~ scoreboard objectives remove cbm:rz_js_all
execute @a[tag=cbm:rz_random,tag=cbm:rz_allow] ~ ~ ~ scoreboard objectives remove cbm:rz_js_unall
execute @a[tag=cbm:rz_random,tag=cbm:rz_allow] ~ ~ ~ scoreboard objectives remove cbm:rz_js_allall
execute @a[tag=cbm:rz_random,tag=cbm:rz_allow] ~ ~ ~ scoreboard objectives remove cbm:rj_all
execute @a[tag=cbm:rz_random,tag=cbm:rz_allow] ~ ~ ~ scoreboard objectives remove cbm:rj_all_n
execute @a[tag=cbm:rz_random,tag=cbm:rz_allow] ~ ~ ~ scoreboard objectives remove cbm:rj_allall
execute @a[tag=cbm:rz_random,tag=cbm:rz_allow] ~ ~ ~ scoreboard objectives remove cbm:rz_js
execute @a[tag=cbm:rz_random,tag=cbm:rz_allow] ~ ~ ~ tag @e[tag=cbm:rzing] remove cbm:rzing
execute @a[tag=cbm:rz_random,tag=cbm:rz_allow] ~ ~ ~ tag @s remove cbm:rz_allow
execute @a[tag=cbm:rz_random] ~ ~ ~ tag @s remove cbm:js_and_msg_down
#善后工作