execute @e[type=minecraft:snowball] ~ ~ ~ tag @p[r=1.4] add s_m:test
execute @a[tag=s_m:test,rx=90,rxm=60] ~ ~ ~ tag @s add s_m:user_prepare
execute @a[tag=s_m:test] ~ ~ ~ tag @s remove s_m:test
execute @a[tag=s_m:user_prepare,m=!1] ~ ~ ~ give @s snowball
execute @a[tag=s_m:user_prepare] ~ ~ ~ tp ~ ~ ~ ~ 0
execute @a[tag=s_m:user_prepare] ~ ~ ~ playsound note.harp @s ~ ~ ~ 1 1 1
execute @a[tag=s_m:user_prepare] ~ ~ ~ scoreboard players set @s s_m:time 14
execute @a[tag=s_m:user_prepare] ~ ~ ~ scoreboard players set @s s_m:cd 2
execute @a[tag=s_m:user_prepare] ~ ~ ~ tag @s add s_m:user
execute @a[tag=s_m:user_prepare] ~ ~ ~ tag @s add s_m:user_mark
execute @a[tag=s_m:user_prepare] ~ ~ ~ tag @s remove s_m:user_prepare
#user