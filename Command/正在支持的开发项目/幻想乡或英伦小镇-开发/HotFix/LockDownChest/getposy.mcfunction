execute @e[tag=ldc:getposy] ~ ~ ~ summon minecraft:armor_stand ldc:PosEntity ~ ~32768.5 ~
execute @e[tag=ldc:getposy] ~ ~32768.5 ~ tag @e[type=minecraft:armor_stand,name=ldc:PosEntity,r=3,c=1,tag=""] add ldc:PosEntity
execute @e[tag=ldc:PosEntity] ~ ~ ~ scoreboard players set @s ldc:posuid -32767
execute @e[tag=ldc:getposy] ~ ~32768.5 ~ scoreboard players operation @e[tag=ldc:PosEntity,r=3,c=1,scores={ldc:posuid=-32767}] ldc:posuid = @s ldc:posuid
#summon_entity/entities_and_tag(s)_add_and_score(s)_operation_=



execute @e[tag=ldc:PosEntity] ~ ~ ~ tag @s[y=32256,dy=510] add ldc:posy_fu
execute @e[tag=ldc:posy_fu] ~ ~ ~ tp ~ ~511.0 ~
#fix_to_+



execute @e[tag=ldc:PosEntity] ~ ~ ~ scoreboard players set @s ldc:posy 0
#prepare



execute @e[tag=ldc:PosEntity] ~ 32767.0 ~ scoreboard players add @s[rm=256.0] ldc:posy 256
execute @e[tag=ldc:PosEntity] ~ 32767.0 ~ execute @s[rm=256.0] ~ ~ ~ tp ~ ~-256.0 ~

execute @e[tag=ldc:PosEntity] ~ 32767.0 ~ scoreboard players add @s[rm=128.0] ldc:posy 128
execute @e[tag=ldc:PosEntity] ~ 32767.0 ~ execute @s[rm=128.0] ~ ~ ~ tp ~ ~-128.0 ~

execute @e[tag=ldc:PosEntity] ~ 32767.0 ~ scoreboard players add @s[rm=64.0] ldc:posy 64
execute @e[tag=ldc:PosEntity] ~ 32767.0 ~ execute @s[rm=64.0] ~ ~ ~ tp ~ ~-64.0 ~

execute @e[tag=ldc:PosEntity] ~ 32767.0 ~ scoreboard players add @s[rm=32.0] ldc:posy 32
execute @e[tag=ldc:PosEntity] ~ 32767.0 ~ execute @s[rm=32.0] ~ ~ ~ tp ~ ~-32.0 ~

execute @e[tag=ldc:PosEntity] ~ 32767.0 ~ scoreboard players add @s[rm=16.0] ldc:posy 16
execute @e[tag=ldc:PosEntity] ~ 32767.0 ~ execute @s[rm=16.0] ~ ~ ~ tp ~ ~-16.0 ~

execute @e[tag=ldc:PosEntity] ~ 32767.0 ~ scoreboard players add @s[rm=8.0] ldc:posy 8
execute @e[tag=ldc:PosEntity] ~ 32767.0 ~ execute @s[rm=8.0] ~ ~ ~ tp ~ ~-8.0 ~

execute @e[tag=ldc:PosEntity] ~ 32767.0 ~ scoreboard players add @s[rm=4.0] ldc:posy 4
execute @e[tag=ldc:PosEntity] ~ 32767.0 ~ execute @s[rm=4.0] ~ ~ ~ tp ~ ~-4.0 ~

execute @e[tag=ldc:PosEntity] ~ 32767.0 ~ scoreboard players add @s[rm=2.0] ldc:posy 2
execute @e[tag=ldc:PosEntity] ~ 32767.0 ~ execute @s[rm=2.0] ~ ~ ~ tp ~ ~-2.0 ~

execute @e[tag=ldc:PosEntity] ~ 32767.0 ~ scoreboard players add @s[rm=1.0] ldc:posy 1
execute @e[tag=ldc:PosEntity] ~ 32767.0 ~ execute @s[rm=1.0] ~ ~ ~ tp ~ ~-1.0 ~
#y



execute @e[tag=ldc:posy_fu] ~ ~ ~ scoreboard players remove @s ldc:posy 511
#get_right_score(s)



scoreboard players reset * ldc:math
 #Need to Translate(translate_0.mcfunction)
execute @e[tag=ldc:PosEntity] ~ ~ ~ function BeSureMaster
#BeSureMaster

execute @e[tag=ldc:getposy] ~ ~ ~ scoreboard players set @s ldc:posy -32767
execute @e[tag=ldc:PosEntity] ~ ~ ~ scoreboard players operation @e[c=1,tag=ldc:getposy,scores={ldc:posy=-32767},r=3] ldc:posy = @s ldc:posy
#score(s)_operation_=



execute @e[tag=ldc:getposy,c=1] ~ ~ ~ tp @e[tag=ldc:PosEntity] ~ -32767.0 ~
execute @e[tag=ldc:PosEntity] ~ ~ ~ kill @s
execute @e[tag=ldc:getposy] ~ ~ ~ tag @s remove ldc:getposy
#clean_entity/entities_and_tag(s)_remove