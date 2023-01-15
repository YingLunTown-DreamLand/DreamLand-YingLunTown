# run() -> None

# Install
# in the commandblockplace, as a repeating function





scoreboard objectives add mainBuild:time dummy
# 添加计分板



execute @a[x=0.0,y=0.0,z=0.0,r=300.0] ~ ~ ~ scoreboard players add @s mainBuild:time 0
execute @a[scores={mainBuild:time=0}] ~ ~ ~ tag @s add mainBuild:effectAddRequest
# 初始化
execute @a[scores={mainBuild:time=0..99}] ~ ~ ~ scoreboard players add @s mainBuild:time 1
execute @a[scores={mainBuild:time=100..}] ~ ~ ~ scoreboard players reset @s mainBuild:time
# 添加分数以模拟时间计时
execute @a[x=0.0,y=0.0,z=0.0,r=350.0] ~ ~ ~ tag @s add mainBuild:effectRemoveRequest
# 为主城之外的玩家清理药效