scoreboard players reset @s[tag=!bp:exit] posx
scoreboard players reset @s[tag=!bp:exit] posy
scoreboard players reset @s[tag=!bp:exit] posz
#//
scoreboard players reset @s bp:scores
scoreboard players reset @s bp:time
scoreboard players reset @s bp:keyboard
scoreboard players reset @s bp:ws
scoreboard players reset @s bp:situation
scoreboard players reset @s bp:wait
scoreboard players reset @s bp:gb
#//
#1

tag @s[tag=bp:posx_save] remove bp:posx_save
tag @s[tag=bp:posy_save] remove bp:posy_save
tag @s[tag=bp:posz_save] remove bp:posz_save
tag @s[tag=bp:using] remove bp:using
tag @s[tag=bp:gb_down] remove bp:gb_down
#2

tp ~ ~ ~ ~ 0
#3

titleraw @s actionbar {"rawtext":[{"text":"§a感谢您使用本菜单§f！\n§b让我们下次再会§f！"}]}
execute @s[tag=!bp:exit] ~ ~ ~ playsound note.harp @s ~ ~ ~ 1 1 1
#4

tag @s[tag=bp:exit] remove bp:exit
#5
#exit