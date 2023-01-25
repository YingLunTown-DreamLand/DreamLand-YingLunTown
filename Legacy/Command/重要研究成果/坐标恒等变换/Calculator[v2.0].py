def PrintMessageAndExit(text:str=None):
    if text != '':
        print(text)
    import os
    import sys
    os.system("pause")
    sys.exit()
# 返回错误信息并退出

def log(a,b):
    global meaningful
    if (a <= 0) or (a == 1):
        meaningful = False
        return False
    if b <= 0:
        meaningful = False
        return False
    import math
    ans = math.log(b)/math.log(a)
    del math
    return ans
# f(x)=logₐ(b)

def sin(num):
    try:
        float(num)
    except:
        PrintMessageAndExit(f'语法错误：意外的 {num} 发生在 sin({num})')
    else:
        import math
        num = math.sin(num)
        del math
        return num
# f(x)=sin(x)

def cos(num):
    try:
        float(num)
    except:
        PrintMessageAndExit(f'语法错误：意外的 {num} 发生在 cos({num})')
    else:
        import math
        num = math.cos(num)
        del math
        return num
# f(x)=cos(x)

def tan(num):
    try:
        float(num)
    except:
        PrintMessageAndExit(f'语法错误：意外的 {num} 发生在 tan({num})')
    else:
        import math
        num = math.tan(num)
        del math
        return num
# f(x)=tan(x)

def cot(num):
    try:
        float(num)
    except:
        PrintMessageAndExit(f'语法错误：意外的 {num} 发生在 cot({num})')
    else:
        import math
        if math.tan(num) != 0:
            num = 1/(math.tan(num))
        else:
            del math
            global meaningful
            meaningful = False
            return False
        del math
        return num
# f(x)=cot(x)

def sqrt(num):
    try:
        float(num)
    except:
        PrintMessageAndExit(f'语法错误：意外的 {num} 发生在 sqrt({num})')
    else:
        if num >= 0:
            num = pow(num,1/2)
        else:
            global meaningful
            meaningful = False
            return False
        return num
# f(x)=sqrt(x)

def arc(num,type:str):
    global meaningful
    try:
        float(num)
    except:
        PrintMessageAndExit(f'语法错误：意外的 {num} 发生在 arc({num},{type})')
    else:
        import math
        if type == 'sin':
            if num >= -1 and num <= 1:
                num = math.asin(num)
            else:
                meaningful = False
                return False
        if type == 'cos':
            if num >= -1 and num <= 1:
                num = math.acos(num)
            else:
                del math
                meaningful = False
                return False
        if type == 'tan':
            num = math.atan(num)
        if type == 'cot':
            if num != 0:
                num = 1/num
                num = math.atan(num)
            else:
                del math
                meaningful = False
                return False
        if (type != 'sin') and (type != 'cos') and (type != 'tan') and (type != 'cot'):
            del math
            meaningful = False
            return False
        del math
        return num
# f(x)=arc(x,sin/cos/tan/cot)

