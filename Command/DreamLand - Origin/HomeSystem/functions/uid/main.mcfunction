scoreboard players add @a uid 0
execute as @a[scores={uid=0},c=1] run scoreboard players add general_uid uid 1
execute as @a[scores={uid=0},c=1] run scoreboard players operation @s uid = general_uid uid