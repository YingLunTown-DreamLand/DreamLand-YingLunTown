execute @a[tag=kick:ban_random,tag=!kick:unban_allow] ~ ~ ~ scoreboard players remove @s[scores={kick:b_t_js=..-1}] kick:b_d_js 1
execute @a[tag=kick:ban_random,tag=!kick:unban_allow] ~ ~ ~ scoreboard players add @s[scores={kick:b_t_js=..-1}] kick:b_t_js 1728000
execute @a[tag=kick:ban_random,tag=!kick:unban_allow] ~ ~ ~ scoreboard players reset * kick:screen
execute @a[tag=kick:ban_random,tag=!kick:unban_allow] ~ ~ ~ scoreboard players operation @s kick:screen = @s kick:b_d_js
#start_1
summon minecraft:armor_stand "0" ~ 32767 ~
summon minecraft:armor_stand "1" ~ 32767 ~
summon minecraft:armor_stand "2" ~ 32767 ~
summon minecraft:armor_stand "3" ~ 32767 ~
summon minecraft:armor_stand "4" ~ 32767 ~
summon minecraft:armor_stand "5" ~ 32767 ~
summon minecraft:armor_stand "6" ~ 32767 ~
summon minecraft:armor_stand "7" ~ 32767 ~
summon minecraft:armor_stand "8" ~ 32767 ~
summon minecraft:armor_stand "9" ~ 32767 ~
summon minecraft:armor_stand "." ~ 32767 ~
scoreboard players reset * kick:screen_jz
scoreboard players set @e[name="0",type=minecraft:armor_stand,y=32767,dy=0] kick:screen_jz 0
scoreboard players set @e[name="1",type=minecraft:armor_stand,y=32767,dy=0] kick:screen_jz 1
scoreboard players set @e[name="2",type=minecraft:armor_stand,y=32767,dy=0] kick:screen_jz 2
scoreboard players set @e[name="3",type=minecraft:armor_stand,y=32767,dy=0] kick:screen_jz 3
scoreboard players set @e[name="4",type=minecraft:armor_stand,y=32767,dy=0] kick:screen_jz 4
scoreboard players set @e[name="5",type=minecraft:armor_stand,y=32767,dy=0] kick:screen_jz 5
scoreboard players set @e[name="6",type=minecraft:armor_stand,y=32767,dy=0] kick:screen_jz 6
scoreboard players set @e[name="7",type=minecraft:armor_stand,y=32767,dy=0] kick:screen_jz 7
scoreboard players set @e[name="8",type=minecraft:armor_stand,y=32767,dy=0] kick:screen_jz 8
scoreboard players set @e[name="9",type=minecraft:armor_stand,y=32767,dy=0] kick:screen_jz 9
scoreboard players set @e[name=".",type=minecraft:armor_stand,y=32767,dy=0] kick:screen_jz -1
scoreboard players set chu kick:screen_jz 10
#summon_and_scores_operation_=
execute @a[tag=kick:ban_random,tag=!kick:unban_allow] ~ ~ ~ scoreboard players operation @s kick:screen /= chu kick:screen_jz
execute @e[type=minecraft:armor_stand,scores={kick:screen_jz=0..9}] ~ ~ ~ scoreboard players operation @s kick:screen = @s kick:screen_jz
execute @e[type=minecraft:armor_stand,scores={kick:screen_jz=0..9}] ~ ~ ~ scoreboard players operation @s kick:screen -= @a[tag=kick:ban_random,tag=!kick:unban_allow] kick:screen
execute @e[type=minecraft:armor_stand,scores={kick:screen_jz=1..9,kick:screen=0}] ~ ~ ~ tag @s add kick:screen_days_shi
#tx-1
scoreboard players reset * kick:screen
execute @a[tag=kick:ban_random,tag=!kick:unban_allow] ~ ~ ~ scoreboard players operation @s kick:screen = @s kick:b_d_js
execute @a[tag=kick:ban_random,tag=!kick:unban_allow] ~ ~ ~ scoreboard players operation @s kick:screen %= chu kick:screen_jz
execute @e[type=minecraft:armor_stand,scores={kick:screen_jz=0..9}] ~ ~ ~ scoreboard players operation @s kick:screen = @s kick:screen_jz
execute @e[type=minecraft:armor_stand,scores={kick:screen_jz=0..9}] ~ ~ ~ scoreboard players operation @s kick:screen -= @a[tag=kick:ban_random,tag=!kick:unban_allow] kick:screen
execute @e[type=minecraft:armor_stand,scores={kick:screen_jz=0..9,kick:screen=0}] ~ ~ ~ tag @s add kick:screen_days_ge
#tx-2
scoreboard players reset * kick:screen
execute @a[tag=kick:ban_random,tag=!kick:unban_allow] ~ ~ ~ scoreboard players operation @s kick:screen = @s kick:b_t_js
scoreboard players set js kick:screen 72000
execute @a[tag=kick:ban_random,tag=!kick:unban_allow] ~ ~ ~ scoreboard players operation @s kick:screen /= js kick:screen
execute @a[tag=kick:ban_random,tag=!kick:unban_allow] ~ ~ ~ scoreboard players operation @s kick:screen_jz = @s kick:screen
execute @a[tag=kick:ban_random,tag=!kick:unban_allow] ~ ~ ~ scoreboard players operation @s kick:screen_jz *= js kick:screen
execute @a[tag=kick:ban_random,tag=!kick:unban_allow] ~ ~ ~ scoreboard players operation wind kick:screen_jz = @s kick:b_t_js
execute @a[tag=kick:ban_random,tag=!kick:unban_allow] ~ ~ ~ scoreboard players operation wind kick:screen_jz -= @s kick:screen_jz
execute @a[tag=kick:ban_random,tag=!kick:unban_allow] ~ ~ ~ scoreboard players operation @s kick:screen /= chu kick:screen_jz
execute @e[type=minecraft:armor_stand,scores={kick:screen_jz=0..9}] ~ ~ ~ scoreboard players operation @s kick:screen = @s kick:screen_jz
execute @e[type=minecraft:armor_stand,scores={kick:screen_jz=0..9}] ~ ~ ~ scoreboard players operation @s kick:screen -= @a[tag=kick:ban_random,tag=!kick:unban_allow] kick:screen
execute @e[type=minecraft:armor_stand,scores={kick:screen_jz=0..9,kick:screen=0}] ~ ~ ~ tag @s add kick:screen_hours_shi
#tx-3
scoreboard players reset * kick:screen
execute @a[tag=kick:ban_random,tag=!kick:unban_allow] ~ ~ ~ scoreboard players operation @s kick:screen = @s kick:b_t_js
scoreboard players set js kick:screen 72000
execute @a[tag=kick:ban_random,tag=!kick:unban_allow] ~ ~ ~ scoreboard players operation @s kick:screen /= js kick:screen
execute @a[tag=kick:ban_random,tag=!kick:unban_allow] ~ ~ ~ scoreboard players operation @s kick:screen %= chu kick:screen_jz
execute @e[type=minecraft:armor_stand,scores={kick:screen_jz=0..9}] ~ ~ ~ scoreboard players operation @s kick:screen = @s kick:screen_jz
execute @e[type=minecraft:armor_stand,scores={kick:screen_jz=0..9}] ~ ~ ~ scoreboard players operation @s kick:screen -= @a[tag=kick:ban_random,tag=!kick:unban_allow] kick:screen
execute @e[type=minecraft:armor_stand,scores={kick:screen_jz=0..9,kick:screen=0}] ~ ~ ~ tag @s add kick:screen_hours_ge
#tx-4
scoreboard players reset * kick:screen
execute @a[tag=kick:ban_random,tag=!kick:unban_allow] ~ ~ ~ scoreboard players operation @s kick:screen = wind kick:screen_jz
scoreboard players set js kick:screen 1200
execute @a[tag=kick:ban_random,tag=!kick:unban_allow] ~ ~ ~ scoreboard players operation @s kick:screen /= js kick:screen
execute @a[tag=kick:ban_random,tag=!kick:unban_allow] ~ ~ ~ scoreboard players operation @s kick:screen_jz = @s kick:screen
execute @a[tag=kick:ban_random,tag=!kick:unban_allow] ~ ~ ~ scoreboard players operation @s kick:screen_jz *= js kick:screen
scoreboard players operation wind_0 kick:screen_jz = wind kick:screen_jz
execute @a[tag=kick:ban_random,tag=!kick:unban_allow] ~ ~ ~ scoreboard players operation wind_0 kick:screen_jz -= @s kick:screen_jz
execute @a[tag=kick:ban_random,tag=!kick:unban_allow] ~ ~ ~ scoreboard players operation @s kick:screen /= chu kick:screen_jz
execute @e[type=minecraft:armor_stand,scores={kick:screen_jz=0..9}] ~ ~ ~ scoreboard players operation @s kick:screen = @s kick:screen_jz
execute @e[type=minecraft:armor_stand,scores={kick:screen_jz=0..9}] ~ ~ ~ scoreboard players operation @s kick:screen -= @a[tag=kick:ban_random,tag=!kick:unban_allow] kick:screen
execute @e[type=minecraft:armor_stand,scores={kick:screen_jz=0..9,kick:screen=0}] ~ ~ ~ tag @s add kick:screen_minutes_shi
#tx-5
scoreboard players reset * kick:screen
execute @a[tag=kick:ban_random,tag=!kick:unban_allow] ~ ~ ~ scoreboard players operation @s kick:screen = wind kick:screen_jz
scoreboard players set js kick:screen 1200
execute @a[tag=kick:ban_random,tag=!kick:unban_allow] ~ ~ ~ scoreboard players operation @s kick:screen /= js kick:screen
execute @a[tag=kick:ban_random,tag=!kick:unban_allow] ~ ~ ~ scoreboard players operation @s kick:screen %= chu kick:screen_jz
execute @e[type=minecraft:armor_stand,scores={kick:screen_jz=0..9}] ~ ~ ~ scoreboard players operation @s kick:screen = @s kick:screen_jz
execute @e[type=minecraft:armor_stand,scores={kick:screen_jz=0..9}] ~ ~ ~ scoreboard players operation @s kick:screen -= @a[tag=kick:ban_random,tag=!kick:unban_allow] kick:screen
execute @e[type=minecraft:armor_stand,scores={kick:screen_jz=0..9,kick:screen=0}] ~ ~ ~ tag @s add kick:screen_minutes_ge
#tx-6
scoreboard players reset * kick:screen
execute @a[tag=kick:ban_random,tag=!kick:unban_allow] ~ ~ ~ scoreboard players operation @s kick:screen = wind_0 kick:screen_jz
scoreboard players set js kick:screen 20
execute @a[tag=kick:ban_random,tag=!kick:unban_allow] ~ ~ ~ scoreboard players operation @s kick:screen /= js kick:screen
execute @a[tag=kick:ban_random,tag=!kick:unban_allow] ~ ~ ~ scoreboard players operation @s kick:screen_jz = @s kick:screen
execute @a[tag=kick:ban_random,tag=!kick:unban_allow] ~ ~ ~ scoreboard players operation @s kick:screen_jz *= js kick:screen
scoreboard players operation wind_1 kick:screen_jz = wind_0 kick:screen_jz
execute @a[tag=kick:ban_random,tag=!kick:unban_allow] ~ ~ ~ scoreboard players operation wind_1 kick:screen_jz -= @s kick:screen_jz
scoreboard players set kz kick:screen_jz 100
scoreboard players operation wind_1 kick:screen_jz *= kz kick:screen_jz
execute @a[tag=kick:ban_random,tag=!kick:unban_allow] ~ ~ ~ scoreboard players operation @s kick:screen /= chu kick:screen_jz
execute @e[type=minecraft:armor_stand,scores={kick:screen_jz=0..9}] ~ ~ ~ scoreboard players operation @s kick:screen = @s kick:screen_jz
execute @e[type=minecraft:armor_stand,scores={kick:screen_jz=0..9}] ~ ~ ~ scoreboard players operation @s kick:screen -= @a[tag=kick:ban_random,tag=!kick:unban_allow] kick:screen
execute @e[type=minecraft:armor_stand,scores={kick:screen_jz=0..9,kick:screen=0}] ~ ~ ~ tag @s add kick:screen_seconds_shi
#tx-7
scoreboard players reset * kick:screen
execute @a[tag=kick:ban_random,tag=!kick:unban_allow] ~ ~ ~ scoreboard players operation @s kick:screen = wind_0 kick:screen_jz
scoreboard players set js kick:screen 20
execute @a[tag=kick:ban_random,tag=!kick:unban_allow] ~ ~ ~ scoreboard players operation @s kick:screen /= js kick:screen
execute @a[tag=kick:ban_random,tag=!kick:unban_allow] ~ ~ ~ scoreboard players operation @s kick:screen %= chu kick:screen_jz
execute @e[type=minecraft:armor_stand,scores={kick:screen_jz=0..9}] ~ ~ ~ scoreboard players operation @s kick:screen = @s kick:screen_jz
execute @e[type=minecraft:armor_stand,scores={kick:screen_jz=0..9}] ~ ~ ~ scoreboard players operation @s kick:screen -= @a[tag=kick:ban_random,tag=!kick:unban_allow] kick:screen
execute @e[type=minecraft:armor_stand,scores={kick:screen_jz=0..9,kick:screen=0}] ~ ~ ~ tag @s add kick:screen_seconds_ge
#tx-8
scoreboard players reset * kick:screen
execute @a[tag=kick:ban_random,tag=!kick:unban_allow] ~ ~ ~ scoreboard players operation @s kick:screen = wind_1 kick:screen_jz
scoreboard players set js kick:screen 200
execute @a[tag=kick:ban_random,tag=!kick:unban_allow] ~ ~ ~ scoreboard players operation @s kick:screen /= js kick:screen
execute @e[type=minecraft:armor_stand,scores={kick:screen_jz=0..9}] ~ ~ ~ scoreboard players operation @s kick:screen = @s kick:screen_jz
execute @e[type=minecraft:armor_stand,scores={kick:screen_jz=0..9}] ~ ~ ~ scoreboard players operation @s kick:screen -= @a[tag=kick:ban_random,tag=!kick:unban_allow] kick:screen
execute @e[type=minecraft:armor_stand,scores={kick:screen_jz=0..9,kick:screen=0}] ~ ~ ~ tag @s add kick:screen_ticks_shi
#tx-9
scoreboard players reset * kick:screen
execute @a[tag=kick:ban_random,tag=!kick:unban_allow] ~ ~ ~ scoreboard players operation @s kick:screen = wind_1 kick:screen_jz
scoreboard players set js kick:screen 20
execute @a[tag=kick:ban_random,tag=!kick:unban_allow] ~ ~ ~ scoreboard players operation @s kick:screen /= js kick:screen
execute @a[tag=kick:ban_random,tag=!kick:unban_allow] ~ ~ ~ scoreboard players operation @s kick:screen %= chu kick:screen_jz
execute @e[type=minecraft:armor_stand,scores={kick:screen_jz=0..9}] ~ ~ ~ scoreboard players operation @s kick:screen = @s kick:screen_jz
execute @e[type=minecraft:armor_stand,scores={kick:screen_jz=0..9}] ~ ~ ~ scoreboard players operation @s kick:screen -= @a[tag=kick:ban_random,tag=!kick:unban_allow] kick:screen
execute @e[type=minecraft:armor_stand,scores={kick:screen_jz=0..9,kick:screen=0}] ~ ~ ~ tag @s add kick:screen_ticks_ge
#tx-10
execute @e[type=minecraft:armor_stand,scores={kick:screen_jz=0},tag=kick:screen_days_ge] ~ ~ ~ tag @e[type=minecraft:armor_stand,scores={kick:screen_jz=0},tag=kick:screen_days_shi] remove kick:screen_days_shi
execute @e[type=minecraft:armor_stand,scores={kick:screen_jz=0},tag=kick:screen_hours_ge] ~ ~ ~ tag @e[type=minecraft:armor_stand,scores={kick:screen_jz=0},tag=kick:screen_hours_shi] remove kick:screen_hours_shi
execute @e[type=minecraft:armor_stand,scores={kick:screen_jz=0},tag=kick:screen_minutes_ge] ~ ~ ~ tag @e[type=minecraft:armor_stand,scores={kick:screen_jz=0},tag=kick:screen_minutes_shi] remove kick:screen_minutes_shi
execute @e[type=minecraft:armor_stand,scores={kick:screen_jz=0},tag=kick:screen_seconds_ge] ~ ~ ~ tag @e[type=minecraft:armor_stand,scores={kick:screen_jz=0},tag=kick:screen_seconds_shi] remove kick:screen_seconds_shi
execute @e[type=minecraft:armor_stand,scores={kick:screen_jz=0},tag=kick:screen_ticks_ge] ~ ~ ~ tag @e[type=minecraft:armor_stand,scores={kick:screen_jz=0},tag=kick:screen_ticks_shi] remove kick:screen_ticks_shi
execute @e[type=minecraft:armor_stand,scores={kick:screen_jz=0},tag=kick:screen_ticks_ge] ~ ~ ~ tag @s remove kick:screen_ticks_ge
execute @e[type=minecraft:armor_stand,scores={kick:screen_jz=0..9},tag=kick:screen_ticks_shi] ~ ~ ~ tag @e[type=minecraft:armor_stand,scores={kick:screen_jz=-1}] add kick:screen_ticks_dian
execute @e[type=minecraft:armor_stand,scores={kick:screen_jz=0..9},tag=kick:screen_ticks_ge] ~ ~ ~ tag @e[type=minecraft:armor_stand,scores={kick:screen_jz=-1}] add kick:screen_ticks_dian
#去除多余的0
scoreboard players set bai kick:screen_jz 100
scoreboard players set qian kick:screen_jz 1000
scoreboard players set wan kick:screen_jz 10000
scoreboard players set shiwan kick:screen_jz 100000
scoreboard players set baiwan kick:screen_jz 1000000
#前置
scoreboard players reset * kick:screen
execute @a[tag=kick:ban_random,tag=!kick:unban_allow] ~ ~ ~ scoreboard players operation @s kick:screen = @s kick:aid
execute @a[tag=kick:ban_random,tag=!kick:unban_allow] ~ ~ ~ scoreboard players operation @s kick:screen %= chu kick:screen_jz
execute @e[type=minecraft:armor_stand,scores={kick:screen_jz=0..9}] ~ ~ ~ scoreboard players operation @s kick:screen = @s kick:screen_jz
execute @e[type=minecraft:armor_stand,scores={kick:screen_jz=0..9}] ~ ~ ~ scoreboard players operation @s kick:screen -= @a[tag=kick:ban_random,tag=!kick:unban_allow] kick:screen
execute @e[type=minecraft:armor_stand,scores={kick:screen_jz=0..9,kick:screen=0}] ~ ~ ~ tag @s add kick:screen_aid_ge
#aid-1
scoreboard players reset * kick:screen
execute @a[tag=kick:ban_random,tag=!kick:unban_allow] ~ ~ ~ scoreboard players operation @s kick:screen = @s kick:aid
execute @a[tag=kick:ban_random,tag=!kick:unban_allow] ~ ~ ~ scoreboard players operation @s kick:screen /= chu kick:screen_jz
execute @a[tag=kick:ban_random,tag=!kick:unban_allow] ~ ~ ~ scoreboard players operation @s kick:screen %= chu kick:screen_jz
execute @e[type=minecraft:armor_stand,scores={kick:screen_jz=0..9}] ~ ~ ~ scoreboard players operation @s kick:screen = @s kick:screen_jz
execute @e[type=minecraft:armor_stand,scores={kick:screen_jz=0..9}] ~ ~ ~ scoreboard players operation @s kick:screen -= @a[tag=kick:ban_random,tag=!kick:unban_allow] kick:screen
execute @e[type=minecraft:armor_stand,scores={kick:screen_jz=0..9,kick:screen=0}] ~ ~ ~ tag @s add kick:screen_aid_shi
#aid-2
scoreboard players reset * kick:screen
execute @a[tag=kick:ban_random,tag=!kick:unban_allow] ~ ~ ~ scoreboard players operation @s kick:screen = @s kick:aid
execute @a[tag=kick:ban_random,tag=!kick:unban_allow] ~ ~ ~ scoreboard players operation @s kick:screen /= bai kick:screen_jz
execute @a[tag=kick:ban_random,tag=!kick:unban_allow] ~ ~ ~ scoreboard players operation @s kick:screen %= chu kick:screen_jz
execute @e[type=minecraft:armor_stand,scores={kick:screen_jz=0..9}] ~ ~ ~ scoreboard players operation @s kick:screen = @s kick:screen_jz
execute @e[type=minecraft:armor_stand,scores={kick:screen_jz=0..9}] ~ ~ ~ scoreboard players operation @s kick:screen -= @a[tag=kick:ban_random,tag=!kick:unban_allow] kick:screen
execute @e[type=minecraft:armor_stand,scores={kick:screen_jz=0..9,kick:screen=0}] ~ ~ ~ tag @s add kick:screen_aid_bai
#aid-3
scoreboard players reset * kick:screen
execute @a[tag=kick:ban_random,tag=!kick:unban_allow] ~ ~ ~ scoreboard players operation @s kick:screen = @s kick:aid
execute @a[tag=kick:ban_random,tag=!kick:unban_allow] ~ ~ ~ scoreboard players operation @s kick:screen /= qian kick:screen_jz
execute @a[tag=kick:ban_random,tag=!kick:unban_allow] ~ ~ ~ scoreboard players operation @s kick:screen %= chu kick:screen_jz
execute @e[type=minecraft:armor_stand,scores={kick:screen_jz=0..9}] ~ ~ ~ scoreboard players operation @s kick:screen = @s kick:screen_jz
execute @e[type=minecraft:armor_stand,scores={kick:screen_jz=0..9}] ~ ~ ~ scoreboard players operation @s kick:screen -= @a[tag=kick:ban_random,tag=!kick:unban_allow] kick:screen
execute @e[type=minecraft:armor_stand,scores={kick:screen_jz=0..9,kick:screen=0}] ~ ~ ~ tag @s add kick:screen_aid_qian
#aid-4
scoreboard players reset * kick:screen
execute @a[tag=kick:ban_random,tag=!kick:unban_allow] ~ ~ ~ scoreboard players operation @s kick:screen = @s kick:aid
execute @a[tag=kick:ban_random,tag=!kick:unban_allow] ~ ~ ~ scoreboard players operation @s kick:screen /= wan kick:screen_jz
execute @a[tag=kick:ban_random,tag=!kick:unban_allow] ~ ~ ~ scoreboard players operation @s kick:screen %= chu kick:screen_jz
execute @e[type=minecraft:armor_stand,scores={kick:screen_jz=0..9}] ~ ~ ~ scoreboard players operation @s kick:screen = @s kick:screen_jz
execute @e[type=minecraft:armor_stand,scores={kick:screen_jz=0..9}] ~ ~ ~ scoreboard players operation @s kick:screen -= @a[tag=kick:ban_random,tag=!kick:unban_allow] kick:screen
execute @e[type=minecraft:armor_stand,scores={kick:screen_jz=0..9,kick:screen=0}] ~ ~ ~ tag @s add kick:screen_aid_wan
#aid-5
scoreboard players reset * kick:screen
execute @a[tag=kick:ban_random,tag=!kick:unban_allow] ~ ~ ~ scoreboard players operation @s kick:screen = @s kick:aid
execute @a[tag=kick:ban_random,tag=!kick:unban_allow] ~ ~ ~ scoreboard players operation @s kick:screen /= shiwan kick:screen_jz
execute @a[tag=kick:ban_random,tag=!kick:unban_allow] ~ ~ ~ scoreboard players operation @s kick:screen %= chu kick:screen_jz
execute @e[type=minecraft:armor_stand,scores={kick:screen_jz=0..9}] ~ ~ ~ scoreboard players operation @s kick:screen = @s kick:screen_jz
execute @e[type=minecraft:armor_stand,scores={kick:screen_jz=0..9}] ~ ~ ~ scoreboard players operation @s kick:screen -= @a[tag=kick:ban_random,tag=!kick:unban_allow] kick:screen
execute @e[type=minecraft:armor_stand,scores={kick:screen_jz=0..9,kick:screen=0}] ~ ~ ~ tag @s add kick:screen_aid_shiwan
#aid-6
scoreboard players reset * kick:screen
execute @a[tag=kick:ban_random,tag=!kick:unban_allow] ~ ~ ~ scoreboard players operation @s kick:screen = @s kick:aid
execute @a[tag=kick:ban_random,tag=!kick:unban_allow] ~ ~ ~ scoreboard players operation @s kick:screen /= baiwan kick:screen_jz
execute @a[tag=kick:ban_random,tag=!kick:unban_allow] ~ ~ ~ scoreboard players operation @s kick:screen %= chu kick:screen_jz
execute @e[type=minecraft:armor_stand,scores={kick:screen_jz=0..9}] ~ ~ ~ scoreboard players operation @s kick:screen = @s kick:screen_jz
execute @e[type=minecraft:armor_stand,scores={kick:screen_jz=0..9}] ~ ~ ~ scoreboard players operation @s kick:screen -= @a[tag=kick:ban_random,tag=!kick:unban_allow] kick:screen
execute @e[type=minecraft:armor_stand,scores={kick:screen_jz=0..9,kick:screen=0}] ~ ~ ~ tag @s add kick:screen_aid_baiwan
#aid-7
execute @e[type=minecraft:armor_stand,scores={kick:screen_jz=0},tag=kick:screen_aid_baiwan] ~ ~ ~ execute @e[type=minecraft:armor_stand,scores={kick:screen_jz=0},tag=kick:screen_aid_shiwan] ~ ~ ~ execute @e[type=minecraft:armor_stand,scores={kick:screen_jz=0},tag=kick:screen_aid_wan] ~ ~ ~ execute @e[type=minecraft:armor_stand,scores={kick:screen_jz=0},tag=kick:screen_aid_qian] ~ ~ ~ execute @e[type=minecraft:armor_stand,scores={kick:screen_jz=0},tag=kick:screen_aid_bai] ~ ~ ~ execute @e[type=minecraft:armor_stand,scores={kick:screen_jz=0},tag=kick:screen_aid_shi] ~ ~ ~ tag @s remove kick:screen_aid_shi
execute @e[type=minecraft:armor_stand,scores={kick:screen_jz=0},tag=kick:screen_aid_baiwan] ~ ~ ~ execute @e[type=minecraft:armor_stand,scores={kick:screen_jz=0},tag=kick:screen_aid_shiwan] ~ ~ ~ execute @e[type=minecraft:armor_stand,scores={kick:screen_jz=0},tag=kick:screen_aid_wan] ~ ~ ~ execute @e[type=minecraft:armor_stand,scores={kick:screen_jz=0},tag=kick:screen_aid_qian] ~ ~ ~ execute @e[type=minecraft:armor_stand,scores={kick:screen_jz=0},tag=kick:screen_aid_bai] ~ ~ ~ tag @s remove kick:screen_aid_bai
execute @e[type=minecraft:armor_stand,scores={kick:screen_jz=0},tag=kick:screen_aid_baiwan] ~ ~ ~ execute @e[type=minecraft:armor_stand,scores={kick:screen_jz=0},tag=kick:screen_aid_shiwan] ~ ~ ~ execute @e[type=minecraft:armor_stand,scores={kick:screen_jz=0},tag=kick:screen_aid_wan] ~ ~ ~ execute @e[type=minecraft:armor_stand,scores={kick:screen_jz=0},tag=kick:screen_aid_qian] ~ ~ ~ tag @s remove kick:screen_aid_qian
execute @e[type=minecraft:armor_stand,scores={kick:screen_jz=0},tag=kick:screen_aid_baiwan] ~ ~ ~ execute @e[type=minecraft:armor_stand,scores={kick:screen_jz=0},tag=kick:screen_aid_shiwan] ~ ~ ~ execute @e[type=minecraft:armor_stand,scores={kick:screen_jz=0},tag=kick:screen_aid_wan] ~ ~ ~ tag @s remove kick:screen_aid_wan
execute @e[type=minecraft:armor_stand,scores={kick:screen_jz=0},tag=kick:screen_aid_baiwan] ~ ~ ~ execute @e[type=minecraft:armor_stand,scores={kick:screen_jz=0},tag=kick:screen_aid_shiwan] ~ ~ ~ tag @s remove kick:screen_aid_shiwan
execute @e[type=minecraft:armor_stand,scores={kick:screen_jz=0},tag=kick:screen_aid_baiwan] ~ ~ ~ tag @s remove kick:screen_aid_baiwan
#去除多余的0
scoreboard players reset * kick:screen
execute @a[tag=kick:ban_random,tag=!kick:unban_allow] ~ ~ ~ scoreboard players operation @s kick:screen = @s uid
execute @a[tag=kick:ban_random,tag=!kick:unban_allow] ~ ~ ~ scoreboard players operation @s kick:screen %= chu kick:screen_jz
execute @e[type=minecraft:armor_stand,scores={kick:screen_jz=0..9}] ~ ~ ~ scoreboard players operation @s kick:screen = @s kick:screen_jz
execute @e[type=minecraft:armor_stand,scores={kick:screen_jz=0..9}] ~ ~ ~ scoreboard players operation @s kick:screen -= @a[tag=kick:ban_random,tag=!kick:unban_allow] kick:screen
execute @e[type=minecraft:armor_stand,scores={kick:screen_jz=0..9,kick:screen=0}] ~ ~ ~ tag @s add kick:screen_uid_ge
#uid-1
scoreboard players reset * kick:screen
execute @a[tag=kick:ban_random,tag=!kick:unban_allow] ~ ~ ~ scoreboard players operation @s kick:screen = @s uid
execute @a[tag=kick:ban_random,tag=!kick:unban_allow] ~ ~ ~ scoreboard players operation @s kick:screen /= chu kick:screen_jz
execute @a[tag=kick:ban_random,tag=!kick:unban_allow] ~ ~ ~ scoreboard players operation @s kick:screen %= chu kick:screen_jz
execute @e[type=minecraft:armor_stand,scores={kick:screen_jz=0..9}] ~ ~ ~ scoreboard players operation @s kick:screen = @s kick:screen_jz
execute @e[type=minecraft:armor_stand,scores={kick:screen_jz=0..9}] ~ ~ ~ scoreboard players operation @s kick:screen -= @a[tag=kick:ban_random,tag=!kick:unban_allow] kick:screen
execute @e[type=minecraft:armor_stand,scores={kick:screen_jz=0..9,kick:screen=0}] ~ ~ ~ tag @s add kick:screen_uid_shi
#uid-2
scoreboard players reset * kick:screen
execute @a[tag=kick:ban_random,tag=!kick:unban_allow] ~ ~ ~ scoreboard players operation @s kick:screen = @s uid
execute @a[tag=kick:ban_random,tag=!kick:unban_allow] ~ ~ ~ scoreboard players operation @s kick:screen /= bai kick:screen_jz
execute @a[tag=kick:ban_random,tag=!kick:unban_allow] ~ ~ ~ scoreboard players operation @s kick:screen %= chu kick:screen_jz
execute @e[type=minecraft:armor_stand,scores={kick:screen_jz=0..9}] ~ ~ ~ scoreboard players operation @s kick:screen = @s kick:screen_jz
execute @e[type=minecraft:armor_stand,scores={kick:screen_jz=0..9}] ~ ~ ~ scoreboard players operation @s kick:screen -= @a[tag=kick:ban_random,tag=!kick:unban_allow] kick:screen
execute @e[type=minecraft:armor_stand,scores={kick:screen_jz=0..9,kick:screen=0}] ~ ~ ~ tag @s add kick:screen_uid_bai
#uid-3
scoreboard players reset * kick:screen
execute @a[tag=kick:ban_random,tag=!kick:unban_allow] ~ ~ ~ scoreboard players operation @s kick:screen = @s uid
execute @a[tag=kick:ban_random,tag=!kick:unban_allow] ~ ~ ~ scoreboard players operation @s kick:screen /= qian kick:screen_jz
execute @a[tag=kick:ban_random,tag=!kick:unban_allow] ~ ~ ~ scoreboard players operation @s kick:screen %= chu kick:screen_jz
execute @e[type=minecraft:armor_stand,scores={kick:screen_jz=0..9}] ~ ~ ~ scoreboard players operation @s kick:screen = @s kick:screen_jz
execute @e[type=minecraft:armor_stand,scores={kick:screen_jz=0..9}] ~ ~ ~ scoreboard players operation @s kick:screen -= @a[tag=kick:ban_random,tag=!kick:unban_allow] kick:screen
execute @e[type=minecraft:armor_stand,scores={kick:screen_jz=0..9,kick:screen=0}] ~ ~ ~ tag @s add kick:screen_uid_qian
#uid-4
scoreboard players reset * kick:screen
execute @a[tag=kick:ban_random,tag=!kick:unban_allow] ~ ~ ~ scoreboard players operation @s kick:screen = @s uid
execute @a[tag=kick:ban_random,tag=!kick:unban_allow] ~ ~ ~ scoreboard players operation @s kick:screen /= wan kick:screen_jz
execute @a[tag=kick:ban_random,tag=!kick:unban_allow] ~ ~ ~ scoreboard players operation @s kick:screen %= chu kick:screen_jz
execute @e[type=minecraft:armor_stand,scores={kick:screen_jz=0..9}] ~ ~ ~ scoreboard players operation @s kick:screen = @s kick:screen_jz
execute @e[type=minecraft:armor_stand,scores={kick:screen_jz=0..9}] ~ ~ ~ scoreboard players operation @s kick:screen -= @a[tag=kick:ban_random,tag=!kick:unban_allow] kick:screen
execute @e[type=minecraft:armor_stand,scores={kick:screen_jz=0..9,kick:screen=0}] ~ ~ ~ tag @s add kick:screen_uid_wan
#uid-5
scoreboard players reset * kick:screen
execute @a[tag=kick:ban_random,tag=!kick:unban_allow] ~ ~ ~ scoreboard players operation @s kick:screen = @s uid
execute @a[tag=kick:ban_random,tag=!kick:unban_allow] ~ ~ ~ scoreboard players operation @s kick:screen /= shiwan kick:screen_jz
execute @a[tag=kick:ban_random,tag=!kick:unban_allow] ~ ~ ~ scoreboard players operation @s kick:screen %= chu kick:screen_jz
execute @e[type=minecraft:armor_stand,scores={kick:screen_jz=0..9}] ~ ~ ~ scoreboard players operation @s kick:screen = @s kick:screen_jz
execute @e[type=minecraft:armor_stand,scores={kick:screen_jz=0..9}] ~ ~ ~ scoreboard players operation @s kick:screen -= @a[tag=kick:ban_random,tag=!kick:unban_allow] kick:screen
execute @e[type=minecraft:armor_stand,scores={kick:screen_jz=0..9,kick:screen=0}] ~ ~ ~ tag @s add kick:screen_uid_shiwan
#uid-6
scoreboard players reset * kick:screen
execute @a[tag=kick:ban_random,tag=!kick:unban_allow] ~ ~ ~ scoreboard players operation @s kick:screen = @s uid
execute @a[tag=kick:ban_random,tag=!kick:unban_allow] ~ ~ ~ scoreboard players operation @s kick:screen /= baiwan kick:screen_jz
execute @a[tag=kick:ban_random,tag=!kick:unban_allow] ~ ~ ~ scoreboard players operation @s kick:screen %= chu kick:screen_jz
execute @e[type=minecraft:armor_stand,scores={kick:screen_jz=0..9}] ~ ~ ~ scoreboard players operation @s kick:screen = @s kick:screen_jz
execute @e[type=minecraft:armor_stand,scores={kick:screen_jz=0..9}] ~ ~ ~ scoreboard players operation @s kick:screen -= @a[tag=kick:ban_random,tag=!kick:unban_allow] kick:screen
execute @e[type=minecraft:armor_stand,scores={kick:screen_jz=0..9,kick:screen=0}] ~ ~ ~ tag @s add kick:screen_uid_baiwan
#uid-7
execute @e[type=minecraft:armor_stand,scores={kick:screen_jz=0},tag=kick:screen_uid_baiwan] ~ ~ ~ execute @e[type=minecraft:armor_stand,scores={kick:screen_jz=0},tag=kick:screen_uid_shiwan] ~ ~ ~ execute @e[type=minecraft:armor_stand,scores={kick:screen_jz=0},tag=kick:screen_uid_wan] ~ ~ ~ execute @e[type=minecraft:armor_stand,scores={kick:screen_jz=0},tag=kick:screen_uid_qian] ~ ~ ~ execute @e[type=minecraft:armor_stand,scores={kick:screen_jz=0},tag=kick:screen_uid_bai] ~ ~ ~ execute @e[type=minecraft:armor_stand,scores={kick:screen_jz=0},tag=kick:screen_uid_shi] ~ ~ ~ tag @s remove kick:screen_uid_shi
execute @e[type=minecraft:armor_stand,scores={kick:screen_jz=0},tag=kick:screen_uid_baiwan] ~ ~ ~ execute @e[type=minecraft:armor_stand,scores={kick:screen_jz=0},tag=kick:screen_uid_shiwan] ~ ~ ~ execute @e[type=minecraft:armor_stand,scores={kick:screen_jz=0},tag=kick:screen_uid_wan] ~ ~ ~ execute @e[type=minecraft:armor_stand,scores={kick:screen_jz=0},tag=kick:screen_uid_qian] ~ ~ ~ execute @e[type=minecraft:armor_stand,scores={kick:screen_jz=0},tag=kick:screen_uid_bai] ~ ~ ~ tag @s remove kick:screen_uid_bai
execute @e[type=minecraft:armor_stand,scores={kick:screen_jz=0},tag=kick:screen_uid_baiwan] ~ ~ ~ execute @e[type=minecraft:armor_stand,scores={kick:screen_jz=0},tag=kick:screen_uid_shiwan] ~ ~ ~ execute @e[type=minecraft:armor_stand,scores={kick:screen_jz=0},tag=kick:screen_uid_wan] ~ ~ ~ execute @e[type=minecraft:armor_stand,scores={kick:screen_jz=0},tag=kick:screen_uid_qian] ~ ~ ~ tag @s remove kick:screen_uid_qian
execute @e[type=minecraft:armor_stand,scores={kick:screen_jz=0},tag=kick:screen_uid_baiwan] ~ ~ ~ execute @e[type=minecraft:armor_stand,scores={kick:screen_jz=0},tag=kick:screen_uid_shiwan] ~ ~ ~ execute @e[type=minecraft:armor_stand,scores={kick:screen_jz=0},tag=kick:screen_uid_wan] ~ ~ ~ tag @s remove kick:screen_uid_wan
execute @e[type=minecraft:armor_stand,scores={kick:screen_jz=0},tag=kick:screen_uid_baiwan] ~ ~ ~ execute @e[type=minecraft:armor_stand,scores={kick:screen_jz=0},tag=kick:screen_uid_shiwan] ~ ~ ~ tag @s remove kick:screen_uid_shiwan
execute @e[type=minecraft:armor_stand,scores={kick:screen_jz=0},tag=kick:screen_uid_baiwan] ~ ~ ~ tag @s remove kick:screen_uid_baiwan
#去除多余的0