def sequence(formula:str,known:list,startPlace:int,limited:int,type:str):
    global t
    global meaningful
    # 声明全局变量“t”和“meaningful”
    if startPlace == None:
        n = 0
        startPlace = 0
    else:
        n = startPlace
    # 设定起始位置
    save = limited
    limited = limited - startPlace + 1
    if limited <= 0:
        meaningful = False
        return False
    # 第n项（或前n项和）中n不是正整数时返回“无意义”
    value = []
    need = save
    while save > 0:
        if value == []:
            value.append('')
            T = 1
        else:
            value = value + value
            T = T*2
            save = need - T
    del T
    del save
    del need
    # 创建空列表以保存已知量
    for i in known:
        i = i.replace('valueSave','[Type=error/info, Function=sequence] Call system variables')
        i = i.replace('i','[Type=error/info, Function=sequence] Call system variables')
        i = i.replace('term','[Type=error/info, Function=sequence] Call system variables')
        i = i.replace('res','[Type=error/info, Function=sequence] Call system variables')
        i = i.replace('formula','[Type=error/info, Function=sequence] Call system variables')
        i = i.replace('known','[Type=error/info, Function=sequence] Call system variables')
        i = i.replace('startPlace','[Type=error/info, Function=sequence] Call system variables')
        i = i.replace('limited','[Type=error/info, Function=sequence] Call system variables')
        i = i.replace('type','[Type=error/info, Function=sequence] Call system variables')
        i = i.replace('value','[Type=error/info, Function=sequence] Call system variables')
        i = i.replace('meaningful','[Type=error/info, Function=sequence] Call system variables')
        i = i.replace(' ','')
        # 清理字符
        def a(term:str,res:str):
            global meaningful
            term = str(term)
            res = str(res)
            try:
                float(eval(term))
            except ZeroDivisionError:
                meaningful = False
                return False
            except:
                PrintMessageAndExit(f'语法错误：意外的 {term} 发生在 [known:list] 中的 a({term},{res})')
            try:
                float(eval(res))
            except ZeroDivisionError:
                meaningful = False
                return False
            except:
                PrintMessageAndExit(f'语法错误：意外的 {res} 发生在 [known:list] 中的 a({term},{res})')
            term = eval(term)
            res = eval(res)
            if int(term) == term:
                term = int(term)
            else:
                meaningful = False
                return False
            return term,res
        try:
            i = eval(str(i))
        except:
            PrintMessageAndExit(f'语法错误：意外的 {i} 发生在 {known}')
        value[i[0]-1] = i[1]
        del a
        del i
    # 向列表放入已知量
    def a(num):
        global meaningful
        try:
            int(eval(str(num)))
        except ZeroDivisionError:
            meaningful = False
            return False
        except:
            PrintMessageAndExit(f'语法错误：意外的 {num} 发生在 a({num})')
        if not int(eval(str(num))) == eval(str(num)):
            meaningful = False
            return False
        if int(eval(str(num))) < 0:
            meaningful = False
            return False
        if value[int(eval(str(num)))-1] == '':
            meaningful = False
            return False
        return value[int(eval(str(num)))-1]
    # 返回 a(n) 的值
    compass = n-1
    formula = formula.replace('valueSave','[Type=error/info, Function=sequence] Call system variables')
    formula = formula.replace('type','[Type=error/info, Function=sequence] Call system variables')
    formula = formula.replace('startPlace','[Type=error/info, Function=sequence] Call system variables')
    formula = formula.replace('known','[Type=error/info, Function=sequence] Call system variables')
    formula = formula.replace('formula','[Type=error/info, Function=sequence] Call system variables')
    formula = formula.replace('limited','[Type=error/info, Function=sequence] Call system variables')
    formula = formula.replace('value','[Type=error/info, Function=sequence] Call system variables')
    formula = formula.replace('compass','[Type=error/info, Function=sequence] Call system variables')
    formula = formula.replace('meaningful','[Type=error/info, Function=sequence] Call system variables')
    while limited > 0:
        try:
            eval(str(formula))
        except ZeroDivisionError:
            meaningful = False
            return False
        except:
            PrintMessageAndExit(f'语法错误：意外的 {formula} 发生在 [formula:str]')
        ans = eval(str(formula))
        if meaningful == False:
            return False
        if value[compass] != '':
            if not value[compass] == ans:
                meaningful = False
                return False
        value[compass] = ans
        limited = limited - 1
        compass = compass + 1
        n = n+1
    # 计算出a(startPlace)到a(limited)之间的所有数据
    global CreatorMode
    try:
        CreatorMode == True
        t = 0
    except:
        None
    else:
        if CreatorMode == True:
            new = []
            for i in value:
                if not i == '':
                    new.append(i)
        print(new)
    if type == 'ans':
        return value[compass-1]
    if type == 'add':
        sum = 0
        for i in value:
            if i != '':
                sum = sum+float(i)
        return sum
    meaningful = False
    return False

