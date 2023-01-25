scoreboard objectives add pbn:XZwallCount dummy
#添加计分板



execute @e[tag=pbn:entity,scores={pbn:posx=-1000..1000,pbn:posy=-1000..1000,pbn:posz=-1000..1000}] ~ ~ ~ tag @s add pbn:unmath
execute @e[tag=pbn:unmath] ~ ~ ~ detect ~ ~ ~ minecraft:air -1 execute @s ~ ~ ~ detect ~ ~-1 ~ minecraft:air -1 tag @s remove pbn:unmath
execute @e[tag=pbn:unmath] ~ ~ ~ detect ~ ~ ~ minecraft:air -1 execute @s ~ ~ ~ detect ~ ~-1 ~ minecraft:water -1 tag @s remove pbn:unmath
execute @e[tag=pbn:unmath] ~ ~ ~ detect ~ ~ ~ minecraft:water -1 execute @s ~ ~ ~ detect ~ ~-1 ~ minecraft:air -1 tag @s remove pbn:unmath
execute @e[tag=pbn:unmath] ~ ~ ~ detect ~ ~ ~ minecraft:water -1 execute @s ~ ~ ~ detect ~ ~-1 ~ minecraft:water -1 tag @s remove pbn:unmath
#筛出无需被执行向量的实体或撤销标记



execute @e[tag=!pbn:unmath,tag=pbn:entity] ~ ~ ~ function ExecuteVector/GetPosyValue
#取得Y轴上的位移

execute @e[tag=!pbn:unmath,tag=pbn:entity] ~ ~ ~ function ExecuteVector/XZwall
#检验X轴和Z轴是否发生碰撞并处理

execute @e[tag=!pbn:unmath,tag=pbn:entity] ~ ~ ~ function ExecuteVector/move
#执行位移

execute @e[tag=!pbn:unmath,tag=pbn:entity] ~ ~ ~ function ExecuteVector/Ywall
#检验Y轴是否发生碰撞并处理
#执行向量





#ExecuteVector/main