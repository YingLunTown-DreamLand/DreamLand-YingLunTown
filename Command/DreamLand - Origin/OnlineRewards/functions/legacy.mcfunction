scoreboard players add @a time_1 1

tellraw @a[scores={time_1=3600..}] {"rawtext":[{"text":"§l§a在线奖励发放:
§d2000幻想币"}]}
playsound random.levelup @a[scores={time_1=3600..}]
scoreboard players add @a[scores={time_1=3600}] money 2000

scoreboard players set @a[scores={time_1=3600}] time_1 0