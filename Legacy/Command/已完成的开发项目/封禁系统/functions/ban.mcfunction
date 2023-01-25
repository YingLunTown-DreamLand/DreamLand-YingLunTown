scoreboard objectives add kick:b_d_js dummy
scoreboard objectives add kick:b_t_js dummy
scoreboard objectives add kick:screen dummy
scoreboard objectives add kick:screen_jz dummy
#start
tag @a[c=1,tag=kick:ban,tag=kick:ban_test,tag=!kick:test,scores={kick:online_time=100..}] add kick:ban_random
execute @a[tag=kick:ban_test_yx] ~ ~ ~ tag @a[tag=kick:ban_random] remove kick:ban_random
execute @a[tag=kick:ban_test_yx] ~ ~ ~ tag @s add kick:ban_random
execute @a[tag=kick:ban_test_yx] ~ ~ ~ tag @s remove kick:ban_test_yx
#tags_set
scoreboard players reset * kick:b_d_js
scoreboard players reset * kick:b_t_js
execute @a[tag=kick:ban_random] ~ ~ ~ scoreboard players operation @s kick:b_d_js = @s kick:ban_days
execute @a[tag=kick:ban_random] ~ ~ ~ scoreboard players operation @s kick:b_t_js = @s kick:ban_ticks
execute @a[tag=kick:ban_random] ~ ~ ~ scoreboard players operation @s kick:b_d_js -= days kick:time
execute @a[tag=kick:ban_random,scores={kick:b_d_js=..-1}] ~ ~ ~ tag @s add kick:unban_allow
execute @a[tag=kick:ban_random] ~ ~ ~ scoreboard players operation @s kick:b_t_js -= ticks kick:time
execute @a[tag=kick:ban_random,scores={kick:b_d_js=0,kick:b_t_js=..0}] ~ ~ ~ tag @s add kick:unban_allow
execute @a[tag=kick:ban_random,tag=kick:unban_allow] ~ ~ ~ scoreboard players reset @s kick:ban_days
execute @a[tag=kick:ban_random,tag=kick:unban_allow] ~ ~ ~ scoreboard players reset @s kick:ban_ticks
execute @a[tag=kick:ban_random,tag=kick:unban_allow] ~ ~ ~ tag @s remove kick:ban
execute @a[tag=kick:ban_random,tag=kick:unban_allow] ~ ~ ~ scoreboard players reset @s kick:aid
execute @a[tag=kick:ban_random,tag=!kick:unban_allow] ~ ~ ~ function screen
execute @a[tag=kick:ban_random,tag=!kick:unban_allow] ~ ~ ~ scoreboard players reset * kick:js
execute @a[tag=kick:ban_random,tag=!kick:unban_allow] ~ ~ ~ execute @a ~ ~ ~ scoreboard players operation @s kick:js = @s uid
execute @a[tag=kick:ban_random,tag=!kick:unban_allow] ~ ~ ~ scoreboard players operation @a kick:js -= @s kick:aid
scoreboard players set @a[tag=kick:ban_random,tag=!kick:unban_allow] kick:screen_jz 1
tag @a[tag=kick:ban_test,tag=kick:ban_random,tag=kick:unban_allow] remove kick:unban_allow
tag @a[tag=kick:ban_test,tag=kick:ban_random] remove kick:ban_test
tag @a[tag=kick:ban_random] remove kick:ban_random
execute @a[scores={kick:js=0}] ~ ~ ~ execute @a[scores={kick:screen_jz=1,kick:aid=1..2500000}] ~ ~ ~ scoreboard players set @s kick:screen_jz 2
execute @a[scores={kick:screen_jz=2,kick:aid=1..2500000}] ~ ~ ~ kick @s §l§c您已被封禁§f！§c您的唯一标识符§f(§eUID§f)： §b@e[tag=kick:screen_uid_baiwan]@e[tag=kick:screen_uid_shiwan]@e[tag=kick:screen_uid_wan]@e[tag=kick:screen_uid_qian]@e[tag=kick:screen_uid_bai]@e[tag=kick:screen_uid_shi]@e[tag=kick:screen_uid_ge] §f,§c封禁命令执行者§f: §b@a[scores={kick:js=0}]§f(§bUID-@e[tag=kick:screen_aid_baiwan]@e[tag=kick:screen_aid_shiwan]@e[tag=kick:screen_aid_wan]@e[tag=kick:screen_aid_qian]@e[tag=kick:screen_aid_bai]@e[tag=kick:screen_aid_shi]@e[tag=kick:screen_aid_ge]§f) 。§c距离解封还有 §b@e[tag=kick:screen_days_shi]@e[tag=kick:screen_days_ge] §c天 §b@e[tag=kick:screen_hours_shi]@e[tag=kick:screen_hours_ge] §c小时 §b@e[tag=kick:screen_minutes_shi]@e[tag=kick:screen_minutes_ge] §c分钟 §b@e[tag=kick:screen_seconds_shi]@e[tag=kick:screen_seconds_ge]@e[tag=kick:screen_ticks_dian]@e[tag=kick:screen_ticks_shi]@e[tag=kick:screen_ticks_ge] §c秒
execute @a[scores={kick:screen_jz=1,kick:aid=1..2500000}] ~ ~ ~ kick @s §l§c您已被封禁§f！§c您的唯一标识符§f(§eUID§f)： §b@e[tag=kick:screen_uid_baiwan]@e[tag=kick:screen_uid_shiwan]@e[tag=kick:screen_uid_wan]@e[tag=kick:screen_uid_qian]@e[tag=kick:screen_uid_bai]@e[tag=kick:screen_uid_shi]@e[tag=kick:screen_uid_ge] §f,§c封禁命令执行者§f: §bUID-@e[tag=kick:screen_aid_baiwan]@e[tag=kick:screen_aid_shiwan]@e[tag=kick:screen_aid_wan]@e[tag=kick:screen_aid_qian]@e[tag=kick:screen_aid_bai]@e[tag=kick:screen_aid_shi]@e[tag=kick:screen_aid_ge] §f。§c距离解封还有 §b@e[tag=kick:screen_days_shi]@e[tag=kick:screen_days_ge] §c天 §b@e[tag=kick:screen_hours_shi]@e[tag=kick:screen_hours_ge] §c小时 §b@e[tag=kick:screen_minutes_shi]@e[tag=kick:screen_minutes_ge] §c分钟 §b@e[tag=kick:screen_seconds_shi]@e[tag=kick:screen_seconds_ge]@e[tag=kick:screen_ticks_dian]@e[tag=kick:screen_ticks_shi]@e[tag=kick:screen_ticks_ge] §c秒 
#unban_or_ban
kill @e[type=minecraft:armor_stand,scores={kick:screen_jz=-1..9}]
#kill_armor_stand