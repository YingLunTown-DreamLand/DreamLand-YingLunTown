execute @a[tag=tpa:wait,scores={tpa:wait=1..}] ~ ~ ~ scoreboard players remove @s tpa:wait 1
execute @a[tag=tpa:wait,scores={tpa:wait=..0}] ~ ~ ~ tag @s remove tpa:wait
execute @a[tag=!tpa:wait,scores={tpa:wait=..2147483647}] ~ ~ ~ scoreboard players reset @s tpa:wait
#更改朝向后的延迟处理