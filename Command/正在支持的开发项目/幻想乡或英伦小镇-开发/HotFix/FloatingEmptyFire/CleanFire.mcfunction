scoreboard objectives add dimension dummy
#添加计分板



execute @e[tag=fef:entity] ~ ~ ~ tp @s[y=512,dy=-30000000] ~ -32767.0 ~
execute @e[tag=fef:entity] ~ ~ ~ kill @s[y=512,dy=-30000000]
#清理不需要的辅助实体



execute @a[tag=fef:list,scores={fef:RunTime=0}] ~ ~ ~ execute @e[tag=fef:FireEntity,x=~-15.0,y=~32752.0,z=~-15.0,dx=30,dy=30,dz=30] ~ ~ ~ fill ~ ~-32767.0 ~ ~ ~-32767.0 ~ minecraft:air 0 replace minecraft:fire
execute @a[tag=fef:list,scores={fef:RunTime=0}] ~ ~ ~ summon minecraft:armor_stand fef:helper ~ ~ ~
execute @a[tag=fef:list,scores={fef:RunTime=0}] ~ ~ ~ tag @e[type=minecraft:armor_stand,name=fef:helper,c=1,tag=""] add fef:helper
#生成实体并添加标签



scoreboard players set @e[tag=fef:helper] dimension -1
#初始化分数

execute @e[tag=fef:helper,scores={dimension=-1},c=1] ~ ~ ~ tag @s add fef:GetDimension
execute @e[tag=fef:GetDimension] ~ ~ ~ locate fortress
 scoreboard players set @e[tag=fef:GetDimension] dimension 1
 execute @e[tag=fef:GetDimension] ~ ~ ~ scoreboard players set @e[rm=0,tag=fef:helper] dimension 1
tag @e[tag=fef:GetDimension] remove fef:GetDimension
#下界

#确定维度是否为下界



execute @e[tag=fef:helper,scores={dimension=!1}] ~ ~ ~ tp @s[y=241,dy=512] ~ 240.5 ~
execute @e[tag=fef:helper,scores={dimension=1}] ~ ~ ~ tp @s[y=113,dy=512] ~ 112.5 ~
execute @e[tag=fef:helper] ~ ~ ~ tp @s[y=14,dy=-12] ~ 15.5 ~
#坐标修正



tag @e[type=minecraft:item] add fef:item
execute @a[tag=fef:helper] ~ ~ ~ fill ~15.0 ~15.0 ~15.0 ~-15.0 ~-15.0 ~-15.0 minecraft:skull 0 replace minecraft:fire -1
execute @a[tag=fef:helper] ~ ~ ~ fill ~15.0 ~15.0 ~15.0 ~-15.0 ~-15.0 ~-15.0 minecraft:air 0 replace minecraft:skull 0
#替换火源



execute @e[type=minecraft:item,tag=""] ~ ~ ~ detect ~ ~-1.0 ~ minecraft:air -1 setblock ~ ~ ~ minecraft:air 0
execute @e[type=minecraft:item,tag=""] ~ ~ ~ detect ~ ~ ~ minecraft:fire -1 summon minecraft:armor_stand fef:FireEntity ~ ~32767.0 ~
execute @e[type=minecraft:item,tag=""] ~ ~ ~ detect ~ ~ ~ minecraft:fire -1 tag @e[y=~32767.0,type=minecraft:armor_stand,name=fef:FireEntity,c=1,tag=""] add fef:FireEntity
execute @e[type=minecraft:item,tag=""] ~ ~ ~ detect ~ ~ ~ minecraft:fire -1 tag @e[y=~32767.0,type=minecraft:armor_stand,name=fef:FireEntity,c=1,tag=!fef:entity] add fef:entity
#移除非正常火源并标记正常火源



execute @e[type=minecraft:item,tag=""] ~ ~ ~ kill @s
execute @e[tag=fef:helper] ~ ~ ~ tp ~ -32767.0 ~
execute @e[tag=fef:helper] ~ ~ ~ kill @s
execute @a[tag=fef:list,scores={fef:RunTime=0}] ~ ~ ~ execute @e[tag=fef:FireEntity,x=~-15.0,y=~32752.0,z=~-15.0,dx=30,dy=30,dz=30] ~ ~ ~ setblock ~ ~-32767.0 ~ minecraft:fire 0
#清理实体和重放置火焰



execute @a[tag=fef:list,scores={fef:RunTime=0}] ~ ~ ~ summon minecraft:armor_stand fef:entity ~ ~32767.0 ~
execute @a[tag=fef:list,scores={fef:RunTime=0}] ~ ~ ~ tag @e[type=minecraft:armor_stand,name=fef:entity,c=1,tag="",y=~32767.0] add fef:entity
execute @a[tag=fef:list,scores={fef:RunTime=0}] ~ ~ ~ scoreboard players set @s fef:RunTime 20
execute @a[tag=fef:list,scores={fef:RunTime=20}] ~ ~ ~ tag @s remove fef:list
execute @e[type=minecraft:item,tag=fef:item] ~ ~ ~ tag @s remove fef:item
#善后