def MathWorking(formula:str):
    for i in ['ls','ls1','save','"','==','MathWorking','formula','_','aiter','all','any','anext','ascii','bin','bool','breakpoint','bytearray','bytes','callable','chr','classmethod','compile','complex','import','delattr','dict','dir','divmod','enumerate','exec','eval','filter','float','format','frozenset','getattr','globals','hasattr','hash','help','hex','id','input','int','isinstance','issubclass','iter','len','list','locals','map','max','memoryview','min','next','object','oct','open','ord','print','property','range','repr','reversed','round','set','setattr','slice','sorted','staticmethod','str','sum','super','tuple','type','vars','zip','__import__']:
        formula = formula.replace(i,'%')
    del i
    save = formula
    formula = formula.split('%')
    if len(formula) > 1:
        PrintMessageAndExit('[错误：键入不合法表达式]')
    formula = save
    del save
    import math
    formula = formula.replace('pi',str(math.pi))
    del math
    #
    global meaningful
    global t
    meaningful = True
    #
    try:
        t == 0
    except:
        t = 0
        i = 0
    try:
        ans = eval(formula)
    except ZeroDivisionError:
        if i == 0:
            del t
        meaningful = False
        return False
    except:
        if i == 0:
            del t
        PrintMessageAndExit(f'语法错误：给定的 {formula} 可能存在语法错误')
    if i == 0:
        del t
    if meaningful == True:
        del meaningful
        return ans
    if meaningful == False:
        del meaningful
        return False

def PrintMessageAndWaiting(text:str=None):
    if text != None:
        print(text)
    import os
    os.system("pause")
    del os
# 返回信息并等待

T = 0
while T == 0:
    print('是否阅读使用说明？(填写Yes或No)')
    ls = input()
    if (ls == 'y') or (ls == 'yes') or (ls == 'Yes') or (ls == 'Y'):
        PrintMessageAndWaiting('名称：数学计算器\n用途：根据使用者输入的数学公式计算结果并输出结果\n本计算器内置的函数及语法：')
        PrintMessageAndWaiting('1. "abs(num)"——计算"num"的绝对值\n例子：abs(-3)计算-3的绝对值')
        PrintMessageAndWaiting('2. "pow(a,b)"——计算"a"的"b"次方\n例子：pow(3,2)计算3的平方')
        PrintMessageAndWaiting('3. "sin(num)"——计算"num"的sin值\n例子：sin(pi)计算π的sin值\n注意："num"使用弧度制\n备注：其他函数如cos(num)、tan(num)、cot(num)的用法与sin(num)一致，之后不再赘述')
        PrintMessageAndWaiting('4. "arc(num,type)"——计算反三角函数值\n具体用法：num处填写三角函数值，type处仅允许填入 字符串 且必须是以下其一：\n\'sin\' 或 \'cos\' 或 \'tan\' 或 \'cot\'\n以type处填入 \'sin\' 为例，计算器会计算arcsin(num)的值，即假设sin(x)=num，计算器会根据num推出x的值\n例子：arc(1,\'tan\')计算arctan(1)的值，即计算tan(x)=1中的x值')
        PrintMessageAndWaiting('5. "log(a,b)"——计算logₐ(b)的值\n例子：log(10,100)计算以10为底，100为真数的log值')
        PrintMessageAndWaiting('6. "sqrt(num)"——计算"num"的算术平方根，效果与"pow(num,1/2)"等效\n例子：sqrt(4)计算4的算术平方根')
        PrintMessageAndWaiting('7. "sequence(formula,known,startPlace,limited,type)"——进行数列运算\n详细用法如下：\nformula 必须是一个 字符串 。此处填入数列a(n)的通项公式或递推关系式。例子：\'a(n-1)+a(n-2)\'、\'n+1\'\nknown 必须是 列表 且列表中的元素必须是 字符串 。其中，列表的格式是 [\'a(1)=NUM\',\'a(2)=NUM2\',...,\'a(n)=NUMn\'] 。例子：[\'a(1)=0\',\'a(2)=1\',\'a(3)=1\']\nstartPlace 必须是 正整数 ，用于指定从数列a(n)第几项求起\nlimited 必须是 正整数 ，用于指定数列要求到第几项\ntype 必须是 字符串 且必须为以下其一：\n\'ans\' 或 \'add\'\n其中，\'ans\'只会计算第n项的值，即a(n)之值，\'add\'只会计算数列a(n)的前n项和\n备注：若给定的数列正确且最终结果有意义，那么系统还会打印数列中的每一个元素，这是一个 开发者功能 ，默认启用且不能关闭\n例子①(计算斐波那契数列前10项和)：\nsequence(\'a(n-1)+a(n-2)\',[\'a(1)=0\',\'a(2)=1\'],3,10,\'add\')\n例子②(计算a(n)=n的第100项)：\nsequence(\'n\',[],1,100,\'ans\')')
        PrintMessageAndWaiting('其他说明：\n1. 您可以嵌套在一个函数中嵌套其他函数')
        PrintMessageAndWaiting('2. 系统不会对单引号进行转义，因此在嵌套函数时如果用到了单引号则您可能（注意是“可能”）需要使用\\\'而不是\'')
        PrintMessageAndWaiting('3. 乘号是*号，除号是/号')
        import math
        PrintMessageAndWaiting(f'4. 请不要使用π指代{math.pi}的值，您应该使用pi。由于储存精度的限制，pi实际上等于{math.pi}')
        del math
        PrintMessageAndWaiting('==========\nAuthor: Made By Happy2018new\n==========')
        T = 1
    else:
        if (ls == 'n') or (ls == 'no') or (ls == 'No') or (ls == 'N'):
            T = 2
    if T == 0:
        print('请不要输入其他符号！\n')
