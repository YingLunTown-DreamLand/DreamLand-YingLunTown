scoreboard objectives add health dummy
scoreboard objectives add gh:test dummy
#scoreboard_add

tickingarea add 0 0 0 0 0 0 GetHealth
#prepare

execute @e[family=!mob,tag=gh:request,c=1] ~ ~ ~ function False
#False
execute @e[family=mob,tag=gh:request,c=1] ~ ~ ~ function True
#True
scoreboard players add time health 0
summon minecraft:armor_stand gh:helper
scoreboard players operation @e[type=minecraft:armor_stand,name=gh:helper,c=1,r=3] health = time health
execute @e[type=minecraft:armor_stand,name=gh:helper,c=1,r=3,scores={health=1..}] ~ ~ ~ scoreboard players remove time health 1
execute @e[type=minecraft:armor_stand,name=gh:helper,c=1,r=3,scores={health=..1}] ~ ~ ~ execute @e[family=mob,tag=gh:request,c=1] ~ ~ ~ function GetHealth
execute @e[type=minecraft:armor_stand,name=gh:helper,c=1,r=3] ~ ~ ~ kill @s
#GetHealth

kill @e[type=minecraft:item,x=0.0,y=0.0,z=0.0,r=3,rx=0,rxm=0,ry=0,rym=0]
#clean_entity/entities



#Author:Happy2018new
#Version:3.0
#Type:即兴·测定生物血量·已封装的api/system