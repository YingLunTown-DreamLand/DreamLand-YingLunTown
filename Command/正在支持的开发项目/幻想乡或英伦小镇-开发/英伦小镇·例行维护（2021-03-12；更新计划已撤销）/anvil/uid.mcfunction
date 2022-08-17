tag @a[scores={uid=0}] add giving_uid
scoreboard players set @a[tag=giving_uid] uid -1
execute @a[tag=uid_giving] ~ ~ ~ scoreboard players operation @s uid -= @a[tag=uid_giving,scores={uid=-1}] uid
execute @a[tag=uid_giving,c=1] ~ ~ ~ scoreboard players add js uid 1
execute @a[tag=uid_giving] ~ ~ ~ scoreboard players operation @s uid += js uid
execute @a[tag=uid_giving] ~ ~ ~ scoreboard players operation js uid > @s uid
execute @a[tag=uid_giving] ~ ~ ~ tag @s remove uid_giving