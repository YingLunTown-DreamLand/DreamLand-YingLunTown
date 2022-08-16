scoreboard objectives add uid dummy
scoreboard objectives add uw:uid dummy
#scoreboard_add
scoreboard players add @a uid 0
execute @a[scores={uid=0},c=1] ~ ~ ~ function uid
#uid
