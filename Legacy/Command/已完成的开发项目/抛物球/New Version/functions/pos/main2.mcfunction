kill @e[type=minecraft:snowball]
execute @a[tag=pbn:player] ~ ~ ~ function pos/GetPartPos
execute @a[tag=pbn:player] ~ ~ ~ tag @s remove pbn:player

#pos/main2