execute @e[tag=fef:entity] ~ ~ ~ tp @s[y=512,dy=-30000000] ~ -32767.0 ~
execute @e[tag=fef:entity] ~ ~ ~ kill @s[y=512,dy=-30000000]
#位置过低

execute @a ~ ~ ~ tag @e[tag=!fef:FireEntity,tag=fef:entity,y=~32767.0,dx=0,dy=0,dz=0] add fef:check
execute @e[tag=!fef:FireEntity,tag=!fef:check,tag=fef:entity] ~ ~ ~ tp ~ -32767.0 ~
execute @e[tag=!fef:FireEntity,tag=!fef:check,tag=fef:entity] ~ ~ ~ kill @s
execute @e[tag=fef:check] ~ ~ ~ tag @s remove fef:check
#对应位置没有玩家
#清理不需要的辅助实体