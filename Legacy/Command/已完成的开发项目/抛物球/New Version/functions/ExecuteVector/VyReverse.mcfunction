scoreboard players set AuxiliaryConstants pbn:settings -1
scoreboard players add number1 pbn:settings 0
scoreboard players add number2 pbn:settings 0
#初始化分数

scoreboard players operation @s pbn:posx *= AuxiliaryConstants pbn:settings
scoreboard players operation @s pbn:posy *= AuxiliaryConstants pbn:settings
scoreboard players operation @s pbn:posz *= AuxiliaryConstants pbn:settings
scoreboard players operation @s pbn:posy *= number1 pbn:settings
scoreboard players operation @s pbn:posy /= number2 pbn:settings
#取反向量并损耗

scoreboard players operation @s pbn:Vy0 = @s pbn:posy
#同步分数

#对Y轴上的向量取反并损耗其模长