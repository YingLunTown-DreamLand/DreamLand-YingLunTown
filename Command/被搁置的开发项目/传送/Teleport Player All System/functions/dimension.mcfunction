<<<<<<< HEAD
scoreboard objectives add dimension dummy
#scoreboard_add



tag @a[c=1] add DimensionGet
execute @a[tag=DimensionGet] ~ ~ ~ scoreboard players set @a dimension -1
#prepare

execute @a[tag=DimensionGet] ~ ~ ~ locate village
 execute @a[tag=DimensionGet] ~ ~ ~ scoreboard players set @a[rm=0] dimension 0
execute @a[tag=DimensionGet] ~ ~ ~ tag @s remove DimensionGet
#overworld

tag @a[c=1,scores={dimension=-1}] add DimensionGet
execute @a[tag=DimensionGet] ~ ~ ~ locate fortress
 execute @a[tag=DimensionGet] ~ ~ ~ scoreboard players set @a[rm=0] dimension 1
execute @a[tag=DimensionGet] ~ ~ ~ tag @s remove DimensionGet
#nether

execute @a[scores={dimension=-1}] ~ ~ ~ scoreboard players set @s dimension 2
#end
#check_dimension





#指令前面有空格的代表该指令放入的命令方块需要被设置为“有条件的”
#Author:Happy2018new
#Version:1.0
=======
scoreboard objectives add dimension dummy
#scoreboard_add



tag @a[c=1] add DimensionGet
execute @a[tag=DimensionGet] ~ ~ ~ scoreboard players set @a dimension -1
#prepare

execute @a[tag=DimensionGet] ~ ~ ~ locate village
 execute @a[tag=DimensionGet] ~ ~ ~ scoreboard players set @a[rm=0] dimension 0
execute @a[tag=DimensionGet] ~ ~ ~ tag @s remove DimensionGet
#overworld

tag @a[c=1,scores={dimension=-1}] add DimensionGet
execute @a[tag=DimensionGet] ~ ~ ~ locate fortress
 execute @a[tag=DimensionGet] ~ ~ ~ scoreboard players set @a[rm=0] dimension 1
execute @a[tag=DimensionGet] ~ ~ ~ tag @s remove DimensionGet
#nether

execute @a[scores={dimension=-1}] ~ ~ ~ scoreboard players set @s dimension 2
#end
#check_dimension





#指令前面有空格的代表该指令放入的命令方块需要被设置为“有条件的”
#Author:Happy2018new
#Version:1.0
>>>>>>> d95f919c53aa8612409504198bbed77f930d5f64
#Type:通用型·已封装的api/system