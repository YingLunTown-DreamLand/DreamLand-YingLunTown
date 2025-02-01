# move_pointer_remove_x 将指针向 x 
# 轴负方向移动 |move_offset_x| 格

execute as @e[tag=db:io,scores={db:move_offset_x=..-1}] run scoreboard players operation @s db:current_offset_x += @s db:move_offset_x

execute as @e[tag=db:io,scores={db:move_offset_x=..-32}] at @s run tp ~-32 ~ ~
scoreboard players add @e[tag=db:io,scores={db:move_offset_x=..-32}] db:move_offset_x 32

execute as @e[tag=db:io,scores={db:move_offset_x=..-16}] at @s run tp ~-16 ~ ~
scoreboard players add @e[tag=db:io,scores={db:move_offset_x=..-16}] db:move_offset_x 16

execute as @e[tag=db:io,scores={db:move_offset_x=..-8}] at @s run tp ~-8 ~ ~
scoreboard players add @e[tag=db:io,scores={db:move_offset_x=..-8}] db:move_offset_x 8

execute as @e[tag=db:io,scores={db:move_offset_x=..-4}] at @s run tp ~-4 ~ ~
scoreboard players add @e[tag=db:io,scores={db:move_offset_x=..-4}] db:move_offset_x 4

execute as @e[tag=db:io,scores={db:move_offset_x=..-2}] at @s run tp ~-2 ~ ~
scoreboard players add @e[tag=db:io,scores={db:move_offset_x=..-2}] db:move_offset_x 2

execute as @e[tag=db:io,scores={db:move_offset_x=..-1}] at @s run tp ~-1 ~ ~
scoreboard players add @e[tag=db:io,scores={db:move_offset_x=..-1}] db:move_offset_x 1