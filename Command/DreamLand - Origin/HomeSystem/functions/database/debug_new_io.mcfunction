# debug_new_io 创建一个新的 io 流操作器。
#
# 操作器的指针以标签为 db:io 的盔甲架体现。
# 指针(盔甲架)默认生成在 (0,-60,0) 位置。
#
# 只应当在 debug 模式下调用此函数。

summon minecraft:armor_stand 0 -60 0

scoreboard players set @e[type=minecraft:armor_stand,x=0,y=-60,z=0,c=1] db:io 0
scoreboard players set @e[type=minecraft:armor_stand,x=0,y=-60,z=0,c=1] db:io_count -1
scoreboard players set @e[type=minecraft:armor_stand,x=0,y=-60,z=0,c=1] db:states 0

scoreboard players set @e[type=minecraft:armor_stand,x=0,y=-60,z=0,c=1] db:current_offset_x 0
scoreboard players set @e[type=minecraft:armor_stand,x=0,y=-60,z=0,c=1] db:current_offset_z 0
scoreboard players set @e[type=minecraft:armor_stand,x=0,y=-60,z=0,c=1] db:move_offset_x 0
scoreboard players set @e[type=minecraft:armor_stand,x=0,y=-60,z=0,c=1] db:move_offset_z 0

scoreboard players set @e[type=minecraft:armor_stand,x=0,y=-60,z=0,c=1] db:math 0
scoreboard players set @e[type=minecraft:armor_stand,x=0,y=-60,z=0,c=1] db:power_number 1

tag @e[type=minecraft:armor_stand,x=0,y=-60,z=0,c=1] add db:io