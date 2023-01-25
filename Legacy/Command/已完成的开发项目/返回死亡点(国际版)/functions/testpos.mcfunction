tag @a[tag=testpos,tag=!clear] add clear
tag @a[tag=testpos,scores={posx_0=-524288..524288,posy_0=-256..256,posz_0=-524288..524288},tag=clear] remove clear
scoreboard players reset @a[tag=clear] posx_0
scoreboard players reset @a[tag=clear] posy_0
scoreboard players reset @a[tag=clear] posz_0
tellraw @a[tag=testpos,tag=clear,tag=!godmode_set] {"rawtext":[{"text":"§c您死在坐标求取的有效范围以外，无法记录坐标§f！"}]}
tellraw @a[tag=testpos,tag=clear,tag=godmode_set] {"rawtext":[{"text":"§c您当前位于坐标求取的有效范围以外，无法记录坐标§f！"}]}
tellraw @a[tag=testpos,tag=!clear,tag=godmode_set] {"rawtext":[{"text":"§5已成功将当前位置设为§4死亡点§f！"}]}
execute @a[tag=testpos,tag=clear] ~~~playsound random.toast
tellraw @a[tag=testpos,tag=!clear,tag=!godmode_set] {"rawtext":[{"text":"§e已成功记录您的死亡点§f！"}]}
execute @a[tag=testpos,tag=!clear] ~~~playsound mob.endermen.portal @s ~~~ 1 0.5
tag @a[tag=testpos] remove testpos
tag @a[tag=clear] remove clear
tag @a[tag=godmode_set] remove godmode_set