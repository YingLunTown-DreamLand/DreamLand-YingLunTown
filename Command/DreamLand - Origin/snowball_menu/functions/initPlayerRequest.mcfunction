# initPlayerRequest() -> None

# Description
# 当一个玩家请求开启菜单时会调用当前函数

# Install
# in the commandblockplace, as a repeating function but controled by redstone block

# Start Condition
# testfor @e[type=minecraft:snowball,c=1] == Success





execute @e[type=minecraft:snowball] ~ ~ ~ tag @p[r=1.4] add snowballMenu:initPlayerRequest_test
execute @a[tag=snowballMenu:initPlayerRequest_test] ~ ~ ~ tag @s[rx=90,rxm=60,tag=!snowballMenu:using] add snowballMenu:initPlayerRequest_testPass
# 这么做是为了更精确的检测投掷雪球的玩家

execute @a[tag=snowballMenu:initPlayerRequest_testPass,m=!creative] ~ ~ ~ give @s minecraft:snowball
# 雪球用了肯定需要还给别人吧

execute @a[tag=snowballMenu:initPlayerRequest_testPass] ~ ~ ~ tp ~ ~ ~ ~ 90.0
execute @a[tag=snowballMenu:initPlayerRequest_testPass] ~ ~ ~ playsound note.harp @s ~ ~ ~ 1.00 1.00 1.00
execute @a[tag=snowballMenu:initPlayerRequest_testPass] ~ ~ ~ scoreboard players operation @s menu:refreshTime = refreshTime menu:settings
execute @a[tag=snowballMenu:initPlayerRequest_testPass] ~ ~ ~ scoreboard players operation @s menu:waitingTime = waitingTime menu:settings
execute @a[tag=snowballMenu:initPlayerRequest_testPass] ~ ~ ~ tag @s add snowballMenu:using
# 初始化

execute @a[tag=snowballMenu:initPlayerRequest_testPass] ~ ~ ~ tag @s remove snowballMenu:initPlayerRequest_testPass
execute @a[tag=snowballMenu:initPlayerRequest_test] ~ ~ ~ tag @s remove snowballMenu:initPlayerRequest_test
# 善后处理