execute @e[tag=fef:entity,c=1] ~ ~ ~ function end
#清理不需要的辅助实体

execute @a[c=1] ~ ~ ~ function CheckMoveAndRunTime
#检验玩家是否移动和计时

execute @a[tag=fef:list,scores={fef:RunTime=0}] ~ ~ ~ function CleanFire
#清理浮空火

execute @e[tag=fef:entity] ~ ~ ~ tp ~ ~ ~
#固定辅助实体