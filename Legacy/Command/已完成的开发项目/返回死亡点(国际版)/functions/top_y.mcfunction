execute @a[scores={top_y=50..}] ~~~execute @s[y=-256,dy=256] ~~~tellraw @s {"rawtext":[{"text":"无法找到当前位置的最高点！"}]}
execute @a[scores={top_y=50..}] ~~~execute @s[y=-256,dy=256] ~~~playsound random.break
execute @a[scores={top_y=50..}] ~~~execute @s[y=-256,dy=256] ~~~scoreboard players reset @s top_y
execute @a[scores={top_y=50..}] ~~-1~detect~~~air 0 tag @s add top_y_0
execute @a[tag=top_y_0] ~~~tp~~-1~
execute @a[scores={top_y=50..},tag=!top_y_0] ~~~scoreboard players add @s top_y_0 0
execute @a[scores={top_y=50..},tag=!top_y_0] ~~~scoreboard players reset @s top_y
tag @a[tag=top_y_0] remove top_y_0
execute @p[scores={top_y=50..}] ~~~function top_y