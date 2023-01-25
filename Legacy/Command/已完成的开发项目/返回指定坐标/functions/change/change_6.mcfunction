scoreboard players remove @s bp:situation 1
#1

scoreboard players operation @s[scores={bp:situation=1},tag=bp:posy_save] bp:keyboard = @s posy
scoreboard players operation @s[scores={bp:situation=0},tag=bp:posx_save] bp:keyboard = @s posx
#2

scoreboard players reset @s[scores={bp:situation=1},tag=!bp:posy_save] bp:keyboard
scoreboard players reset @s[scores={bp:situation=0},tag=!bp:posx_save] bp:keyboard
scoreboard players reset @s bp:ws
#3

scoreboard players set @s bp:wait 5
tellraw @s {"rawtext":[{"text":"§a已成功切换到上一项§f！"}]}
playsound random.orb @s ~ ~ ~ 1 1 1
#4
#change_6