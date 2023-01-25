tag @a[tag=s_m:main_back_spawnpoint,m=1] add s_m:main_back_spawnpoint_godmode_creative
execute @a[tag=s_m:main_back_spawnpoint,m=1,c=1] ~ ~ ~ gamerule sendcommandfeedback false
gamemode 0 @a[tag=s_m:main_back_spawnpoint,m=1]
kill @a[tag=s_m:main_back_spawnpoint]
gamemode 1 @a[tag=s_m:main_back_spawnpoint_godmode_creative]
execute @a[tag=s_m:main_back_spawnpoint_godmode_creative,c=1] ~ ~ ~ scoreboard objectives add s_m:settings dummy
execute @a[tag=s_m:main_back_spawnpoint_godmode_creative,c=1] ~ ~ ~ scoreboard players add sendcommandfeedback s_m:settings 0
execute @a[tag=s_m:main_back_spawnpoint_godmode_creative,c=1] ~ ~ ~ tag @s add s_m:main_back_spawnpoint_gameule_return_random
execute @a[tag=s_m:main_back_spawnpoint_gameule_return_random] ~ ~ ~ scoreboard players operation @s s_m:settings = sendcommandfeedback s_m:settings
execute @a[tag=s_m:main_back_spawnpoint_gameule_return_random,scores={s_m:settings=0}] ~ ~ ~ gamerule sendcommandfeedback true
execute @a[tag=s_m:main_back_spawnpoint_gameule_return_random] ~ ~ ~ tag @s remove s_m:main_back_spawnpoint_gameule_return_random
execute @a[tag=s_m:main_back_spawnpoint_godmode_creative] ~ ~ ~ tag @s remove s_m:main_back_spawnpoint_godmode_creative
tellraw @a[tag=s_m:main_back_spawnpoint] {"rawtext":[{"text":"§a已成功返回重生点"}]}
tag @a[tag=s_m:main_back_spawnpoint] remove s_m:main_back_spawnpoint
#back_spawnpoint