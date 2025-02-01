# move_pointer_add_z 将指针向 z 
# 轴正方向移动 move_offset_z 格

execute as @e[tag=db:io,scores={db:move_offset_z=1..}] run scoreboard players operation @s db:current_offset_z += @s db:move_offset_z

execute as @e[tag=db:io,scores={db:move_offset_z=32..}] at @s run tp ~ ~ ~32
scoreboard players remove @e[tag=db:io,scores={db:move_offset_z=32..}] db:move_offset_z 32

execute as @e[tag=db:io,scores={db:move_offset_z=16..}] at @s run tp ~ ~ ~16
scoreboard players remove @e[tag=db:io,scores={db:move_offset_z=16..}] db:move_offset_z 16

execute as @e[tag=db:io,scores={db:move_offset_z=8..}] at @s run tp ~ ~ ~8
scoreboard players remove @e[tag=db:io,scores={db:move_offset_z=8..}] db:move_offset_z 8

execute as @e[tag=db:io,scores={db:move_offset_z=4..}] at @s run tp ~ ~ ~4
scoreboard players remove @e[tag=db:io,scores={db:move_offset_z=4..}] db:move_offset_z 4

execute as @e[tag=db:io,scores={db:move_offset_z=2..}] at @s run tp ~ ~ ~2
scoreboard players remove @e[tag=db:io,scores={db:move_offset_z=2..}] db:move_offset_z 2

execute as @e[tag=db:io,scores={db:move_offset_z=1..}] at @s run tp ~ ~ ~1
scoreboard players remove @e[tag=db:io,scores={db:move_offset_z=1..}] db:move_offset_z 1