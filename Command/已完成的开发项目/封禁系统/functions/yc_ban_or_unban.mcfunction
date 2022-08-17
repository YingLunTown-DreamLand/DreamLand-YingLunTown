scoreboard objectives add kick:yc_ban_js dummy
scoreboard objectives add kick:unban dummy
#start
tag @a[tag=kick:test,c=1] add kick:test_random
execute @a[tag=kick:test_yx] ~ ~ ~ tag @a[tag=kick:test_random] remove kick:test_random
execute @a[tag=kick:test_yx] ~ ~ ~ tag @s add kick:test_random
#tags_set
execute @e[tag=kick:ban_online] ~ ~ ~ scoreboard players operation @s kick:yc_ban_js = @s uid
execute @e[tag=kick:ban_online] ~ ~ ~ scoreboard players operation @s kick:yc_ban_js -= @a[tag=kick:test_random] uid
scoreboard players add @a 授权 0
execute @e[scores={kick:yc_ban_js=0}] ~ ~ ~ scoreboard players operation @a[tag=kick:test_random,scores={授权=!1}] kick:ban_ticks = @s kick:ban_ticks
execute @e[scores={kick:yc_ban_js=0}] ~ ~ ~ scoreboard players operation @a[tag=kick:test_random,scores={授权=!1}] kick:ban_days = @s kick:ban_days
execute @e[scores={kick:yc_ban_js=0}] ~ ~ ~ scoreboard players operation @a[tag=kick:test_random,scores={授权=!1}] kick:aid = @s kick:aid
execute @e[scores={kick:yc_ban_js=0}] ~ ~ ~ execute @a[tag=kick:test_random,scores={授权=1}] ~ ~ ~ tag @e[scores={kick:yc_ban_js=0}] add kick:yc_ban_unsucess
execute @e[scores={kick:yc_ban_js=0},tag=kick:yc_ban_unsucess] ~ ~ ~ tag @s remove kick:ban_online
execute @e[scores={kick:yc_ban_js=0}] ~ ~ ~ execute @a[tag=kick:test_random,scores={授权=!1}] ~ ~ ~ tag @s add kick:ban
execute @e[scores={kick:yc_ban_js=0}] ~ ~ ~ execute @a[tag=kick:test_random,scores={授权=!1}] ~ ~ ~ tag @s add kick:ban_test
execute @e[scores={kick:yc_ban_js=0}] ~ ~ ~ execute @a[tag=kick:test_random,scores={授权=!1},tag=kick:test_yx] ~ ~ ~ tag @s add kick:ban_test_yx
execute @e[scores={kick:yc_ban_js=0},tag=!kick:yc_ban_unsucess] ~ ~ ~ kill @s
execute @a[tag=kick:test_yx] ~ ~ ~ tag @s remove kick:test_yx
scoreboard objectives remove kick:yc_ban_js
#yc_ban
scoreboard players reset * kick:js
execute @e[tag=kick:unban] ~ ~ ~ scoreboard players operation @s kick:js = @s kick:unban
execute @e[tag=kick:unban] ~ ~ ~ scoreboard players operation @s kick:js -= @a[tag=kick:test_random] uid
execute @e[tag=kick:unban,scores={kick:js=0}] ~ ~ ~ scoreboard players reset @a[tag=kick:test_random] kick:ban_days
execute @e[tag=kick:unban,scores={kick:js=0}] ~ ~ ~ scoreboard players reset @a[tag=kick:test_random] kick:ban_ticks
execute @e[tag=kick:unban,scores={kick:js=0}] ~ ~ ~ scoreboard players reset @a[tag=kick:test_random] kick:aid
execute @e[tag=kick:unban,scores={kick:js=0}] ~ ~ ~ tag @a[tag=kick:test_random] remove kick:ban
execute @e[tag=kick:unban,scores={kick:js=0}] ~ ~ ~ tag @a[tag=kick:test_random] remove kick:ban_test
execute @e[tag=kick:unban,scores={kick:js=0}] ~ ~ ~ tag @a[tag=kick:test_random] remove kick:ban_test_yx
execute @e[tag=kick:unban,scores={kick:js=0}] ~ ~ ~ kill @s
#test
tag @a[tag=kick:test_random,tag=kick:test] remove kick:test
tag @a[tag=kick:test_random] remove kick:test_random
#unban_end