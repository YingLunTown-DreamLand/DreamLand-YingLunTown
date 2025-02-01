# trigger_button 是安置在家园中的命令方块。
# 玩家通过这些触发这些命令方块，
# 从而创建身份验证请求，
# 并最终被获准进入家园





tag @a[c=1] add home_system:making_auth
execute as @a[tag=home_system:making_auth] if score @e[tag=db:io] home_system:pointer_owner = @s uid run tag @s add home_system:multiple_auth_request



tellraw @a[tag=home_system:multiple_auth_request] {"rawtext":[{"text":"§f[§a家园系统§f] §e您的验证请求正在执行§f，§e请勿重复提交"}]}
execute as @a[tag=home_system:multiple_auth_request] at @s run playsound random.orb @s ~ ~ ~ 1.00 1.00 1.00
tag @a[tag=home_system:multiple_auth_request] remove home_system:making_auth
tag @a[tag=home_system:multiple_auth_request] remove home_system:multiple_auth_request



# Just for init IO pointer,
# you should **NERVER** call,
# and use autal value instead
execute as @a[tag=home_system:making_auth] run function database/debug_io_new

# x=0,y=-60,z=0 should replace
# to the actual value.
# e.g. x=~t1,y=~t2,z=~t3
scoreboard players operation @e[tag=db:io,x=0,y=-60,z=0,c=1] home_system:pointer_owner = @a[tag=home_system:making_auth,c=1] uid

# This is used to call auth
# system to start to running.
# You should replace 0 300 0
# to the actual value.
setblock 0 300 0 minecraft:redstone_block

tag @a[tag=home_system:making_auth] remove home_system:making_auth