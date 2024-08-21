execute @a[x=69,y=64,z=-84,r=1,c=1,scores={money=100..}] ~~~ title @s title §l成功发送请求,等待玩家同意
execute @a[x=69,y=64,z=-84,r=1,c=1,scores={money=100..}] ~~~ clone 69 66 -80 69 66 -80 69 65 -83
execute @a[x=69,y=64,z=-84,r=1,c=1,scores={money=100..}] ~~~ tellraw @a {"rawtext":[{"text":"§l玩家§e"},{"selector":"@s"},{"text":"§f发送请求,§b抬头跳跃§f接受请求"}]}
execute @a[x=69,y=64,z=-84,r=1,c=1,scores={money=100..}] ~~~ tag @s add tp
execute @a[x=69,y=64,z=-84,r=1,c=1,scores={money=100..}] ~~~ scoreboard players remove @s money 100