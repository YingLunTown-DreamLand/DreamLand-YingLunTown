# func otherDimensionTest() {
# 	return
# }

# Install
# in the commandblockplace, as a repeating function

# Delay
# 20 Ticks



execute @a[x=71,y=105,z=-96,r=450.0] ~ ~ ~ tag @s add mainBuild:isIn
execute @a[tag=!mainBuild:isIn,scores={mainBuild:time=..2147483647}] ~ ~ ~ tag @s add mainBuild:effectRemoveRequest
execute @a[tag=mainBuild:isIn] ~ ~ ~ tag @s remove mainBuild:isIn
# 考虑部分玩家可能会去往非主世界维度，因此专门进行这样的处理