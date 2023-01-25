import math
import os
# 加载库



def PrintMessageAndExit(text:str=None):
        if text != None:
            print(text)
        os.system("pause")
        exit()
# 创建函数：返回错误信息并退出



def GetInputAndTestIfisIntOrFolat(text:str=None):
    if text != None:
        print(text)
    num=input()
    save=num
    str=num.split('-')
    if len(str)==2 and str[0] == '':
        num=str[1]
    str=num.split('.')
    if len(str)>2:
        PrintMessageAndExit('错误：输入的不是数字')
    else:
        for s in str:
            if not s.isdigit():
                PrintMessageAndExit('错误：输入的不是数字')
    save=float(save)
    return save
# 创建函数：打印对应提示信息并对用户键入内容进行处理



StartX = GetInputAndTestIfisIntOrFolat('请输入起点坐标的X轴坐标')
StartY = GetInputAndTestIfisIntOrFolat('请输入起点坐标的Y轴坐标')
StartZ = GetInputAndTestIfisIntOrFolat('请输入起点坐标的Z轴坐标')
# 设置起点坐标



EndX = GetInputAndTestIfisIntOrFolat('请输入终点坐标的X轴坐标')
EndY = GetInputAndTestIfisIntOrFolat('请输入终点坐标的Y轴坐标')
EndZ = GetInputAndTestIfisIntOrFolat('请输入终点坐标的Z轴坐标')
# 设置终点坐标



rxR = math.sqrt((EndX-StartX)*(EndX-StartX)+(EndY-StartY)*(EndY-StartY)+(EndZ-StartZ)*(EndZ-StartZ))
ryR = math.sqrt((EndX-StartX)*(EndX-StartX)+(EndZ-StartZ)*(EndZ-StartZ))
# 计算两点间距离及两点间水平距离



if rxR == 0 or ryR == 0:
    if rxR == 0:
        print('错误：两点间距离不能为0')
    if ryR == 0:
        print('错误：两点间水平距离不能为0')
    os.system("pause")
    exit()
# 判断分母是否为0



rxsin = (EndY-StartY)/rxR
rx = -1 * 180 * math.asin(rxsin) / math.pi
# 计算竖直朝向



rysin = (EndZ-StartZ)/ryR
rycos = (EndX-StartX)/ryR
if rysin >= 0 and rycos >= 0:
    ry = 180 * math.asin(rysin) / math.pi - 90
if (rysin >= 0 or rycos <= 0) and rycos <= 0:
    ryFalse = math.pi - math.asin(rysin)
    ry = 180 * ryFalse / math.pi - 90
if rysin <= 0 and rycos >= 0:
    ryFalse = 2 * math.pi + math.asin(rysin)
    ry = 180 * ryFalse / math.pi - 90
if ry > 180:
    ry = ry-360
# 计算水平朝向



rx = round(rx,6)
ry = round(ry,6)
# 舍弃小数点第7位及后面的部分



print(f'rx = {rx}')
print(f'ry = {ry}')
print(f'/tp @s ~ ~ ~ {ry} {rx}')
# 打印结果



os.system("pause")
# 善后





# 模拟Facing功能(计算起点坐标到终点坐标的水平朝向和竖直朝向)
# 两点间距离为0或两点间水平距离为0会因为分母为0而报错
# MCBE中实际的facing功能与此代码的模拟效果有差异，请自行根据实际情况调整

# Update(2022/05/15 Aft)
# 1. 现在分母为0时python不再抛出语法错误
# 2. 修复了水平方向上所得结果不正确的问题

# Update(2022/05/15 Night)
# 1. 修复了有关获取竖直朝向的致命问题

# Update(2022/05/20 Night)
# 1. 现在直接打开脚本即可使用
# 2. 优化了打印部分的命令
# 3. 文件更名
# 4. 修复了部分情况下数字无法正常显示的问题，现在小数点后只保留到第6位

# Update(2022/05/21 Morning)
# 1. 优化了代码