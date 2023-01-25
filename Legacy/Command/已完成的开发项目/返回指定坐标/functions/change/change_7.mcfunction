execute @s[scores={bp:situation=2}] ~ ~ ~ tag @s add pos_return
execute @s[scores={bp:situation=2}] ~ ~ ~ tag @s add bp:exit
#1

execute @s[scores={bp:situation=0..1}] ~ ~ ~ scoreboard players set @s bp:wait 5
execute @s[scores={bp:situation=0..1}] ~ ~ ~ tellraw @s {"rawtext":[{"text":"§a已成功切换到下一项§f！"}]}
execute @s[scores={bp:situation=0..1}] ~ ~ ~ playsound random.orb @s ~ ~ ~ 1 1 1
#//
execute @s[scores={bp:situation=0}] ~ ~ ~ scoreboard players operation @s posx = @s bp:keyboard
execute @s[scores={bp:situation=0,bp:keyboard=-2147483648..2147483647}] ~ ~ ~ tag @s add bp:posx_save
#/
execute @s[scores={bp:situation=1}] ~ ~ ~ scoreboard players operation @s posy = @s bp:keyboard
execute @s[scores={bp:situation=1,bp:keyboard=-2147483648..2147483647}] ~ ~ ~ tag @s add bp:posy_save
#/
execute @s[scores={bp:situation=2}] ~ ~ ~ scoreboard players operation @s posz = @s bp:keyboard
#/
#//
execute @s[scores={bp:situation=0..1}] ~ ~ ~ scoreboard players reset @s bp:ws
execute @s[scores={bp:situation=0..1}] ~ ~ ~ scoreboard players reset @s bp:keyboard
execute @s[scores={bp:situation=0},tag=bp:posy_save] ~ ~ ~ scoreboard players operation @s bp:keyboard = @s posy
execute @s[scores={bp:situation=0..1}] ~ ~ ~ scoreboard players add @s bp:situation 1
#//
#2
#change_7