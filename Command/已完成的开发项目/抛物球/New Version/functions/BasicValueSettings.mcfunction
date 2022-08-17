scoreboard objectives add pbn:settings dummy
#添加计分板



#设定重力加速度：
scoreboard players set gravity pbn:settings 0
#设定重力加速度大小，默认为0，单位是(1/100000)·Block·(GameTick)^(-2)
#建议设定为0-10000之间的值
#设定为0则无重力作用



#设定撞墙后速度的损耗率：
scoreboard players set number1 pbn:settings 100
#设定碰撞后对应轴上向量模长的损耗量(分子)，默认为100

scoreboard players set number2 pbn:settings 100
#设定碰撞后对应轴上向量模长的损耗量(分母)，默认为100
#默认损耗率为0%
#分子/分母的值不允许超过1
#若要让碰撞后抛物线达到的最大高度为上次最大高度的a倍，则应让分子/分母=√a



#设定抛物球的初速度：
scoreboard players set SpeedNum1 pbn:settings 1
#设定抛物球初速度(分子)，默认为1
scoreboard players set SpeedNum2 pbn:settings 4
#设定抛物球初速度(分母)，默认为4
#抛物球默认初速度为5Blocks·(GameTick)^(-2)
#抛物球初速度V0=[20*分子/分母]Block(s)·(GameTick)^(-1)
#分子/分母的值不允许超过1





#设定基本物理量
#GameTick意为游戏刻，可简写为Tick或gt。一般地，1GameTick=0.05s。无论如何，总存在“1GameTick∊[0.05s,+∞)”。