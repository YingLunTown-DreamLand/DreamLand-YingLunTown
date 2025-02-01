function database/define
function database/const
execute as @e[tag=db:io,scores={db:move_offset_x=1..},c=1] run function database/move_pointer_add_x
execute as @e[tag=db:io,scores={db:move_offset_z=1..},c=1] run function database/move_pointer_add_z
execute as @e[tag=db:io,scores={db:move_offset_x=..-1},c=1] run function database/move_pointer_remove_x
execute as @e[tag=db:io,scores={db:move_offset_z=..-1},c=1] run function database/move_pointer_remove_z
execute as @e[tag=db:io_read,scores={db:move_offset_x=0,db:move_offset_z=0,db:io_count=!-1},c=1] run function database/reader
execute as @e[tag=db:io_write,scores={db:move_offset_x=0,db:move_offset_z=0,db:io_count=!-1},c=1] run function database/writer