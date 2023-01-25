scoreboard objectives add uid dummy
scoreboard objectives add ldc:uid dummy
scoreboard objectives add ldc:posuid dummy
scoreboard objectives add ldc:posy dummy
scoreboard objectives add ldc:math dummy
scoreboard objectives add ldc:statistic dummy
#scoreboards_add

scoreboard players add @a uid 0
execute @a[scores={uid=0},c=1] ~ ~ ~ function uid
#uid

execute @e[name=开启锁定模块,type=item] ~ ~ ~ tag @a[r=3,c=1] add ldc:apply
execute @e[name=开启锁定模块,type=item] ~ ~ ~ kill @s
execute @a[tag=ldc:apply,c=1] ~ ~ ~ function main
#main

execute @e[type=minecraft:fishing_hook] ~ ~ ~ execute @a[c=1,tag=ldc:apply,r=3] ~ ~ ~ tag @s add ldc:check
execute @a[tag=ldc:check,c=1] ~ ~ ~ function check
#check

execute @a[tag=ldc:using,c=1] ~ ~ ~ function LockOrUnlock
#LockOrUnlock

execute @a[tag=ldc:apply,c=1,tag=!ldc:using] ~ ~ ~ function exit
#exit

execute @e[tag=ldc:locked] ~ ~ ~ tp @s @s
#teleport_entity/entities



#Author:Happy2018new
#Version:4.1
#Type:热修复(HotFix)·箱子锁定系统·已封装的api/system