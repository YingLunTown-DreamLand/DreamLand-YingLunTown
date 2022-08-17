scoreboard objectives add uid dummy
scoreboard objectives add posnote:uid dummy
scoreboard objectives add posnote:math dummy
scoreboard objectives add posnote:x dummy
scoreboard objectives add posnote:z dummy
#scoreboard_add

scoreboard players add @a uid 0
execute @a[scores={uid=0},c=1] ~ ~ ~ function uid
#uid

