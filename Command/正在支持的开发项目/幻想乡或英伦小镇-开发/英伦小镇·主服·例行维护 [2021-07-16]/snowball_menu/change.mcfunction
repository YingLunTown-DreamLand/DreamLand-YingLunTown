execute @e[type=minecraft:snowball] ~ ~ ~ tag @p[r=1.4] add s_m:test_change
execute @a[tag=s_m:test_change,tag=s_m:user,tag=!s_m:user_mark,scores={s_m:scores=0..7},m=!1] ~ ~ ~ give @s snowball
execute @a[tag=s_m:test_change,tag=s_m:user,tag=!s_m:user_mark,scores={s_m:scores=0..7}] ~ ~ ~ scoreboard players set @s s_m:time 13
execute @a[tag=s_m:test_change,tag=s_m:user,tag=!s_m:user_mark,scores={s_m:scores=0..7}] ~ ~ ~ scoreboard players add @s s_m:scores 1
execute @a[tag=s_m:test_change,tag=s_m:user,tag=!s_m:user_mark] ~ ~ ~ scoreboard players set @s[scores={s_m:scores=8}] s_m:scores 1
execute @a[tag=s_m:test_change,tag=s_m:user,tag=!s_m:user_mark,scores={s_m:scores=0..7}] ~ ~ ~ playsound random.click @s ~ ~ ~ 1 1 1
execute @a[tag=s_m:test_change] ~ ~ ~ tag @s remove s_m:test_change
#change