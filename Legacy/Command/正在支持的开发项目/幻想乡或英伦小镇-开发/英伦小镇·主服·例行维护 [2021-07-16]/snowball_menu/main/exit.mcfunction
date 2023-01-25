execute @a[tag=s_m:user,rx=90,rxm=60,scores={s_m:scores=0..8,s_m:cd=0},tag=!s_m:user_mark] ~ ~ ~ tag @s add s_m:main_exit_01
execute @a[tag=s_m:user,rx=90,rxm=60,scores={s_m:scores=9,s_m:cd=0},tag=!s_m:user_mark] ~ ~ ~ tag @s add s_m:main_exit_02
#1
execute @a[tag=s_m:user,rx=90,rxm=60,tag=!s_m:user_mark,scores={s_m:cd=0}] ~ ~ ~ playsound note.harp @s ~ ~ ~ 1 1 1
execute @a[tag=s_m:user,rx=90,rxm=60,tag=!s_m:user_mark,scores={s_m:cd=0}] ~ ~ ~ tp ~ ~ ~ ~ 0
#2
execute @a[tag=s_m:main_exit_01] ~ ~ ~ titleraw @s actionbar {"rawtext":[{"text":"§a已成功退出本菜单\n§e期待与§6您§c的再会§f！"}]}
execute @a[tag=s_m:main_exit_01] ~ ~ ~ scoreboard players reset @s s_m:scores
execute @a[tag=s_m:main_exit_01] ~ ~ ~ scoreboard players reset @s s_m:cd
execute @a[tag=s_m:main_exit_01] ~ ~ ~ scoreboard players reset @s s_m:time
execute @a[tag=s_m:main_exit_01] ~ ~ ~ tag @s remove s_m:user
execute @a[tag=s_m:main_exit_01] ~ ~ ~ tag @s remove s_m:main_exit_01
#3
execute @a[tag=s_m:main_exit_02] ~ ~ ~ scoreboard players set @s s_m:scores 7
execute @a[tag=s_m:main_exit_02] ~ ~ ~ scoreboard players set @s s_m:time 13
execute @a[tag=s_m:main_exit_02] ~ ~ ~ scoreboard players set @s s_m:cd 2
execute @a[tag=s_m:main_exit_02] ~ ~ ~ tag @s add s_m:user_mark
execute @a[tag=s_m:main_exit_02] ~ ~ ~ tag @s remove s_m:main_exit_02
#4