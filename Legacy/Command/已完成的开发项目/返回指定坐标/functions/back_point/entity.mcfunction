execute @s[y=512,dy=-300000000,tag="pos_return:sound_for_success/entity"] ~ ~ ~ tp ~ 32767.0 ~
tag @s[y=512,dy=-30000000,tag="pos_return:sound_for_success/entity"] remove "pos_return:sound_for_success/entity"
#1

execute @s[y=512,dy=-300000000] ~ ~ ~ tp ~ 524288.0 ~
execute @s[y=524287.0,dy=300000000] ~ ~ ~ kill @s
#2

scoreboard players remove @a[tag="pos_return:sound_for_success/player",y=-30000000,dy=600000000,x=~-8,dx=16,z=~-8,dz=16] p_r:sound 1
execute @a[tag="pos_return:sound_for_success/player",scores={p_r:sound=..0}] ~ ~ ~ playsound random.levelup @s ~ ~ ~ 1 1 1
execute @a[tag="pos_return:sound_for_success/player",scores={p_r:sound=..0}] ~ ~ ~ kill @e[tag=pos_return:sound_for_success,y=-30000000,dy=600000000,x=~-8,dx=16,z=~-8,dz=16,c=1]
execute @a[tag="pos_return:sound_for_success/player",scores={p_r:sound=..0}] ~ ~ ~ scoreboard players set @s p_r:sound 0
execute @a[tag="pos_return:sound_for_success/player",scores={p_r:sound=..0}] ~ ~ ~ tag @s remove "pos_return:sound_for_success/player"
#3

scoreboard players add @s p_r:entity_time 1
execute @s[scores={p_r:entity_time=100..}] ~ ~ ~ kill @s
#4
#entity