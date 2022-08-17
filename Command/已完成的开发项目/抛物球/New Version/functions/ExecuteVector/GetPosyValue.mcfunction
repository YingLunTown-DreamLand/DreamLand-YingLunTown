scoreboard objectives add pbn:Sy dummy
#添加计分板

scoreboard players add gravity pbn:settings 0
scoreboard players add @s pbn:Vy0 0
scoreboard players set TemporaryVariable pbn:settings 0
scoreboard players set AuxiliaryConstants pbn:settings 2
scoreboard players set @s pbn:Sy 0
#分数初始化

scoreboard players operation @s pbn:posy -= gravity pbn:settings
#计算当前瞬时速度

scoreboard players operation TemporaryVariable pbn:settings = @s pbn:posy
scoreboard players operation TemporaryVariable pbn:settings += @s pbn:Vy0
scoreboard players operation TemporaryVariable pbn:settings /= AuxiliaryConstants pbn:settings
#计算Y轴上的位移

scoreboard players operation @s pbn:Sy = TemporaryVariable pbn:settings
scoreboard players operation @s pbn:Vy0 = @s pbn:posy
scoreboard players reset TemporaryVariable pbn:settings
#同步分数



#计算Y轴上的位移