execute @a[tag=s_m:main_set_spawnpoint,rm=0] ~ ~ ~ spawnpoint @s ~ ~ ~
execute @a[tag=s_m:main_set_spawnpoint,rm=0] ~ ~ ~ tag @s add s_m:main_set_spawnpoint_allow
tellraw @a[tag=s_m:main_set_spawnpoint,tag=s_m:main_set_spawnpoint_allow] {"rawtext":[{"text":"§a已成功将重生点设为当前位置"}]}
tellraw @a[tag=s_m:main_set_spawnpoint,tag=!s_m:main_set_spawnpoint_allow] {"rawtext":[{"text":"§c请确定当前位置是否位于主世界"}]}
execute @a[tag=s_m:main_set_spawnpoint,tag=s_m:main_set_spawnpoint_allow] ~ ~ ~ playsound random.orb @s ~ ~ ~ 1 1 1
execute @a[tag=s_m:main_set_spawnpoint,tag=!s_m:main_set_spawnpoint_allow] ~ ~ ~ playsound random.break @s ~ ~ ~ 1 1 1
tag @a[tag=s_m:main_set_spawnpoint] remove s_m:main_set_spawnpoint_allow
tag @a[tag=s_m:main_set_spawnpoint] remove s_m:main_set_spawnpoint
#set_spawnpoint