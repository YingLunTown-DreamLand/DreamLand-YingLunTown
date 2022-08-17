give @a[tag=s_m:main_get_snowball] snowball 16
execute @a[tag=s_m:main_get_snowball] ~ ~ ~ tellraw @s {"rawtext":[{"text":"§a已成功给予 §b"},{"selector":"@s"},{"text":" §f雪球 §7* §b16"}]}
tag @a[tag=s_m:main_get_snowball] remove s_m:main_get_snowball
#get_snowball