#
if T == 1:
    PrintMessageAndWaiting('安全警告：为了更快的开发此计算器，我们使用了一些特性，固然此计算器只能在个人设备上由个人使用，而不能置于网站公开使用。除此之外，请只将此工具作为计算器使用，而不是代码执行工具\n如果您无视此 安全警告 而导致数据丢失或造成其他问题，作者概不负责\n==========')
else:
    PrintMessageAndWaiting('==========\n安全警告：为了更快的开发此计算器，我们使用了一些特性，固然此计算器只能在个人设备上由个人使用，而不能置于网站公开使用。除此之外，请只将此工具作为计算器使用，而不是代码执行工具。\n如果您无视此 安全警告 而导致数据丢失或造成其他问题，作者概不负责\n==========')
#
del T
ls = ''
del ls
#
CreatorMode = True
T = 0
while T == 0:
    print('定义变量：\n为了方便，您可以预先定义变量，例如定义x=arc(5,\'tan\')')
    while T == 0:
        print('您是否要开始定义或继续定义变量？(填写Yes或No)')
        ls = input()
        if (ls == 'y') or (ls == 'yes') or (ls == 'Yes') or (ls == 'Y'):
            del ls
            break
        else:
            if (ls == 'n') or (ls == 'no') or (ls == 'No') or (ls == 'N'):
                T = 2
                del ls
            else:
                print('请不要输入其他符号！\n')
    if T == 2:
        del T
        break
    T = 1
    while T == 1:
        print('请输入变量名称：')
        ls = input()
        save = ls
        list = [ls,'=0']
        ls = str("".join(list))
        del list
        try:
            exec(ls)
        except:
            PrintMessageAndWaiting(f'错误：您不能创建名为 {save} 的变量名，请更换名称并重试\n')
            del save
            del ls
        else:
            T = 0
            del ls
    T = 1
    while T == 1:
            print(f'请键入 {save} 等于的值（为其赋值）')
            try:
                ls1 = float(MathWorking(input()))
            except:
                PrintMessageAndWaiting('错误：您可能给出了错误的算式，请修改后重试\n')
                del ls1
            else:
                if ls1 == False:
                    PrintMessageAndWaiting('错误：您不能赋值 无意义 的值，请修改算式并重试\n')
                else:
                    T = 0
    exec(f'{save}={ls1}')
    PrintMessageAndWaiting(f'成功：已成功执行赋值操作，发生在 {save} = {ls1}')
    del save
    del ls1
del PrintMessageAndWaiting
#
print('请输入数学算式：')
print(MathWorking(input()))
#
os = ''
sys = ''
del os
del sys
import os
import sys
os.system("pause")
sys.exit()
#