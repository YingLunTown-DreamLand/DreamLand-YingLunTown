# # Read HomeUID (uint16)
scoreboard players set @e[tag=db:io,scores={db:states=0}] db:io_count 4
tag @e[tag=db:io,scores={db:states=0}] add db:io_read
scoreboard players set @e[tag=db:io,scores={db:states=0}] db:states 1
# Pseudo-code: CALL "Read HomeOwnerUID"
# Pseudo-code: execute unless entity @e[tag=db:io,scores={db:states=0}] run "STOP Read HomeUID"

# Read HomeOwnerUID (uint16)
execute as @e[tag=db:io,scores={db:states=2}] run scoreboard players operation @s home_system:home_uid = @s db:io
scoreboard players set @e[tag=db:io,scores={db:states=2}] db:io 0
scoreboard players set @e[tag=db:io,scores={db:states=2}] db:power_number 1
scoreboard players set @e[tag=db:io,scores={db:states=2}] db:move_offset_x 17
scoreboard players set @e[tag=db:io,scores={db:states=2}] db:io_count 4
tag @e[tag=db:io,scores={db:states=2}] add db:io_read
scoreboard players set @e[tag=db:io,scores={db:states=2}] db:states 3
# Pseudo-code: CALL "Read UserPermission.AdminCouldManager"
# Pseudo-code: execute unless entity @e[tag=db:io,scores={db:states=1}] run "STOP Read HomeOwnerUID"

# # Read UserPermission.AdminCouldManager (bool)
execute as @e[tag=db:io,scores={db:states=4}] run scoreboard players operation @s home_system:home_owner_uid = @s db:io
scoreboard players set @e[tag=db:io,scores={db:states=4}] db:io 0
scoreboard players set @e[tag=db:io,scores={db:states=4}] db:power_number 1
scoreboard players set @e[tag=db:io,scores={db:states=4}] db:move_offset_x -23
scoreboard players set @e[tag=db:io,scores={db:states=4}] db:move_offset_z 2
scoreboard players set @e[tag=db:io,scores={db:states=4}] db:io_count 1
tag @e[tag=db:io,scores={db:states=4}] add db:io_read
scoreboard players set @e[tag=db:io,scores={db:states=4}] db:states 5
# Pseudo-code: CALL "Read UserPermission.CreativeCouldManager"
# Pseudo-code: execute unless entity @e[tag=db:io,scores={db:states=3}] run "STOP Read UserPermission.AdminCouldManager"

# # Read UserPermission.CreativeCouldManager (bool)
execute as @e[tag=db:io,scores={db:states=6,db:io=1}] run tag @s add home_system:admin_could_manager
scoreboard players set @e[tag=db:io,scores={db:states=6}] db:io 0
scoreboard players set @e[tag=db:io,scores={db:states=6}] db:power_number 1
scoreboard players set @e[tag=db:io,scores={db:states=6}] db:io_count 1
tag @e[tag=db:io,scores={db:states=6}] add db:io_read
scoreboard players set @e[tag=db:io,scores={db:states=6}] db:states 7
# Pseudo-code: CALL "Read UserPermission.TrustedPlayerCouldManager"
# Pseudo-code: execute unless entity @e[tag=db:io,scores={db:states=5}] run "STOP Read UserPermission.CreativeCouldManager"

# # Read UserPermission.TrustedPlayerCouldManager (bool)
execute as @e[tag=db:io,scores={db:states=8,db:io=1}] run tag @s add home_system:creative_could_manager
scoreboard players set @e[tag=db:io,scores={db:states=8}] db:io 0
scoreboard players set @e[tag=db:io,scores={db:states=8}] db:power_number 1
scoreboard players set @e[tag=db:io,scores={db:states=8}] db:io_count 1
tag @e[tag=db:io,scores={db:states=8}] add db:io_read
scoreboard players set @e[tag=db:io,scores={db:states=8}] db:states 9
# Pseudo-code: CALL "Search UserPermission.PlayerUID"
# Pseudo-code: execute unless entity @e[tag=db:io,scores={db:states=7}] run "STOP Read UserPermission.TrustedPlayerCouldManager"

# # Search UserPermission.PlayerUID (uint16)
execute as @e[tag=db:io,scores={db:states=10,db:io=1}] run tag @s add home_system:trusted_player_could_manager