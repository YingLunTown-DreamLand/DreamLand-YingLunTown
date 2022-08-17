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



with open("MovingLight.mcfunction","r+b") as file:
    list = []
    for i in file:
        if (i == b'#Air\r\n'):
            list.append(None)
        if (i[0] == b'#'[0]) or (i == b'\r\n'):
            continue
        i = bytearray(i)
        try:
            del i[-1]
            del i[-1]
        except:
            None
        list.append(i.decode())



output = []
count = -1
for i in list:
    count = count + 1
    if i != None:
        if count == 0:
            i = __formCMDblk(i,1,1,0,1,0,'',0,1)
        else:
            i = __formCMDblk(i,1,2,0,0,0,'',0,1)
    else:
        count = -1
        i = bytearray(b'\x07\x00\x00\x00\x00')
    i = bytearray(i) + bytearray(b'\x10')
    output.append(i)



output = bytearray(b'').join(output)
output = bytearray(b'BDX\x00Happy2018new\x00\x01air\x00') + output + bytearray(b'XE')
import brotli
output = bytearray(b'BD@') + brotli.compress(output)



with open("ans.bdx","w+b") as file:
    file.write(output)
print('Success')