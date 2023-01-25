tag @e[tag=!kick:yc_ban_unsucess,tag=kick:ready_for_ban,type=minecraft:armor_stand,c=1,scores={kick:aid=1..2500000,uid=1..2500000}] add kick:js
scoreboard players reset * kick:js
execute @a ~ ~ ~ scoreboard players operation @s kick:js = @s uid
scoreboard players add @a kick:aid 0
execute @a ~ ~ ~ scoreboard players operation @s kick:js -= @e[tag=kick:js] kick:aid
scoreboard players add @a 授权 0
execute @a[scores={授权=1,kick:js=0},c=1] ~ ~ ~ tag @e[tag=kick:js] add kick:allow
execute @a[scores={授权=!1,kick:js=0}] ~ ~ ~ tellraw @s {"rawtext":[{"text":"§cYou need administrator rights to perform this operation."}]}
execute @a[scores={授权=!1,kick:js=0}] ~ ~ ~ playsound random.break @s ~ ~ ~ 1 1 1
#pass_test
execute @e[tag=kick:allow,scores={kick:days=..-1}] ~ ~ ~ tellraw @a[scores={授权=1,kick:js=0}] {"rawtext":[{"text":"§cThe number of days filled in is negative or greater than 89!"}]}
execute @e[tag=kick:allow,scores={kick:days=..-1}] ~ ~ ~ execute @a[scores={授权=1,kick:js=0}] ~ ~ ~ playsound random.break @s ~ ~ ~ 1 1 1
execute @e[tag=kick:allow,scores={kick:days=..-1}] ~ ~ ~ tag @s add kick:unaccept
#验证第二层-第1层/第1层
execute @e[tag=kick:allow,scores={kick:days=90..}] ~ ~ ~ tellraw @a[scores={授权=1,kick:js=0}] {"rawtext":[{"text":"§cThe number of days filled in is negative or greater than 89!"}]}
execute @e[tag=kick:allow,scores={kick:days=90..}] ~ ~ ~ execute @a[scores={授权=1,kick:js=0}] ~ ~ ~ playsound random.break @s ~ ~ ~ 1 1 1
execute @e[tag=kick:allow,scores={kick:days=90..}] ~ ~ ~ tag @s add kick:unaccept
#验证第二层-第1层/第2层
#验证第二层-第1层全部
execute @e[tag=kick:allow,scores={kick:hours=..-1}] ~ ~ ~ tellraw @a[scores={授权=1,kick:js=0}] {"rawtext":[{"text":"§cThe number of hours filled in is negative or greater than 23!"}]}
execute @e[tag=kick:allow,scores={kick:hours=..-1}] ~ ~ ~ execute @a[scores={授权=1,kick:js=0}] ~ ~ ~ playsound random.break @s ~ ~ ~ 1 1 1
execute @e[tag=kick:allow,scores={kick:hours=..-1}] ~ ~ ~ tag @s add kick:unaccept
#验证第二层-第2层/第1层
execute @e[tag=kick:allow,scores={kick:hours=24..}] ~ ~ ~ tellraw @a[scores={授权=1,kick:js=0}] {"rawtext":[{"text":"§cThe number of hours filled in is negative or greater than 23!"}]}
execute @e[tag=kick:allow,scores={kick:hours=24..}] ~ ~ ~ execute @a[scores={授权=1,kick:js=0}] ~ ~ ~ playsound random.break @s ~ ~ ~ 1 1 1
execute @e[tag=kick:allow,scores={kick:hours=24..}] ~ ~ ~ tag @s add kick:unaccept
#验证第二层-第2层/第2层
#验证第二层-第2层全部
execute @e[tag=kick:allow,scores={kick:minutes=..-1}] ~ ~ ~ tellraw @a[scores={授权=1,kick:js=0}] {"rawtext":[{"text":"§cThe number of minutes filled in is negative or greater than 59!"}]}
execute @e[tag=kick:allow,scores={kick:minutes=..-1}] ~ ~ ~ execute @a[scores={授权=1,kick:js=0}] ~ ~ ~ playsound random.break @s ~ ~ ~ 1 1 1
execute @e[tag=kick:allow,scores={kick:minutes=..-1}] ~ ~ ~ tag @s add kick:unaccept
#验证第二层-第3层/第1层
execute @e[tag=kick:allow,scores={kick:minutes=60..}] ~ ~ ~ tellraw @a[scores={授权=1,kick:js=0}] {"rawtext":[{"text":"§cThe number of minutes filled in is negative or greater than 59!"}]}
execute @e[tag=kick:allow,scores={kick:minutes=60..}] ~ ~ ~ execute @a[scores={授权=1,kick:js=0}] ~ ~ ~ playsound random.break @s ~ ~ ~ 1 1 1
execute @e[tag=kick:allow,scores={kick:minutes=60..}] ~ ~ ~ tag @s add kick:unaccept
#验证第二层-第3层/第2层
#验证第二层-第3层全部
execute @e[tag=kick:allow,scores={kick:seconds=..-1}] ~ ~ ~ tellraw @a[scores={授权=1,kick:js=0}] {"rawtext":[{"text":"§cThe number of seconds filled in is negative or greater than 59!"}]}
execute @e[tag=kick:allow,scores={kick:seconds=..-1}] ~ ~ ~ execute @a[scores={授权=1,kick:js=0}] ~ ~ ~ playsound random.break @s ~ ~ ~ 1 1 1
execute @e[tag=kick:allow,scores={kick:seconds=..-1}] ~ ~ ~ tag @s add kick:unaccept
#验证第二层-第4层/第1层
execute @e[tag=kick:allow,scores={kick:seconds=60..}] ~ ~ ~ tellraw @a[scores={授权=1,kick:js=0}] {"rawtext":[{"text":"§cThe number of seconds filled in is negative or greater than 59!"}]}
execute @e[tag=kick:allow,scores={kick:seconds=60..}] ~ ~ ~ execute @a[scores={授权=1,kick:js=0}] ~ ~ ~ playsound random.break @s ~ ~ ~ 1 1 1
execute @e[tag=kick:allow,scores={kick:seconds=60..}] ~ ~ ~ tag @s add kick:unaccept
#验证第二层-第4层/第2层
#验证第二层-第4层全部
execute @e[tag=kick:allow,scores={kick:ticks=..-1}] ~ ~ ~ tellraw @a[scores={授权=1,kick:js=0}] {"rawtext":[{"text":"§cThe number of ticks filled in is negative or greater than 19!"}]}
execute @e[tag=kick:allow,scores={kick:ticks=..-1}] ~ ~ ~ execute @a[scores={授权=1,kick:js=0}] ~ ~ ~ playsound random.break @s ~ ~ ~ 1 1 1
execute @e[tag=kick:allow,scores={kick:ticks=..-1}] ~ ~ ~ tag @s add kick:unaccept
#验证第二层-第5层/第1层
execute @e[tag=kick:allow,scores={kick:ticks=20..}] ~ ~ ~ tellraw @a[scores={授权=1,kick:js=0}] {"rawtext":[{"text":"§cThe number of ticks filled in is negative or greater than 19!"}]}
execute @e[tag=kick:allow,scores={kick:ticks=20..}] ~ ~ ~ execute @a[scores={授权=1,kick:js=0}] ~ ~ ~ playsound random.break @s ~ ~ ~ 1 1 1
execute @e[tag=kick:allow,scores={kick:ticks=20..}] ~ ~ ~ tag @s add kick:unaccept
#验证第二层-第5层/第2层
#验证第二层-第5层全部
tag @e[tag=kick:unaccept,tag=kick:allow] remove kick:allow
execute @e[tag=kick:js,tag=!kick:allow] ~ ~ ~ scoreboard players reset @s kick:aid
execute @e[tag=kick:js,tag=!kick:allow] ~ ~ ~ scoreboard players reset @s kick:days
execute @e[tag=kick:js,tag=!kick:allow] ~ ~ ~ scoreboard players reset @s kick:hours
execute @e[tag=kick:js,tag=!kick:allow] ~ ~ ~ scoreboard players reset @s kick:minutes
execute @e[tag=kick:js,tag=!kick:allow] ~ ~ ~ scoreboard players reset @s kick:seconds
execute @e[tag=kick:js,tag=!kick:allow] ~ ~ ~ scoreboard players reset @s kick:ticks
execute @e[tag=kick:js,tag=!kick:allow] ~ ~ ~ kill @s
#清理相关条件
#验证第二层全部
execute @e[tag=kick:allow] ~ ~ ~ scoreboard players set hours kick:js 72000
execute @e[tag=kick:allow] ~ ~ ~ scoreboard players set minutes kick:js 1200
execute @e[tag=kick:allow] ~ ~ ~ scoreboard players set seconds kick:js 20
#scores_set
execute @e[tag=kick:allow] ~ ~ ~ scoreboard players operation @s kick:hours *= hours kick:js
execute @e[tag=kick:allow] ~ ~ ~ scoreboard players operation @s kick:minutes *= minutes kick:js
execute @e[tag=kick:allow] ~ ~ ~ scoreboard players operation @s kick:seconds *= seconds kick:js
execute @e[tag=kick:allow] ~ ~ ~ scoreboard players operation @s kick:hours += @s kick:minutes
execute @e[tag=kick:allow] ~ ~ ~ scoreboard players operation @s kick:hours += @s kick:seconds
execute @e[tag=kick:allow] ~ ~ ~ scoreboard players operation @s kick:hours += @s kick:ticks
execute @e[tag=kick:allow] ~ ~ ~ scoreboard players operation @s kick:ban_ticks = @s kick:hours
execute @e[tag=kick:allow] ~ ~ ~ scoreboard players operation @s kick:ban_days = @s kick:days
#计算第一层
execute @e[tag=kick:allow] ~ ~ ~ scoreboard players operation @s kick:ban_days += days kick:time
execute @e[tag=kick:allow] ~ ~ ~ scoreboard players operation @s kick:ban_ticks += ticks kick:time
execute @e[tag=kick:allow,scores={kick:ban_ticks=1728000..}] ~ ~ ~ scoreboard players add @s kick:ban_days 1
execute @e[tag=kick:allow,scores={kick:ban_ticks=1728000..}] ~ ~ ~ scoreboard players remove @s kick:ban_ticks 1728000
#计算第二层
execute @e[tag=kick:allow] ~ ~ ~ tag @a[scores={授权=1,kick:js=0}] add kick:admin
execute @e[tag=kick:allow] ~ ~ ~ scoreboard players reset * kick:js
execute @e[tag=kick:allow] ~ ~ ~ execute @e[tag=kick:ban_online] ~ ~ ~ scoreboard players operation @s kick:js = @s uid
execute @e[tag=kick:allow] ~ ~ ~ execute @e[tag=kick:ban_online] ~ ~ ~ scoreboard players operation @s kick:js -= @e[tag=kick:allow] uid
execute @e[tag=kick:allow] ~ ~ ~ execute @e[tag=kick:ban_online,scores={kick:js=0}] ~ ~ ~ kill @s
execute @e[tag=kick:allow] ~ ~ ~ scoreboard players reset * kick:js
execute @e[tag=kick:allow] ~ ~ ~ execute @a ~ ~ ~ scoreboard players operation @s kick:js = @s uid
execute @e[tag=kick:allow] ~ ~ ~ execute @a ~ ~ ~ scoreboard players operation @s kick:js -= @e[tag=kick:allow] uid
execute @e[tag=kick:allow] ~ ~ ~ execute @a[scores={kick:js=0}] ~ ~ ~ tag @e[tag=kick:allow] add kick:person_online
execute @e[tag=kick:allow] ~ ~ ~ tellraw @a[tag=kick:admin] {"rawtext":[{"text":"§aDOWN!§f"}]}
execute @e[tag=kick:allow] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§l§a管理员§b "},{"selector":"@a[tag=kick:admin]"},{"text":"§f(§bUID-"},{"score":{"objective":"uid","name":"@a[tag=kick:admin]"}},{"text":"§f) §c在刚刚尝试执行了离线封禁操作。"}]}
execute @e[tag=kick:allow] ~ ~ ~ execute @a[tag=kick:admin] ~ ~ ~ playsound random.levelup @s ~ ~ ~ 1 1 1
execute @e[tag=kick:allow] ~ ~ ~ execute @a[tag=!kick:admin] ~ ~ ~ playsound random.toast @s ~ ~ ~ 1 1 1
scoreboard players reset @e[tag=kick:allow] kick:days
scoreboard players reset @e[tag=kick:allow] kick:hours
scoreboard players reset @e[tag=kick:allow] kick:minutes
scoreboard players reset @e[tag=kick:allow] kick:seconds
scoreboard players reset @e[tag=kick:allow] kick:ticks
execute @e[tag=kick:allow] ~ ~ ~ tag @a[tag=kick:admin] remove kick:admin
execute @e[tag=kick:allow,tag=kick:person_online] ~ ~ ~ tag @a[scores={kick:js=0}] add kick:test
execute @e[tag=kick:allow,tag=kick:person_online] ~ ~ ~ tag @a[scores={kick:js=0}] add kick:test_yx
execute @e[tag=kick:allow,tag=kick:person_online] ~ ~ ~ tag @s remove kick:person_online
execute @e[tag=kick:allow] ~ ~ ~ tag @s add kick:ban_online
execute @e[tag=kick:allow] ~ ~ ~ tag @s remove kick:ready_for_ban
execute @e[tag=kick:allow] ~ ~ ~ tag @s remove kick:js
execute @e[tag=kick:allow] ~ ~ ~ tag @s remove kick:allow
#后续工作