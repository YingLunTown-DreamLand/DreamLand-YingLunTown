tag @a[x=69,y=64,z=-84,r=1,c=1] add teleport_request:iter
tag @a[tag=teleport_request:iter,scores={money=100..}] add teleport_request:check_pass

scoreboard players set @a[tag=teleport_request:iter] general:math 0
execute as @a[tag=teleport_request:iter] run scoreboard players operation @s general:math = @s money

scoreboard players remove @a[tag=teleport_request:check_pass] money 100
execute as @a[tag=teleport_request:check_pass] run clone 69 66 -80 69 66 -80 69 65 -83
tag @a[tag=teleport_request:check_pass] add tp

title @a[tag=teleport_request:check_pass] title §l成功发送请求,等待玩家同意
execute as @a[tag=teleport_request:check_pass] run tellraw @a {"rawtext":[{"text":"§l玩家§e"},{"selector":"@s"},{"text":"§f发送请求,§b抬头跳跃§f接受请求"}]}

execute as @a[tag=teleport_request:iter,tag=teleport_request:check_pass] run tellraw @a[tag=core:bot] {"rawtext":[{"text":"TeleportRequestEvent(4)|"},{"selector":"@s"},{"text":",true,"},{"text":"100,"},{"score":{"objective":"general:math","name":"@s"}},{"text":","},{"score":{"objective":"money","name":"@s"}}]}
execute as @a[tag=teleport_request:iter,tag=!teleport_request:check_pass] run tellraw @a[tag=core:bot] {"rawtext":[{"text":"TeleportRequestEvent(4)|"},{"selector":"@s"},{"text":",false,"},{"text":"100,"},{"score":{"objective":"general:math","name":"@s"}},{"text":","},{"score":{"objective":"money","name":"@s"}}]}

scoreboard players reset @a[tag=teleport_request:iter] general:math
tag @a[tag=teleport_request:check_pass] remove teleport_request:check_pass
tag @a[tag=teleport_request:iter] remove teleport_request:iter