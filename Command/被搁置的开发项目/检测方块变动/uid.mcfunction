scoreboard objectives add uid dummy
#start
scoreboard players add @a uid 0
tag @a[scores={uid=0}] add uid_giving
scoreboard players set @a[scores={uid=0}] uid -1
#reset
execute @a[tag=uid_giving] ~ ~ ~ scoreboard players operation @s uid -= @a[scores={uid=-1},tag=uid_giving]
execute @a[tag=uid_giving,c=1] ~ ~ ~ scoreboard players add js uid 1
execute @a[tag=uid_giving] ~ ~ ~ scoreboard players operation @s uid += js uid
execute @a[tag=uid_giving] ~ ~ ~ scoreboard players operation js uid > @s uid
#uid_gave
tag @a[tag=uid_giving] remove uid_giving
#end