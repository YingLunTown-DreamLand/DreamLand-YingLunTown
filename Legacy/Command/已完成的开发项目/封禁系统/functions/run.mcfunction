scoreboard objectives add uid dummy
scoreboard players add @a uid 0
execute @a[scores={uid=0},c=1] ~ ~ ~ function uid
#uid_give
function time
#time
tp @e[tag=kick:ban_online] ~ 32767 ~
tp @e[tag=kick:yc_ban_unsucess] ~ 32767 ~
function past
#past
scoreboard objectives add kick:online dummy
scoreboard players add @a kick:online 0
tag @a[scores={kick:online=0}] add kick:test
tag @a[scores={kick:online=0},tag=kick:ban] add kick:ban_test
scoreboard players reset @a[scores={kick:online=0}] kick:online_time
scoreboard players reset @a[scores={kick:online=0}] kick:screen_jz
scoreboard players reset * kick:online
scoreboard players set @a kick:online 1
execute @a[tag=kick:test,c=1] ~ ~ ~ function yc_ban_or_unban
#unban
scoreboard objectives add kick:online_time dummy
scoreboard players add @a kick:online_time 0
scoreboard players add @a[scores={kick:online_time=0..99}] kick:online_time 1
execute @a[tag=kick:ban,tag=kick:ban_test,c=1,tag=!kick:test,scores={kick:online_time=100..}] ~ ~ ~ function ban
#ban