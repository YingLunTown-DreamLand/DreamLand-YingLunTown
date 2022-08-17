import math
import os
# 加载库


def PrintMessageAndExit(text:str=None):
        if text != None:
            print(text)
        os.system("pause")
        exit()
# 创建函数：返回错误信息并退出



def GetInputAndTestIfisIntOrFolat(text:str=None,CheckMode:str=None):
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
    if CheckMode == 'rx':
        if not (save >= -90 and save <= 90):
            PrintMessageAndExit('错误：所输入的角度值不在有效范围内')
    return save
# 创建函数：打印对应提示信息并对用户键入内容进行处理



rx = GetInputAndTestIfisIntOrFolat('设定实体A的竖直朝向(角度)','rx')
# 设定实体A的竖直朝向(角度)

ry = GetInputAndTestIfisIntOrFolat('设定实体A的水平朝向(角度)')
# 设定实体A的水平朝向(角度)

x = GetInputAndTestIfisIntOrFolat('请输入另一点B关于实体A的局部坐标的X轴坐标')
# 设定另一点B关于实体A的局部坐标的X轴坐标

y = GetInputAndTestIfisIntOrFolat('请输入另一点B关于实体A的局部坐标的Y轴坐标')
# 设定另一点B关于实体A的局部坐标的Y轴坐标

z = GetInputAndTestIfisIntOrFolat('请输入另一点B关于实体A的局部坐标的Z轴坐标')
# 设定另一点B关于实体A的局部坐标的Z轴坐标

pi = math.pi

# 初始化(设置初始数值)



rx = rx/180*pi
ry = ry/180*pi
# 转换角度为弧度



A = x*math.cos(ry)-y*math.sin(rx)*math.sin(ry)-z*math.cos(rx)*math.sin(ry)
B = y*math.cos(rx)-z*math.sin(rx)
C = x*math.sin(ry)+y*math.sin(rx)*math.cos(ry)+z*math.cos(rx)*math.cos(ry)
# 计算目标值



A = round(A,6)
B = round(B,6)
C = round(C,6)
# 舍弃小数点第7位及后面的部分



print(f'A = {A} B = {B} C = {C}')
print(f'/tp ~{A} ~{B} ~{C}')
# 打印结果



os.system("pause")
# 善后





# 菊香恒等式

# Update(2022/05/20 Night)
# 1. 现在直接打开脚本即可使用
# 2. 优化了打印部分的命令
# 3. 现在会检验输入的竖直朝向是否在可取范围内(竖直朝向应当属于[-pi/2,pi/2])
# 4. 文件更名
# 5. 修复了部分情况下数字无法正常显示的问题，现在小数点后只保留到第6位

# Update(2022/05/21 Morning)
# 1. 优化了代码