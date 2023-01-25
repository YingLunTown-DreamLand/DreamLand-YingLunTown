moneyAdd = input()
if len(moneyAdd.split('.')) != 1:
    print('Error')
    exit()
try:
    moneyAdd = int(moneyAdd)
    if moneyAdd <= 0:
        0/0
    moneyAdd = str(moneyAdd)
except:
    print('Error')
    exit()



def __formCMDblk(
        command: str,
        particularValue: int,
        impluse: int = 0,
        condition: bool = False,
        needRedstone: bool = True,
        tickDelay: int = 0,
        customName: str = "",
        executeOnFirstTick: bool = False,
        trackOutput: bool = True,
    ):
        """
        使用指定项目返回指定的指令方块放置指令项
        :param command: `str`
            指令
        :param particularValue:
            方块特殊值，即朝向
                :0	下	无条件
                :1	上	无条件
                :2	z轴负方向	无条件
                :3	z轴正方向	无条件
                :4	x轴负方向	无条件
                :5	x轴正方向	无条件
                :6	下	无条件
                :7	下	无条件

                :8	下	有条件
                :9	上	有条件
                :10	z轴负方向	有条件
                :11	z轴正方向	有条件
                :12	x轴负方向	有条件
                :13	x轴正方向	有条件
                :14	下	有条件
                :14	下	有条件
            注意！此处特殊值中的条件会被下面condition参数覆写
        :param impluse: `int 0|1|2`
            方块类型
                0脉冲 1循环 2连锁
        :param condition: `bool`
            是否有条件
        :param needRedstone: `bool`
            是否需要红石
        :param tickDelay: `int`
            执行延时
        :param customName: `str`
            悬浮字
        :param lastOutput: `str`
            上次输出字符串，注意此处需要留空
        :param executeOnFirstTick: `bool`
            执行第一个已选项(循环指令方块是否激活后立即执行，若为False，则从激活时起延迟后第一次执行)
        :param trackOutput: `bool`
            是否输出

        :return:str
        """
        block = b"\x24" + particularValue.to_bytes(2, byteorder="big", signed=False)

        for i in [
            impluse.to_bytes(4, byteorder="big", signed=False),
            bytes(command, encoding="utf-8") + b"\x00",
            bytes(customName, encoding="utf-8") + b"\x00",
            bytes("", encoding="utf-8") + b"\x00",
            tickDelay.to_bytes(4, byteorder="big", signed=True),
            executeOnFirstTick.to_bytes(1, byteorder="big"),
            trackOutput.to_bytes(1, byteorder="big"),
            condition.to_bytes(1, byteorder="big"),
            needRedstone.to_bytes(1, byteorder="big"),
        ]:
            block += i
        return block
# 此函数遵从 https://gitee.com/EillesWan/Musicreater/blob/master/LICENSE 所述之协议
# 没有对原函数进行任何改动



with open("input.log","r+b") as file:
    text = '登入  '.encode()
    list = []
    for i in file:
        i = bytearray(i)
        try:
            i = i.split(text)[1]
            i = i.split(bytearray(b' 00000000-'))[0]
            i = i.decode()
            try:
                list.index([i,'Name'])
            except:
                list.append([i,'Name'])
        except:
            None



list.insert(0,'scoreboard objectives add 回档补偿 dummy')
list.insert(0,'scoreboard objectives add hdbc:math dummy')

list.append('scoreboard players add @a[scores={回档补偿=0..9}] 回档补偿 1')

list.append('execute @a[scores={回档补偿=10..}] ~ ~ ~ scoreboard players operation @s hdbc:math = @s money')
list.append('execute @a[scores={回档补偿=10..}] ~ ~ ~ scoreboard players add @s money ' + moneyAdd)
list.append('execute @a[scores={回档补偿=10..}] ~ ~ ~ tellraw @s {"rawtext":[{"text":"§r§a回档补偿 §e幻想币 §f* §b' + moneyAdd + ' §a已发放§f！\n§a原有§e幻想币 §f* §b"},{"score":{"objective":"hdbc:math","name":"@s"}},{"text":"\n§a当前§e幻想币 §f* §b"},{"score":{"objective":"money","name":"@s"}}]}')
list.append('execute @a[scores={回档补偿=10..}] ~ ~ ~ playsound random.orb @s ~ ~ ~ 1 1 1')
list.append('execute @a[scores={回档补偿=10..}] ~ ~ ~ scoreboard players set @s 回档补偿 -1')



output = []
for i in list:
    try:
        if i[1] == 'Name':
            i = 'execute @a[name=' + i[0] + '] ~ ~ ~ scoreboard players add @s 回档补偿 0'
    except:
        None
    i = __formCMDblk(i,1,2,0,0,0,'',0,1)
    i = bytearray(i) + bytearray(b'\x10')
    output.append(i)



output = bytearray(b'').join(output)
output = bytearray(b'BDX\x00Happy2018new\x00') + output + bytearray(b'XE')
import brotli
output = bytearray(b'BD@') + brotli.compress(output)



with open("ans.bdx","w+b") as file:
    file.write(output)
print('Success')