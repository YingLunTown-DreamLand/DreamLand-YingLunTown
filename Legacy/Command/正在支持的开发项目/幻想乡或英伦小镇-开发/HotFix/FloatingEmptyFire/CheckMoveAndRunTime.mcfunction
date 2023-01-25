tag @a[tag=fef:unmove] remove fef:unmove
execute @e[tag=fef:entity] ~ ~ ~ tag @a[y=~-32767.0,dx=0,dy=0,dz=0] add fef:unmove
tag @a[tag=!fef:unmove] add fef:list
tag @a[tag=fef:unmove] remove fef:unmove
#筛选出已移动的玩家
#检验玩家是否移动



scoreboard objectives add fef:RunTime dummy
#添加计分板

scoreboard players add @a fef:RunTime 0
scoreboard players remove @a[scores={fef:RunTime=1..}] fef:RunTime 1
#分数初始化和计时
#计时