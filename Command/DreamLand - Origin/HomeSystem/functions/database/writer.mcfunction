# writer 是 io 写入操作器。
# 它仅处理带有 db:io_write 标签的指针。
#
# 如果指针的 move_offset_x 或 move_offset_z
# 其中任何一个不为 0，那么指针将先需要进行偏移。
# 偏移完成后，再进行写入。
#
# 它将 io 上的整数逐步写入到下方的方块中，
# 每完成一次写入便向 x 轴正方向移动 1 格。
# 如果写入已经结束，则不会移动。
#
# 读取前应当参考 debug_new_io 初始化指针，
# 然后将 io_count 置为要写入字节数的 2 倍。
# 如果写入的数据类型为布尔值，则是置为 1。
#
# 写入完成后，states 将自增，
# io_count 将设为 -1。
# 然后，将移除 db:io_write 标签

tag @e[tag=db:io_write,scores={db:move_offset_x=0,db:move_offset_z=0,db:io_count=!-1}] add db:temp_is_writing

execute as @e[tag=db:temp_is_writing] run scoreboard players operation @s db:math = @s db:io
execute as @e[tag=db:temp_is_writing] run scoreboard players operation @s db:math %= base_number db:power_number
execute as @e[tag=db:temp_is_writing] run scoreboard players operation @s db:io /= base_number db:power_number

execute as @e[tag=db:temp_is_writing,scores={db:math=0}] at @s run setblock ~ ~-1 ~ minecraft:white_wool
execute as @e[tag=db:temp_is_writing,scores={db:math=1}] at @s run setblock ~ ~-1 ~ minecraft:light_gray_wool
execute as @e[tag=db:temp_is_writing,scores={db:math=2}] at @s run setblock ~ ~-1 ~ minecraft:gray_wool
execute as @e[tag=db:temp_is_writing,scores={db:math=3}] at @s run setblock ~ ~-1 ~ minecraft:black_wool
execute as @e[tag=db:temp_is_writing,scores={db:math=4}] at @s run setblock ~ ~-1 ~ minecraft:brown_wool
execute as @e[tag=db:temp_is_writing,scores={db:math=5}] at @s run setblock ~ ~-1 ~ minecraft:red_wool
execute as @e[tag=db:temp_is_writing,scores={db:math=6}] at @s run setblock ~ ~-1 ~ minecraft:orange_wool
execute as @e[tag=db:temp_is_writing,scores={db:math=7}] at @s run setblock ~ ~-1 ~ minecraft:yellow_wool
execute as @e[tag=db:temp_is_writing,scores={db:math=8}] at @s run setblock ~ ~-1 ~ minecraft:lime_wool
execute as @e[tag=db:temp_is_writing,scores={db:math=9}] at @s run setblock ~ ~-1 ~ minecraft:green_wool
execute as @e[tag=db:temp_is_writing,scores={db:math=10}] at @s run setblock ~ ~-1 ~ minecraft:cyan_wool
execute as @e[tag=db:temp_is_writing,scores={db:math=11}] at @s run setblock ~ ~-1 ~ minecraft:light_blue_wool
execute as @e[tag=db:temp_is_writing,scores={db:math=12}] at @s run setblock ~ ~-1 ~ minecraft:blue_wool
execute as @e[tag=db:temp_is_writing,scores={db:math=13}] at @s run setblock ~ ~-1 ~ minecraft:purple_wool
execute as @e[tag=db:temp_is_writing,scores={db:math=14}] at @s run setblock ~ ~-1 ~ minecraft:magenta_wool
execute as @e[tag=db:temp_is_writing,scores={db:math=15}] at @s run setblock ~ ~-1 ~ minecraft:pink_wool

scoreboard players remove @e[tag=db:temp_is_writing] db:io_count 1
tag @e[tag=db:temp_is_writing,scores={db:io_count=0}] remove db:io_write
scoreboard players add @e[tag=db:temp_is_writing,scores={db:io_count=0}] db:states 1
scoreboard players set @e[tag=db:temp_is_writing,scores={db:io_count=0}] db:io_count -1

execute as @e[tag=db:temp_is_writing,scores={db:io_count=!-1}] at @s run tp ~1 ~ ~
scoreboard players add @e[tag=db:temp_is_writing,scores={db:io_count=!-1}] db:current_offset_x 1

tag @e[tag=db:temp_is_writing] remove db:temp_is_writing