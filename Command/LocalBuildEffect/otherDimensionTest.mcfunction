# otherDimensionTest() -> None

# Install
# in the commandblockplace, as a repeating function

# Delay
# delay ticks = 20 game ticks



execute @a[x=0.0,y=0.0,z=0.0,r=350.0] ~ ~ ~ tag @s add mainBuild:isIn
execute @a[tag=!mainBuild:isIn,scores={mainBuild:time=..2147483647}] ~ ~ ~ tag @s add mainBuild:effectRemoveRequest
execute @a[tag=mainBuild:isIn] ~ ~ ~ tag @s remove mainBuild:isIn
# 考虑部分玩家可能会去往非主世界维度，因此专门进行这样的处理