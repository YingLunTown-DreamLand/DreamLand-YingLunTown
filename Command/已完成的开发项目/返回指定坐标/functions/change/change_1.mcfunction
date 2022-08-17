execute @p[r=1.4] ~ ~ ~ execute @s[tag=bp:using] ~ ~ ~ scoreboard players add @s bp:scores 1
#//
execute @a[scores={bp:situation=0,bp:scores=16..}] ~ ~ ~ scoreboard players set @s bp:scores 1
execute @a[scores={bp:situation=1..2,bp:scores=17..}] ~ ~ ~ scoreboard players set @s bp:scores 1
#//
execute @p[r=1.4] ~ ~ ~ execute @s[tag=bp:using] ~ ~ ~ tag @s add bp:change_1
execute @p[r=1.4] ~ ~ ~ execute @s[tag=bp:using] ~ ~ ~ tag @s add bp:random
execute @p[r=1.4] ~ ~ ~ execute @s[tag=bp:using] ~ ~ ~ playsound random.click @s ~ ~ ~ 1 1 1
#//
#1

execute @a[tag=bp:change_1] ~ ~ ~ kill @e[type=snowball,r=1.4,c=1]
execute @a[tag=bp:change_1] ~ ~ ~ tag @s remove bp:change_1
#2
#change_1