scoreboard objectives add g_s:cd dummy
#scoreboard_add
scoreboard players add @a g_s:cd 0
execute @a[scores={g_s:cd=1..}] ~ ~ ~ scoreboard players remove @s g_s:cd 1
execute @a[scores={g_s:cd=0},c=1] ~ ~ ~ function give_snowball
#give_snowball