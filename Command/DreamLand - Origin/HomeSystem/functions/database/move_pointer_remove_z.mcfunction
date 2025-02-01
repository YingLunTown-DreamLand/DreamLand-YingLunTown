# move_pointer_remove_z 将指针向 z
# 轴负方向移动 |move_offset_z| 格。
#
# 此操作不会改变 current_offset_z 的值，
# 您应当手动调整

execute as @e[tag=db:io,scores={db:move_offset_z=..-32}] at @s run tp ~ ~ ~-32
scoreboard players add @e[tag=db:io,scores={db:move_offset_z=..-32}] db:move_offset_z 32

execute as @e[tag=db:io,scores={db:move_offset_z=..-16}] at @s run tp ~ ~ ~-16
scoreboard players add @e[tag=db:io,scores={db:move_offset_z=..-16}] db:move_offset_z 16

execute as @e[tag=db:io,scores={db:move_offset_z=..-8}] at @s run tp ~ ~ ~-8
scoreboard players add @e[tag=db:io,scores={db:move_offset_z=..-8}] db:move_offset_z 8

execute as @e[tag=db:io,scores={db:move_offset_z=..-4}] at @s run tp ~ ~ ~-4
scoreboard players add @e[tag=db:io,scores={db:move_offset_z=..-4}] db:move_offset_z 4

execute as @e[tag=db:io,scores={db:move_offset_z=..-2}] at @s run tp ~ ~ ~-2
scoreboard players add @e[tag=db:io,scores={db:move_offset_z=..-2}] db:move_offset_z 2

execute as @e[tag=db:io,scores={db:move_offset_z=..-1}] at @s run tp ~ ~ ~-1
scoreboard players add @e[tag=db:io,scores={db:move_offset_z=..-1}] db:move_offset_z 1