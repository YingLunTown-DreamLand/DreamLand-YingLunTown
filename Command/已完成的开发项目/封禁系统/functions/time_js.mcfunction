scoreboard objectives add kick:js dummy
scoreboard objectives add kick:aid dummy
scoreboard objectives add 授权 dummy
scoreboard objectives add kick:days dummy
scoreboard objectives add kick:hours dummy
scoreboard objectives add kick:minutes dummy
scoreboard objectives add kick:seconds dummy
scoreboard objectives add kick:ticks dummy
scoreboard objectives add kick:ban_days dummy
scoreboard objectives add kick:ban_ticks dummy
#start
tag @a[scores={kick:aid=1..2500000},c=1,tag=!kick:ban] add kick:js
scoreboard players reset * kick:js
execute @a ~ ~ ~ scoreboard players operation @s kick:js = @s uid
scoreboard players add @a kick:aid 0
execute @a ~ ~ ~ scoreboard players operation @s kick:js -= @a[tag=kick:js] kick:aid
scoreboard players add @a 授权 0
execute @a[scores={授权=1,kick:js=0},c=1] ~ ~ ~ tag @a[tag=kick:js,scores={授权=!1}] add kick:allow
execute @a[scores={授权=!1,kick:js=0}] ~ ~ ~ tellraw @s {"rawtext":[{"text":"§cYou need administrator rights to perform this operation."}]}
execute @a[scores={授权=!1,kick:js=0}] ~ ~ ~ playsound random.break @s ~ ~ ~ 1 1 1
execute @a[tag=kick:js,scores={授权=1}] ~ ~ ~ execute @a[scores={授权=1,kick:js=0}] ~ ~ ~ tellraw @s {"rawtext":[{"text":"§cYou need administrator rights to perform this operation."}]}
execute @a[tag=kick:js,scores={授权=1}] ~ ~ ~ execute @a[scores={授权=1,kick:js=0}] ~ ~ ~ playsound random.break @s ~ ~ ~ 1 1 1
execute @a[tag=kick:js,scores={授权=1}] ~ ~ ~ execute @a[scores={授权=1,kick:js=0}] ~ ~ ~ scoreboard players reset @s kick:aid
#验证第一层
scoreboard players add @a[tag=kick:allow] kick:days 0
scoreboard players add @a[tag=kick:allow] kick:hours 0
scoreboard players add @a[tag=kick:allow] kick:minutes 0
scoreboard players add @a[tag=kick:allow] kick:seconds 0
scoreboard players add @a[tag=kick:allow] kick:ticks 0
#分数初始化
execute @a[tag=kick:allow,scores={kick:days=..-1}] ~ ~ ~ tellraw @a[scores={授权=1,kick:js=0}] {"rawtext":[{"text":"§cThe number of days filled in is negative or greater than 89!"}]}
execute @a[tag=kick:allow,scores={kick:days=..-1}] ~ ~ ~ execute @a[scores={授权=1,kick:js=0}] ~ ~ ~ playsound random.break @s ~ ~ ~ 1 1 1
execute @a[tag=kick:allow,scores={kick:days=..-1}] ~ ~ ~ tag @s add kick:unaccept
#验证第二层-第1层/第1层
execute @a[tag=kick:allow,scores={kick:days=90..}] ~ ~ ~ tellraw @a[scores={授权=1,kick:js=0}] {"rawtext":[{"text":"§cThe number of days filled in is negative or greater than 89!"}]}
execute @a[tag=kick:allow,scores={kick:days=90..}] ~ ~ ~ execute @a[scores={授权=1,kick:js=0}] ~ ~ ~ playsound random.break @s ~ ~ ~ 1 1 1
execute @a[tag=kick:allow,scores={kick:days=90..}] ~ ~ ~ tag @s add kick:unaccept
#验证第二层-第1层/第2层
#验证第二层-第1层全部
execute @a[tag=kick:allow,scores={kick:hours=..-1}] ~ ~ ~ tellraw @a[scores={授权=1,kick:js=0}] {"rawtext":[{"text":"§cThe number of hours filled in is negative or greater than 23!"}]}
execute @a[tag=kick:allow,scores={kick:hours=..-1}] ~ ~ ~ execute @a[scores={授权=1,kick:js=0}] ~ ~ ~ playsound random.break @s ~ ~ ~ 1 1 1
execute @a[tag=kick:allow,scores={kick:hours=..-1}] ~ ~ ~ tag @s add kick:unaccept
#验证第二层-第2层/第1层
execute @a[tag=kick:allow,scores={kick:hours=24..}] ~ ~ ~ tellraw @a[scores={授权=1,kick:js=0}] {"rawtext":[{"text":"§cThe number of hours filled in is negative or greater than 23!"}]}
execute @a[tag=kick:allow,scores={kick:hours=24..}] ~ ~ ~ execute @a[scores={授权=1,kick:js=0}] ~ ~ ~ playsound random.break @s ~ ~ ~ 1 1 1
execute @a[tag=kick:allow,scores={kick:hours=24..}] ~ ~ ~ tag @s add kick:unaccept
#验证第二层-第2层/第2层
#验证第二层-第2层全部
execute @a[tag=kick:allow,scores={kick:minutes=..-1}] ~ ~ ~ tellraw @a[scores={授权=1,kick:js=0}] {"rawtext":[{"text":"§cThe number of minutes filled in is negative or greater than 59!"}]}
execute @a[tag=kick:allow,scores={kick:minutes=..-1}] ~ ~ ~ execute @a[scores={授权=1,kick:js=0}] ~ ~ ~ playsound random.break @s ~ ~ ~ 1 1 1
execute @a[tag=kick:allow,scores={kick:minutes=..-1}] ~ ~ ~ tag @s add kick:unaccept
#验证第二层-第3层/第1层
execute @a[tag=kick:allow,scores={kick:minutes=60..}] ~ ~ ~ tellraw @a[scores={授权=1,kick:js=0}] {"rawtext":[{"text":"§cThe number of minutes filled in is negative or greater than 59!"}]}
execute @a[tag=kick:allow,scores={kick:minutes=60..}] ~ ~ ~ execute @a[scores={授权=1,kick:js=0}] ~ ~ ~ playsound random.break @s ~ ~ ~ 1 1 1
execute @a[tag=kick:allow,scores={kick:minutes=60..}] ~ ~ ~ tag @s add kick:unaccept
#验证第二层-第3层/第2层
#验证第二层-第3层全部
execute @a[tag=kick:allow,scores={kick:seconds=..-1}] ~ ~ ~ tellraw @a[scores={授权=1,kick:js=0}] {"rawtext":[{"text":"§cThe number of seconds filled in is negative or greater than 59!"}]}
execute @a[tag=kick:allow,scores={kick:seconds=..-1}] ~ ~ ~ execute @a[scores={授权=1,kick:js=0}] ~ ~ ~ playsound random.break @s ~ ~ ~ 1 1 1
execute @a[tag=kick:allow,scores={kick:seconds=..-1}] ~ ~ ~ tag @s add kick:unaccept
#验证第二层-第4层/第1层
execute @a[tag=kick:allow,scores={kick:seconds=60..}] ~ ~ ~ tellraw @a[scores={授权=1,kick:js=0}] {"rawtext":[{"text":"§cThe number of seconds filled in is negative or greater than 59!"}]}
execute @a[tag=kick:allow,scores={kick:seconds=60..}] ~ ~ ~ execute @a[scores={授权=1,kick:js=0}] ~ ~ ~ playsound random.break @s ~ ~ ~ 1 1 1
execute @a[tag=kick:allow,scores={kick:seconds=60..}] ~ ~ ~ tag @s add kick:unaccept
#验证第二层-第4层/第2层
#验证第二层-第4层全部
execute @a[tag=kick:allow,scores={kick:ticks=..-1}] ~ ~ ~ tellraw @a[scores={授权=1,kick:js=0}] {"rawtext":[{"text":"§cThe number of ticks filled in is negative or greater than 19!"}]}
execute @a[tag=kick:allow,scores={kick:ticks=..-1}] ~ ~ ~ execute @a[scores={授权=1,kick:js=0}] ~ ~ ~ playsound random.break @s ~ ~ ~ 1 1 1
execute @a[tag=kick:allow,scores={kick:ticks=..-1}] ~ ~ ~ tag @s add kick:unaccept
#验证第二层-第5层/第1层
execute @a[tag=kick:allow,scores={kick:ticks=20..}] ~ ~ ~ tellraw @a[scores={授权=1,kick:js=0}] {"rawtext":[{"text":"§cThe number of ticks filled in is negative or greater than 19!"}]}
execute @a[tag=kick:allow,scores={kick:ticks=20..}] ~ ~ ~ execute @a[scores={授权=1,kick:js=0}] ~ ~ ~ playsound random.break @s ~ ~ ~ 1 1 1
execute @a[tag=kick:allow,scores={kick:ticks=20..}] ~ ~ ~ tag @s add kick:unaccept
#验证第二层-第5层/第2层
#验证第二层-第5层全部
tag @a[tag=kick:unaccept,tag=kick:allow] remove kick:allow
execute @a[tag=kick:js,tag=!kick:allow] ~ ~ ~ scoreboard players reset @s kick:aid
execute @a[tag=kick:js,tag=!kick:allow] ~ ~ ~ scoreboard players reset @s kick:days
execute @a[tag=kick:js,tag=!kick:allow] ~ ~ ~ scoreboard players reset @s kick:hours
execute @a[tag=kick:js,tag=!kick:allow] ~ ~ ~ scoreboard players reset @s kick:minutes
execute @a[tag=kick:js,tag=!kick:allow] ~ ~ ~ scoreboard players reset @s kick:seconds
execute @a[tag=kick:js,tag=!kick:allow] ~ ~ ~ scoreboard players reset @s kick:ticks
tag @a[tag=kick:unaccept] remove kick:unaccept
#清理相关条件
#验证第二层全部
execute @a[tag=kick:allow] ~ ~ ~ scoreboard players set hours kick:js 72000
execute @a[tag=kick:allow] ~ ~ ~ scoreboard players set minutes kick:js 1200
execute @a[tag=kick:allow] ~ ~ ~ scoreboard players set seconds kick:js 20
#scores_set
execute @a[tag=kick:allow] ~ ~ ~ scoreboard players operation @s kick:hours *= hours kick:js
execute @a[tag=kick:allow] ~ ~ ~ scoreboard players operation @s kick:minutes *= minutes kick:js
execute @a[tag=kick:allow] ~ ~ ~ scoreboard players operation @s kick:seconds *= seconds kick:js
execute @a[tag=kick:allow] ~ ~ ~ scoreboard players operation @s kick:hours += @s kick:minutes
execute @a[tag=kick:allow] ~ ~ ~ scoreboard players operation @s kick:hours += @s kick:seconds
execute @a[tag=kick:allow] ~ ~ ~ scoreboard players operation @s kick:hours += @s kick:ticks
execute @a[tag=kick:allow] ~ ~ ~ scoreboard players operation @s kick:ban_ticks = @s kick:hours
execute @a[tag=kick:allow] ~ ~ ~ scoreboard players operation @s kick:ban_days = @s kick:days
#计算第一层
execute @a[tag=kick:allow] ~ ~ ~ scoreboard players operation @s kick:ban_days += days kick:time
execute @a[tag=kick:allow] ~ ~ ~ scoreboard players operation @s kick:ban_ticks += ticks kick:time
execute @a[tag=kick:allow,scores={kick:ban_ticks=1728000..}] ~ ~ ~ scoreboard players add @s kick:ban_days 1
execute @a[tag=kick:allow,scores={kick:ban_ticks=1728000..}] ~ ~ ~ scoreboard players remove @s kick:ban_ticks 1728000
#计算第二层
execute @a[tag=kick:allow] ~ ~ ~ tellraw @a[scores={授权=1,kick:js=0}] {"rawtext":[{"text":"§aDOWN!§f"}]}
execute @a[tag=kick:allow] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§l§a管理员§b "},{"selector":"@a[scores={授权=1,kick:js=0}]"},{"text":"§f(§bUID-"},{"score":{"objective":"uid","name":"@a[scores={授权=1,kick:js=0}]"}},{"text":"§f) §c已将§b "},{"selector":"@a[tag=kick:allow]"},{"text":"§f(§bUID-"},{"score":{"objective":"uid","name":"@a[tag=kick:allow]"}},{"text":"§f) §c从服务器中封禁§f！"}]}
execute @a[tag=kick:allow] ~ ~ ~ execute @a[scores={授权=1,kick:js=0}] ~ ~ ~ playsound random.levelup @s ~ ~ ~ 1 1 1
execute @a[tag=kick:allow] ~ ~ ~ execute @a[scores={kick:js=!0}] ~ ~ ~ playsound random.toast @s ~ ~ ~ 1 1 1
scoreboard players reset @a[tag=kick:js] kick:days
scoreboard players reset @a[tag=kick:js] kick:hours
scoreboard players reset @a[tag=kick:js] kick:minutes
scoreboard players reset @a[tag=kick:js] kick:seconds
scoreboard players reset @a[tag=kick:js] kick:ticks
tag @a[tag=kick:js,tag=kick:allow] add kick:ban
tag @a[tag=kick:js,tag=kick:allow] add kick:ban_test
tag @a[tag=kick:js,tag=kick:allow] add kick:ban_test_yx
tag @a[tag=kick:js,tag=kick:allow] remove kick:allow
tag @a[tag=kick:js] remove kick:js
#后续工作