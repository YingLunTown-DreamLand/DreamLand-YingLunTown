# func main() {
# 	return
# }

# Install
# in the commandblockplace, as a repeating function



execute @a[x=71,y=105,z=-96,r=400.0] ~ ~ ~ scoreboard players add @s mainBuild:time 0
execute @a[scores={mainBuild:time=0}] ~ ~ ~ tag @s add mainBuild:effectAddRequest
function effectAddRequest

execute @a[scores={mainBuild:time=0..99}] ~ ~ ~ scoreboard players add @s mainBuild:time 1
execute @a[scores={mainBuild:time=100..}] ~ ~ ~ scoreboard players reset @s mainBuild:time

execute @a[x=71,y=105,z=-96,rm=450.0,scores={mainBuild:time=..2147483647}] ~ ~ ~ tag @s add mainBuild:effectRemoveRequest
function effectRemoveRequest