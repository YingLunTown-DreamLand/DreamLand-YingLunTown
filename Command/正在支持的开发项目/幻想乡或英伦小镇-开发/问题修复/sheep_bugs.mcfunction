只需要执行一次的命令：
scoreboard objectives add sheep_uid dummy



恒运行：
scoreboard players add @e[type=minecraft:sheep] sheep_uid 0
execute @e[scores={sheep_uid=0}] ~ ~ ~ scoreboard players set @s sheep_uid -1
#uid
execute @e[]



有条件允许的内容(if(@e[scores={sheep_uid=-1}] = found),do(f))：
execute @e[scores={sheep_uid=-1}] ~ ~ ~ tag @s add sheep_uid_get
execute @e[tag=sheep_uid_get] ~ ~ ~ scoreboard players operation @s sheep_uid -= @e[scores={sheep_uid=-1}] sheep_uid
scoreboard players add max sheep_uid 1
scoreboard players operation @e[tag=sheep_uid_get] sheep_uid += max sheep_uid
scoreboard players operation max sheep_uid > @e[tag=sheep_uid_get] sheep_uid
execute @e[tag=sheep_uid_get] ~ ~ ~ tag @s remove sheep_uid_get
#uid
