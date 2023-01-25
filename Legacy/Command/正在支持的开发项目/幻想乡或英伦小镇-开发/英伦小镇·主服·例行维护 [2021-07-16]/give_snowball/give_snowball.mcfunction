execute @a[scores={g_s:cd=0},c=1] ~ ~ ~ tag @s add g_s:test
#tag_set
execute @a[tag=g_s:test] ~ ~ ~ tag @s add g_s:un_have_snowball
execute @a[tag=g_s:test] ~ ~ ~ clear @s snowball 0 0
*#execute @a[tag=g_s:test] ~ ~ ~ tag @s remove g_s:un_have_snowball
execute @a[tag=g_s:test,tag=g_s:un_have_snowball] ~ ~ ~ give @s snowball 16
execute @a[tag=g_s:test,tag=g_s:un_have_snowball] ~ ~ ~ playsound random.orb @s ~ ~ ~ 1 0.5 1
execute @a[tag=g_s:test,tag=g_s:un_have_snowball] ~ ~ ~ tellraw @s {"rawtext":[{"text":"§a已为您补充 §f雪球 §7* §l§b16"}]}
execute @a[tag=g_s:test,tag=g_s:un_have_snowball] ~ ~ ~ tag @s remove g_s:un_have_snowball
execute @a[tag=g_s:test] ~ ~ ~ scoreboard players set @s g_s:cd 1200
execute @a[tag=g_s:test] ~ ~ ~ tag @s remove g_s:test
#give_snowball