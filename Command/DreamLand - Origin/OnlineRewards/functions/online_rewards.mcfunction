# 启动项
testfor @a[scores={online_rewards:time=3600..},c=1]

scoreboard players set @a[scores={online_rewards:time=3600..}] general:math 0
execute as @a[scores={online_rewards:time=3600..}] run scoreboard players operation @s general:math = @s money

tellraw @a[scores={online_rewards:time=3600..}] {"rawtext":[{"text":"§r§f- §e在线奖励发放 §f-\n §r§a+ §b2000 §e幻想币"}]}
execute as @a[scores={online_rewards:time=3600..}] at @s run playsound random.levelup @s ~ ~ ~ 1.00 1.00 1.00
scoreboard players add @a[scores={online_rewards:time=3600}] money 2000

execute as @a[scores={online_rewards:time=3600..}] run tellraw @a[tag=core:bot] {"rawtext":[{"text":"PublishOnlineRewardsEvent(3)|"},{"selector":"@s"},{"text":",2000,"},{"score":{"objective":"general:math","name":"@s"}},{"text":","},{"score":{"objective":"money","name":"@s"}}]}
scoreboard players reset @a[scores={online_rewards:time=3600..}] general:math 0
scoreboard players set @a[scores={online_rewards:time=3600..}] online_rewards:time 0