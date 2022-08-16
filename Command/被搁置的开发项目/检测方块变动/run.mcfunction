scoreboard objectives add t_b_c:uid dummy
scoreboard objectives add t_b_c:mirror dummy
scoreboard objectives add t_b_c:blocks dummy
scoreboard objectives add t_b_c:b_s dummy
scoreboard objectives add t_b_c:b_s_0 dummy
#start
function uid
#uid
execute @a ~ ~32767 ~ summon minecraft:armor_stand test_blocks_changed
execute @a ~ ~32767 ~ tag @e[name=test_blocks_changed,type=minecraft:armor_stand,dx=0,dy=0,dz=0] add t_b_c
scoreboard players add @e[tag=t_b_c] t_b_c:uid 0
execute @a ~ ~32767 ~ scoreboard players operation @e[tag=t_b_c,c=1,dx=0,dy=0,dz=0,scores={t_b_c:uid=0}] t_b_c:uid = @s uid
#gave_entities_uid
execute @e[tag=t_b_c,tag=!t_b_c:second,c=1] ~ ~ ~ scoreboard players reset * t_b_c:mirror 
execute @e[tag=t_b_c,tag=!t_b_c:second] ~ ~ ~ scoreboard players set @s t_b_c:mirror -1
execute @e[tag=t_b_c,tag=!t_b_c:second] ~ ~ ~ scoreboard players operation @s t_b_c:mirror -= @e[scores={t_b_c:mirror=-1},tag=t_b_c,tag=!t_b_c:second,dx=0,dy=0,dz=0] t_b_c:mirror
execute @e[tag=t_b_c,tag=!t_b_c:second,scores={t_b_c:mirror=0}] ~ ~ ~ kill @e[tag=t_b_c,tag=!t_b_c:second,dx=0,dy=0,dz=0,scores={t_b_c:mirror=!0}] 
#kill_more_entities
execute @e[tag=t_b_c] ~ ~ ~ summon minecraft:armor_stand t_b_c:blocks ~ ~ ~
execute @e[tag=t_b_c] ~ ~ ~ summon minecraft:armor_stand t_b_c:blocks ~ ~1 ~
execute @e[tag=t_b_c] ~ ~ ~ summon minecraft:armor_stand t_b_c:blocks ~ ~2 ~
execute @e[tag=t_b_c] ~ ~ ~ summon minecraft:armor_stand t_b_c:blocks ~ ~3 ~
execute @e[tag=t_b_c] ~ ~ ~ summon minecraft:armor_stand t_b_c:blocks ~ ~4 ~
execute @e[tag=t_b_c] ~ ~ ~ summon minecraft:armor_stand t_b_c:blocks ~ ~5 ~
execute @e[tag=t_b_c] ~ ~ ~ summon minecraft:armor_stand t_b_c:blocks ~ ~6 ~
execute @e[tag=t_b_c] ~ ~ ~ summon minecraft:armor_stand t_b_c:blocks ~ ~-1 ~
execute @e[tag=t_b_c] ~ ~ ~ summon minecraft:armor_stand t_b_c:blocks ~ ~-2 ~
execute @e[tag=t_b_c] ~ ~ ~ summon minecraft:armor_stand t_b_c:blocks ~ ~-3 ~
execute @e[tag=t_b_c] ~ ~ ~ summon minecraft:armor_stand t_b_c:blocks ~ ~-4 ~
execute @e[tag=t_b_c] ~ ~ ~ summon minecraft:armor_stand t_b_c:blocks ~ ~-5 ~
execute @e[tag=t_b_c] ~ ~ ~ summon minecraft:armor_stand t_b_c:blocks ~ ~-6 ~
execute @e[tag=t_b_c] ~ ~ ~ tag @e[name=t_b_c:blocks,type=minecraft:armor_stand,dx=0,dy=12,dz=0,y=~-6] add t_b_c:blocks
execute @e[tag=t_b_c,c=1] ~ ~ ~ scoreboard players reset * t_b_c:mirror
execute @e[tag=t_b_c,c=1] ~ ~ ~ scoreboard players set @e[tag=t_b_c:blocks] t_b_c:mirror -1
execute @e[tag=t_b_c:blocks] ~ ~ ~ scoreboard players operation @s t_b_c:mirror -= @a[tag=t_b_c:blocks,scores={t_b_c:mirror=-1},dx=0,dy=0,dz=0] t_b_c:mirror
execute @e[tag=t_b_c:blocks,scores={t_b_c:mirror=0}] ~ ~ ~ kill @e[dx=0,dy=0,dz=0,tag=t_b_c:blocks,scores={t_b_c:mirror=!0}]
execute @e[tag=t_b_c:blocks] ~ ~-32767 ~ function test_blocks
#test_blocks
execute @e[tag=t_b_c] ~ ~ ~ scoreboard players set @s t_b_c:b_s 0
execute @e[tag=t_b_c] ~ ~ ~ scoreboard players operation @s t_b_c:b_s += @e[tag=t_b_c:blocks,dx=0,dy=12,dz=0,y=~-6] t_b_c:blocks
execute @e[tag=t_b_c,tag=!t_b_c:second] ~ ~ ~ scoreboard players operation @s t_b_c:b_s_0 = @s t_b_c:b_s
execute @e[tag=t_b_c:blocks] ~ ~ ~ kill @s
execute @e[tag=t_b_c,tag=t_b_c:second] ~ ~ ~ scoreboard players operation @s t_b_c:b_s -= @s t_b_c:b_s_0
execute @e[tag=t_b_c,tag=t_b_c:second,scores={t_b_c:b_s=1..}] ~ ~ ~ function posy 