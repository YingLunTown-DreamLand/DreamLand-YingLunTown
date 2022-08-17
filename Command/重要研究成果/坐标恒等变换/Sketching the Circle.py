import math
import os
# 加载库



def PrintMessageAndExit(text:str=None):
        if text != None:
            print(text)
        os.system("pause")
        exit()
# 创建函数：返回错误信息并退出



def GetInputAndTestIfisIntOrFolat(text:str=None,type:str='float',CheckMode:str=None):
    if text != None:
        print(text)
    num=input()
    save=num
    str=num.split('-')
    if len(str)==2 and str[0] == '':
        num=str[1]
    str=num.split('.')
    if type == 'float':
        if len(str)>2:
            PrintMessageAndExit('错误：输入的不是数字')
        else:
            for s in str:
                if not s.isdigit():
                    PrintMessageAndExit('错误：输入的不是数字')
        save=float(save)
        if CheckMode == '>=0':
            if save <= 0:
                PrintMessageAndExit('错误：您必须提供正数')
        if CheckMode == 'rx':
            if not (save >= -90 and save <= 90):
                PrintMessageAndExit('错误：所输入的角度值不在有效范围内')
        return save
    if type == 'int':
        if len(str)>=2:
            PrintMessageAndExit('错误：您必须提供整数')
        else:
            for s in str:
                if not s.isdigit():
                    PrintMessageAndExit('错误：您必须提供整数')
        save=int(save)
        if CheckMode == '>=0':
            if save <= 0:
                PrintMessageAndExit('错误：您必须提供正整数')
        return save
# 创建函数：打印对应提示信息并对用户键入内容进行处理



mode=GetInputAndTestIfisIntOrFolat('请选择一种模式：\n1. 一次性绘制圆上的所有点\n2. 按照给定的延迟分别在不同时刻绘制圆上的点\n请输入代表对应选项的序号','int')
if not (mode == 1 or mode == 2 or mode == -201801 or mode == -201802):
    print('错误：输入的序号不存在')
    os.system("pause")
    exit()
if mode == -201801 or mode == -201802:
    print('已访问开发者状态：绘制的点的数量现在没有上限')
# 设定圆的绘制方法(一次性复制或分布绘制)

T=GetInputAndTestIfisIntOrFolat('设定需要绘制的点之数量(系统将会按照此数字将圆N等分，等分点即为需要绘制的点)','int','>=0')
if T > 360 and mode != -201801 and mode != -201802:
    print('错误：要求绘制的点的数量过多(超过360个点)')
    os.system("pause")
    exit()
# 设定需要绘制的点之数量(系统将会按照此数字将圆N等分，等分点即为需要绘制的点)

R=GetInputAndTestIfisIntOrFolat('设定圆的半径','float','>=0')
# 设定圆的半径

a=GetInputAndTestIfisIntOrFolat('设定圆所在平面相对于地面的竖直夹角(角度)','float','rx')
# 设定圆所在平面相对于地面的竖直夹角(角度)

b=GetInputAndTestIfisIntOrFolat('设定圆所在平面在水平方向上的旋转角(角度)','float')
# 设定圆所在平面在水平方向上的旋转角(角度)

x=GetInputAndTestIfisIntOrFolat('请输入圆心的X轴坐标','float')
# 设定圆心X轴坐标

y=GetInputAndTestIfisIntOrFolat('请输入圆心的Y轴坐标','float')
# 设定圆心Y轴坐标

z=GetInputAndTestIfisIntOrFolat('请输入圆心的Z轴坐标','float')
# 设定圆心Y轴坐标

particleID = input('设定用于绘制圆的粒子ID\n')
# 设定绘制圆上点时的粒子ID

if mode == 2 or mode == -201802:
    time=GetInputAndTestIfisIntOrFolat('设定绘制延迟(单位为游戏刻)','int','>=0')
# 当旋转的模式为2时需要设置绘制延迟

pi = math.pi

# 初始化(设置初始数值)



a = a/180*pi
b = b/180*pi
# 转换角度为弧度



angleAdd = 2*pi/T
w = 0
if mode == 1 or mode == -201801:
    while T > 0:
        w = w + angleAdd
        xNow = -math.cos(a)*math.sin(b)*math.cos(w)+math.cos(b)*math.sin(w)
        xNow = R*xNow+x
        xNow=round(xNow,6)
        yNow = -math.sin(a)*math.cos(w)
        yNow = R*yNow+y
        yNow=round(yNow,6)
        zNow = math.cos(a)*math.cos(b)*math.cos(w)+math.sin(b)*math.sin(w)
        zNow = R*zNow+z
        zNow=round(zNow,6)
        print(f'particle {particleID} {xNow} {yNow} {zNow}')
        T = T - 1
else:
    print('=========================\n# 前置项目(只执行1次)：\nscoreboard objectives add STC_time dummy\nsummon minecraft:armor_stand STC_time_helper\ntag @e[name=STC_time_helper,type=minecraft:armor_stand,c=1,tag="",r=3] add STCtH\n\n\n\n# 长期执行的项目：\nexecute @e[tag=STCtH] ~ ~ ~ tp ~ ~ ~\nscoreboard players add @e[tag=STCtH] STC_time 0')
    delay = 0
    while T > 0:
        w = w + angleAdd
        xNow = -math.cos(a)*math.sin(b)*math.cos(w)+math.cos(b)*math.sin(w)
        xNow = R*xNow+x
        xNow=round(xNow,6)
        yNow = -math.sin(a)*math.cos(w)
        yNow = R*yNow+y
        yNow=round(yNow,6)
        zNow = math.cos(a)*math.cos(b)*math.cos(w)+math.sin(b)*math.sin(w)
        zNow = R*zNow+z
        zNow=round(zNow,6)
        i1 = '{'
        i2 = '}'
        print(f'execute @e[tag=STCtH,scores={i1}STC_time={delay}{i2}] ~ ~ ~ particle {particleID} {xNow} {yNow} {zNow}')
        T = T - 1
        if T > 0:
            delay = delay + time
    delay=delay+1
    print(f'scoreboard players add @e[tag=STCtH] STC_time 1\nexecute @e[tag=STCtH,scores={i1}STC_time={delay}..{i2}] ~ ~ ~ scoreboard players set @s STC_time 0\n=========================')
# 输出命令



os.system("pause")
# 善后





# 绘制圆

# Update(2022/05/20 Night)
# 1. 修复了一个有关开发者模式的问题(mode=-201801)

# Update(2022/05/21 Morning)
# 1. 修复了文案错误并进行了一定改进
# 2. 优化了代码