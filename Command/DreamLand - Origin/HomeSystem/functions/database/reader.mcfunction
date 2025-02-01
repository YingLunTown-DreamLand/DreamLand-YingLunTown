# reader 是 io 读取操作器，
# 它仅处理带有 db:io_read 标签的指针。
#
# 如果指针的 move_offset_x 或 move_offset_z
# 其中任何一个不为 0，那么指针将先需要进行偏移。
# 偏移完成后，再进行读取。
#
# 指针下方的方块作为字节流进行读取，
# 每完成一次读取便向 x 轴正方向移动 1 格。
# 如果读取已经结束，则不会移动。
#
# 读取前应当参考 debug_new_io 初始化指针，
# 然后将 io_count 置为要读入字节数的 2 倍。
# 如果读入的数据类型为布尔值，则是置为 1。
#
# 读入完成后，states 将自增，且 io_count
# 将设为 -1 并且将移除 db:io_read 标签。
# 然后，您便能从 io 上得到读取结果

tag @e[tag=db:io_read,scores={db:move_offset_x=0,db:move_offset_z=0,db:io_count=!-1}] add db:temp_is_reading

scoreboard players set @e[tag=db:temp_is_reading] db:math 0
execute as @e[tag=db:temp_is_reading] at @s if block ~ ~-1 ~ minecraft:light_gray_wool [] run scoreboard players set @s db:math 1
execute as @e[tag=db:temp_is_reading] at @s if block ~ ~-1 ~ minecraft:gray_wool [] run scoreboard players set @s db:math 2
execute as @e[tag=db:temp_is_reading] at @s if block ~ ~-1 ~ minecraft:black_wool [] run scoreboard players set @s db:math 3
execute as @e[tag=db:temp_is_reading] at @s if block ~ ~-1 ~ minecraft:brown_wool [] run scoreboard players set @s db:math 4
execute as @e[tag=db:temp_is_reading] at @s if block ~ ~-1 ~ minecraft:red_wool [] run scoreboard players set @s db:math 5
execute as @e[tag=db:temp_is_reading] at @s if block ~ ~-1 ~ minecraft:orange_wool [] run scoreboard players set @s db:math 6
execute as @e[tag=db:temp_is_reading] at @s if block ~ ~-1 ~ minecraft:yellow_wool [] run scoreboard players set @s db:math 7
execute as @e[tag=db:temp_is_reading] at @s if block ~ ~-1 ~ minecraft:lime_wool [] run scoreboard players set @s db:math 8
execute as @e[tag=db:temp_is_reading] at @s if block ~ ~-1 ~ minecraft:green_wool [] run scoreboard players set @s db:math 9
execute as @e[tag=db:temp_is_reading] at @s if block ~ ~-1 ~ minecraft:cyan_wool [] run scoreboard players set @s db:math 10
execute as @e[tag=db:temp_is_reading] at @s if block ~ ~-1 ~ minecraft:light_blue_wool [] run scoreboard players set @s db:math 11
execute as @e[tag=db:temp_is_reading] at @s if block ~ ~-1 ~ minecraft:blue_wool [] run scoreboard players set @s db:math 12
execute as @e[tag=db:temp_is_reading] at @s if block ~ ~-1 ~ minecraft:purple_wool [] run scoreboard players set @s db:math 13
execute as @e[tag=db:temp_is_reading] at @s if block ~ ~-1 ~ minecraft:magenta_wool [] run scoreboard players set @s db:math 14
execute as @e[tag=db:temp_is_reading] at @s if block ~ ~-1 ~ minecraft:pink_wool [] run scoreboard players set @s db:math 15

execute as @e[tag=db:temp_is_reading] run scoreboard players operation @s db:math *= @s db:power_number
execute as @e[tag=db:temp_is_reading] run scoreboard players operation @s db:power_number *= base_number db:power_number
execute as @e[tag=db:temp_is_reading] run scoreboard players operation @s db:io += @s db:math

scoreboard players remove @e[tag=db:temp_is_reading] db:io_count 1
tag @e[tag=db:temp_is_reading,scores={db:io_count=0}] remove db:io_read
scoreboard players add @e[tag=db:temp_is_reading,scores={db:io_count=0}] db:states 1
scoreboard players set @e[tag=db:temp_is_reading,scores={db:io_count=0}] db:io_count -1

execute as @e[tag=db:temp_is_reading,scores={db:io_count=!-1}] at @s run tp ~1 ~ ~
scoreboard players add @e[tag=db:temp_is_reading,scores={db:io_count=!-1}] db:current_offset_x 1

tag @e[tag=db:temp_is_reading] remove db:temp_is_reading