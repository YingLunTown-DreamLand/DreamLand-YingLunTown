scoreboard players set AuxiliaryConstants pbn:settings -1
scoreboard players add number1 pbn:settings 0
scoreboard players add number2 pbn:settings 0
#初始化分数

execute @s[scores={pbn:posx=..0,pbn:posz=0..}] ~-1.0 ~-32767.0 ~ detect ~ ~ ~ minecraft:air -1 tag @s add pbn:unchngeX
execute @s[scores={pbn:posx=..0,pbn:posz=0..}] ~-1.0 ~-32767.0 ~ detect ~ ~ ~ minecraft:water -1 tag @s add pbn:unchngeX
execute @s[scores={pbn:posx=..0,pbn:posz=0..}] ~ ~-32767.0 ~1.0 detect ~ ~ ~ minecraft:air -1 tag @s add pbn:unchngeZ
execute @s[scores={pbn:posx=..0,pbn:posz=0..}] ~ ~-32767.0 ~1.0 detect ~ ~ ~ minecraft:water -1 tag @s add pbn:unchngeZ
#X-, Z+
#(-1,0),(0,1)

execute @s[scores={pbn:posx=..0,pbn:posz=..0}] ~-1.0 ~-32767.0 ~ detect ~ ~ ~ minecraft:air -1 tag @s add pbn:unchngeX
execute @s[scores={pbn:posx=..0,pbn:posz=..0}] ~-1.0 ~-32767.0 ~ detect ~ ~ ~ minecraft:water -1 tag @s add pbn:unchngeX
execute @s[scores={pbn:posx=..0,pbn:posz=..0}] ~ ~-32767.0 ~-1.0 detect ~ ~ ~ minecraft:air -1 tag @s add pbn:unchngeZ
execute @s[scores={pbn:posx=..0,pbn:posz=..0}] ~ ~-32767.0 ~-1.0 detect ~ ~ ~ minecraft:water -1 tag @s add pbn:unchngeZ
#X-,Z-
#(-1,0),(0,-1)

execute @s[scores={pbn:posx=0..,pbn:posz=..0}] ~1.0 ~-32767.0 ~ detect ~ ~ ~ minecraft:air -1 tag @s add pbn:unchngeX
execute @s[scores={pbn:posx=0..,pbn:posz=..0}] ~1.0 ~-32767.0 ~ detect ~ ~ ~ minecraft:water -1 tag @s add pbn:unchngeX
execute @s[scores={pbn:posx=0..,pbn:posz=..0}] ~ ~-32767.0 ~-1.0 detect ~ ~ ~ minecraft:air -1 tag @s add pbn:unchngeZ
execute @s[scores={pbn:posx=0..,pbn:posz=..0}] ~ ~-32767.0 ~-1.0 detect ~ ~ ~ minecraft:water -1 tag @s add pbn:unchngeZ
#X+,Z-
#(1,0),(0,-1)

execute @s[scores={pbn:posx=0..,pbn:posz=0..}] ~1.0 ~-32767.0 ~ detect ~ ~ ~ minecraft:air -1 tag @s add pbn:unchngeX
execute @s[scores={pbn:posx=0..,pbn:posz=0..}] ~1.0 ~-32767.0 ~ detect ~ ~ ~ minecraft:water -1 tag @s add pbn:unchngeX
execute @s[scores={pbn:posx=0..,pbn:posz=0..}] ~ ~-32767.0 ~1.0 detect ~ ~ ~ minecraft:air -1 tag @s add pbn:unchngeZ
execute @s[scores={pbn:posx=0..,pbn:posz=0..}] ~ ~-32767.0 ~1.0 detect ~ ~ ~ minecraft:water -1 tag @s add pbn:unchngeZ
#X+,Z+
#(1,0),(0,1)

scoreboard players operation @s[tag=!pbn:unchngeX] pbn:posx *= AuxiliaryConstants pbn:settings
scoreboard players operation @s[tag=!pbn:unchngeX] pbn:posx *= number1 pbn:settings
scoreboard players operation @s[tag=!pbn:unchngeX] pbn:posx /= number2 pbn:settings
scoreboard players operation @s[tag=!pbn:unchngeZ] pbn:posz *= AuxiliaryConstants pbn:settings
scoreboard players operation @s[tag=!pbn:unchngeZ] pbn:posz *= number1 pbn:settings
scoreboard players operation @s[tag=!pbn:unchngeZ] pbn:posz /= number2 pbn:settings
#math

tag @s[tag=pbn:unchngeX] remove pbn:unchngeX
tag @s[tag=pbn:unchngeZ] remove pbn:unchngeZ
#移除标签



#若X轴和Z轴可能会碰撞到固体方块，则对相应轴上的向量取反