execute @a[tag=ldc:using] ^ ^ ^5.0 detect ~ ~2.5 ~ minecraft:allow -1 execute @s ^ ^ ^5.0 detect ~ ~0.5 ~ minecraft:deny -1 tag @s add ldc:unlock
#get_situation

execute @a[tag=!ldc:unlock,tag=ldc:using] ~ ~ ~ summon minecraft:armor_stand ldc:locked ^ ^ ^5.0
execute @a[tag=!ldc:unlock,tag=ldc:using] ^ ^ ^5.0 tag @e[type=minecraft:armor_stand,name=ldc:locked,tag="",c=1,r=3] add ldc:locked_spawn
#summon_entity/entities_and_tag(s)_add

execute @e[tag=ldc:locked_spawn] ~ ~ ~ scoreboard players add @s ldc:uid 0
execute @a[tag=!ldc:unlock,tag=ldc:using] ^ ^ ^5.0 scoreboard players operation @e[tag=ldc:locked_spawn,c=1,r=3,scores={ldc:uid=0}] ldc:uid = @s uid
#score(s)_operation_=

execute @e[tag=ldc:locked_spawn] ~ ~ ~ tag @s add ldc:getposy
#1
execute @a[tag=ldc:unlock] ~ ~ ~ summon minecraft:armor_stand ldc:entity ^ ^ ^5.0
execute @a[tag=ldc:unlock] ^ ^ ^5.0 tag @e[type=minecraft:armor_stand,name=ldc:entity,tag="",c=1,r=3] add ldc:entity
execute @e[tag=ldc:entity] ~ ~ ~ tag @s add ldc:getposy
#2
execute @e[tag=ldc:getposy] ~ ~ ~ scoreboard players reset * ldc:posuid
execute @e[tag=ldc:getposy] ~ ~ ~ scoreboard players set @s ldc:posuid -1
execute @e[tag=ldc:getposy] ~ ~ ~ scoreboard players operation @s ldc:posuid -= @e[tag=ldc:getposy,scores={ldc:posuid=-1}] ldc:posuid
#get_RandomId
function getposy
#getposy
#3
execute @e[tag=ldc:locked_spawn] ~ ~ ~ setblock ~ ~2.5 ~ minecraft:allow
execute @e[tag=ldc:locked_spawn] ~ ~ ~ setblock ~ ~0.5 ~ minecraft:deny
execute @e[tag=ldc:locked_spawn] ~ ~ ~ tp ~ 32767.0 ~
execute @e[tag=ldc:locked_spawn] ~ ~ ~ tag @s add ldc:locked
execute @e[tag=ldc:locked_spawn] ~ ~ ~ tag @s remove ldc:locked_spawn
execute @a[tag=!ldc:unlock,tag=ldc:using] ~ ~ ~ tellraw @s {"rawtext":[{"text":"§a已成功锁定目标箱子§f！"}]}
execute @a[tag=!ldc:unlock,tag=ldc:using] ~ ~ ~ playsound random.levelup @s ~ ~ ~ 1.00 1.00 1.00
#4
execute @a[tag=ldc:unlock] ^ ^ ^5.0 scoreboard players operation @s ldc:posy = @e[tag=ldc:entity] ldc:posy
execute @e[tag=ldc:entity] ~ ~ ~ tp ~ -32767.0 ~
execute @e[tag=ldc:entity] ~ ~ ~ kill @s
execute @a[tag=ldc:unlock] ~ ~ ~ scoreboard players reset * ldc:math
 #Need to Translate(translate_1.mcfunction)
execute @a[tag=ldc:unlock] ^ ^ ^5.0 function GetRightEntity
execute @a[tag=ldc:UnlockSuccessful] ^ ^ ^5.0 tag @e[type=minecraft:item,y=~0.5,dy=2] add ldc:unkill
execute @a[tag=ldc:UnlockSuccessful] ^ ^ ^5.0 setblock ~ ~2.5 ~ air 0 destroy
execute @a[tag=ldc:UnlockSuccessful] ^ ^ ^5.0 setblock ~ ~0.5 ~ air 0 destroy
execute @a[tag=ldc:UnlockSuccessful] ^ ^ ^5.0 kill @e[type=minecraft:item,y=~0.5,dy=2,tag=""]
execute @e[tag=ldc:unkill] ~ ~ ~ tag @s remove ldc:unkill
execute @a[tag=ldc:UnlockSuccessful] ~ ~ ~ tellraw @s {"rawtext":[{"text":"§a您已成功解锁该箱子§f！"}]}
execute @a[tag=!ldc:UnlockSuccessful,tag=ldc:unlock] ~ ~ ~ tellraw @s {"rawtext":[{"text":"§c未能成功在该箱子执行此动作§f，§c因为您不是该箱子的上锁者§f。"}]}
execute @a[tag=ldc:UnlockSuccessful] ~ ~ ~ playsound random.levelup @s ~ ~ ~ 1.00 1.00 1.00
execute @a[tag=!ldc:UnlockSuccessful,tag=ldc:unlock] ~ ~ ~ playsound random.break @s ~ ~ ~ 1.00 1.00 1.00
execute @a[tag=ldc:UnlockSuccessful] ~ ~ ~ tag @s remove ldc:UnlockSuccessful
#5
#execute_commands

execute @a[tag=ldc:unlock] ~ ~ ~ tag @s remove ldc:unlock
execute @a[tag=ldc:using] ~ ~ ~ tag @s remove ldc:using
#tag(s)_remove