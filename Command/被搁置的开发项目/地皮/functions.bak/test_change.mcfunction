scoreboard objectives add uw:math dummy
scoreboard objectives add uw:actionbar dummy
execute @a[tag=uw:user] ~ ~ ~ scoreboard players operation @s uw:math -= @s uw:ry
execute @a[tag=uw:user,scores={uw:math=!0,uw:actionbar=0..8}] ~ ~ ~ scoreboard players add @s uw:actionbar 1
execute @a[tag=uw:user,scores={uw:math=!0,uw:actionbar=0..8}] ~ ~ ~ playsound random.click @s ~ ~ ~ 1 1 1
execute @a[tag=uw:user] ~ ~ ~ scoreboard players operation @s uw:math = @s uw:ry
#test_change