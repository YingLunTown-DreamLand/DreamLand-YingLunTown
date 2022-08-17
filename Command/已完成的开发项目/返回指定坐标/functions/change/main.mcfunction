execute @a[tag=bp:using] ~ ~ ~ scoreboard players add @s bp:wait 0
#prepare

execute @e[type=snowball] ~ ~ ~ function change/change_1
#切换选项

execute @a[tag=bp:using,rx=-60,rxm=-90,scores={bp:scores=0..10,bp:wait=0}] ~ ~ ~ function change/change_2
#确认选项

execute @a[tag=bp:using,rx=-60,rxm=-90,scores={bp:scores=11..12,bp:wait=0}] ~ ~ ~ function change/change_3
#移动光标

execute @a[tag=bp:using,rx=-60,rxm=-90,scores={bp:scores=13,bp:wait=0}] ~ ~ ~ function change/change_4
#退格

execute @a[tag=bp:using,rx=-60,rxm=-90,scores={bp:scores=14,bp:wait=0}] ~ ~ ~ function change/change_5
#将已输入数值取相反数

execute @a[tag=bp:using,rx=-60,rxm=-90,scores={bp:scores=15,bp:situation=1..2,bp:wait=0}] ~ ~ ~ function change/change_6
#上一项

execute @a[tag=bp:using,rx=-60,rxm=-90,scores={bp:scores=15,bp:situation=0,bp:wait=0}] ~ ~ ~ function change/change_7
execute @a[tag=bp:using,rx=-60,rxm=-90,scores={bp:scores=16,bp:situation=1..2,bp:wait=0}] ~ ~ ~ function change/change_7
#下一项

execute @a[tag=bp:using,rx=90,rxm=60] ~ ~ ~ function change/exit
execute @a[tag=bp:exit] ~ ~ ~ function change/exit
#退出菜单

execute @a[tag=bp:using,scores={bp:wait=1..}] ~ ~ ~ scoreboard players remove @s bp:wait 1
#1
execute @a[tag=bp:using,rx=90,rxm=60] ~ ~ ~ tag @s add bp:change_return
execute @a[tag=bp:using,rx=-60,rxm=-90,scores={bp:scores=!0}] ~ ~ ~ tag @s add bp:change_return
#2
execute @a[tag=bp:change_return] ~ ~ ~ gamerule sendcommandfeedback false
execute @a[tag=bp:change_return] ~ ~ ~ tp ~ ~ ~ ~ 0
execute @a[tag=bp:change_return] ~ ~ ~ gamerule sendcommandfeedback true
execute @a[tag=bp:change_return] ~ ~ ~ scoreboard players set @s bp:wait 5
execute @a[tag=bp:change_return] ~ ~ ~ tag @s add bp:random
#3
execute @a[tag=bp:change_return] ~ ~ ~ tag @s remove bp:change_return
#4
#end
#change/main