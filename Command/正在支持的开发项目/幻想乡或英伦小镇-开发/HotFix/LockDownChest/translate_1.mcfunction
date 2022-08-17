scoreboard players reset * ldc:math
scoreboard players set num ldc:statistic 0
execute @a[tag=ldc:unlock] ~ ~ ~ scoreboard players add num ldc:statistic 1
#1
summon minecraft:armor_stand ldc:unlock_helper
tag @e[type=minecraft:armor_stand,y=~-1,name=ldc:unlock_helper,c=1,r=3,tag=""] add ldc:UnlockHelper
#2
scoreboard players operation @e[tag=ldc:UnlockHelper] ldc:statistic = num ldc:statistic
#3
#prepare
execute @a[tag=ldc:unlock] ~ ~ ~ tag @s add ldc:UnlockRandomList
#非递归部分(非自闭链)

tag @a[c=1,tag=ldc:UnlockRandomList] add ldc:UnlockRandom
#1
execute @a[tag=ldc:UnlockRandom] ^ ^ ^5.0 execute @e[tag=ldc:locked,y=-30000000,dy=60000000] ~ ~ ~ scoreboard players operation @s ldc:math = @s ldc:uid
execute @a[tag=ldc:UnlockRandom] ^ ^ ^5.0 scoreboard players operation @e[tag=ldc:locked,y=-30000000,dy=60000000] ldc:math -= @s uid
execute @a[tag=ldc:UnlockRandom] ^ ^ ^5.0 tag @e[tag=ldc:locked,y=-30000000,dy=60000000,scores={ldc:math=0}] add ldc:choose
#2
execute @e[tag=ldc:choose] ~ ~ ~ scoreboard players operation @s ldc:math = @s ldc:posy
execute @a[tag=ldc:UnlockRandom] ~ ~ ~ scoreboard players operation @e[tag=ldc:choose] ldc:math -= @s ldc:posy
#3
execute @e[tag=ldc:choose,scores={ldc:math=0}] ~ ~ ~ tag @a[tag=ldc:UnlockRandom] add ldc:UnlockSuccessful
execute @e[tag=ldc:choose,scores={ldc:math=0}] ~ ~ ~ tp ~ -32767.0 ~
execute @e[tag=ldc:choose,scores={ldc:math=0}] ~ ~ ~ kill @s
execute @e[tag=ldc:choose] ~ ~ ~ tag @s remove ldc:choose
#4
execute @e[tag=ldc:UnlockRandom] ~ ~ ~ tag @s remove ldc:UnlockRandomList
execute @e[tag=ldc:UnlockRandom] ~ ~ ~ tag @s remove ldc:UnlockRandom
execute @e[tag=ldc:UnlockHelper] ~ ~ ~ scoreboard players remove @s ldc:statistic 1
#5
 execute @e[tag=ldc:UnlockHelper,scores={ldc:statistic=..0}] ~ ~ ~ setblock X Y Z minecraft:chain_command_block 1
 execute @e[tag=ldc:UnlockHelper,scores={ldc:statistic=1..}] ~ ~ ~ clone x y z x' y' z' x'' y'' z''
#6
#递归部分(自闭链)

execute @e[tag=ldc:UnlockHelper] ~ ~ ~ kill @s
#非递归部分(非自闭链)