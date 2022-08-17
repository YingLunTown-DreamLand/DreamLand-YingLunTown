execute @a[tag=s_m:user,rx=-60,rxm=-90,scores={s_m:scores=1,s_m:cd=0},tag=!s_m:user_mark] ~ ~ ~ tag @s add s_m:main_gamemode
execute @a[tag=s_m:user,rx=-60,rxm=-90,scores={s_m:scores=1,s_m:cd=0},c=1,tag=!s_m:user_mark] ~ ~ ~ function main/gamemode
#gamemode
execute @a[tag=s_m:user,rx=-60,rxm=-90,scores={s_m:scores=2,s_m:cd=0},tag=!s_m:user_mark] ~ ~ ~ tag @s add s_m:main_get_snowball
execute @a[tag=s_m:user,rx=-60,rxm=-90,scores={s_m:scores=2,s_m:cd=0},c=1,tag=!s_m:user_mark] ~ ~ ~ function main/get_snowball
#get_snowball
execute @a[tag=s_m:user,rx=-60,rxm=-90,scores={s_m:scores=3,s_m:cd=0},tag=!s_m:user_mark] ~ ~ ~ tag @s add s_m:main_set_spawnpoint
execute @a[tag=s_m:user,rx=-60,rxm=-90,scores={s_m:scores=3,s_m:cd=0},c=1,tag=!s_m:user_mark] ~ ~ ~ execute @e[tag=s_m:test_world] ~ ~ ~ function main/set_spawnpoint
#set_spawnpoint
execute @a[tag=s_m:user,rx=-60,rxm=-90,scores={s_m:scores=4,s_m:cd=0},tag=!s_m:user_mark] ~ ~ ~ tag @s add s_m:main_back_spawnpoint
execute @a[tag=s_m:user,rx=-60,rxm=-90,scores={s_m:scores=4,s_m:cd=0},c=1,tag=!s_m:user_mark] ~ ~ ~ function main/back_spawnpoint
#back_spawnpoint
execute @a[tag=s_m:user,rx=-60,rxm=-90,scores={s_m:scores=5,s_m:cd=0},tag=!s_m:user_mark] ~ ~ ~ tag @s add s_m:main_save_point
execute @a[tag=s_m:user,rx=-60,rxm=-90,scores={s_m:scores=5,s_m:cd=0},c=1,tag=!s_m:user_mark] ~ ~ ~ execute @e[tag=s_m:test_world] ~ ~ ~ function main/save_point
#save_point
execute @a[tag=s_m:user,rx=-60,rxm=-90,scores={s_m:scores=6,s_m:cd=0},tag=!s_m:user_mark] ~ ~ ~ tag @s add s_m:main_back_point
#back_point
execute @a[tag=s_m:user,rx=-60,rxm=-90,scores={s_m:scores=9,s_m:cd=0},tag=!s_m:user_mark] ~ ~ ~ tag @s add s_m:main_add_bmdsw
execute @a[tag=s_m:user,rx=-60,rxm=-90,scores={s_m:scores=9,s_m:cd=0},c=1,tag=!s_m:user_mark] ~ ~ ~ function main/add_bmdsw
execute @a[tag=s_m:user,rx=-60,rxm=-90,scores={s_m:scores=7,bmdsw_added=1..,s_m:cd=0,白名单=1},tag=!s_m:user_mark] ~ ~ ~ playsound note.harp @s ~ ~ ~ 1 1 1
execute @a[tag=s_m:user,rx=-60,rxm=-90,scores={s_m:scores=7,bmdsw_added=1..,s_m:cd=0,白名单=1},tag=!s_m:user_mark] ~ ~ ~ scoreboard players set @s s_m:scores 9
execute @a[tag=s_m:user,rx=-60,rxm=-90,scores={s_m:scores=7,bmdsw_added=..0,s_m:cd=0,白名单=1},tag=!s_m:user_mark] ~ ~ ~ tellraw @s {"rawtext":[{"text":"§c您已用完白名单生物添加次数，请等待下个月重置次数§f！"}]}
execute @a[tag=s_m:user,rx=-60,rxm=-90,scores={s_m:scores=7,bmdsw_added=..0,s_m:cd=0,白名单=1},tag=!s_m:user_mark] ~ ~ ~ playsound random.break @s ~ ~ ~ 1 1 1
execute @a[tag=s_m:user,rx=-60,rxm=-90,scores={s_m:scores=7,s_m:cd=0,白名单=!1},tag=!s_m:user_mark] ~ ~ ~ tellraw @s {"rawtext":[{"text":"§c您不具有访问此选项的权限"}]}
execute @a[tag=s_m:user,rx=-60,rxm=-90,scores={s_m:scores=7,s_m:cd=0,白名单=!1},tag=!s_m:user_mark] ~ ~ ~ playsound random.break @s ~ ~ ~ 1 1 1
#7
execute @a[tag=s_m:user,rx=-60,rxm=-90,scores={s_m:scores=1..9,s_m:scores=!5..6,s_m:scores=!9,s_m:cd=0,s_m:scores=!7,s_m:scores=!3}] ~ ~ ~ playsound random.orb @s ~ ~ ~ 1 1 1
execute @a[tag=s_m:user,rx=-60,rxm=-90,scores={s_m:scores=1..9,s_m:cd=0}] ~ ~ ~ tag @s add s_m:main_center
execute @a[tag=s_m:main_center] ~ ~ ~ tag @s add s_m:user_mark
execute @a[tag=s_m:main_center] ~ ~ ~ scoreboard players set @s s_m:cd 2
execute @a[tag=s_m:main_center] ~ ~ ~ tp ~ ~ ~ ~ 0
execute @a[tag=s_m:main_center] ~ ~ ~ tag @s remove s_m:main_center
#center