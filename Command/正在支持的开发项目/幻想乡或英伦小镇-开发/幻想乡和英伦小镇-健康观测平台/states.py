import datetime
import copy
import sys
import os
botName = '当前已经在线玩家'.encode()



try:
    with open("login_out.log","r+b") as file:
        if len(file.readlines()[-1].split(botName)) == 1:
            file.write(bytearray(bytearray(b'\n')+botName))
except:
    print('错误：您没有将 login_out.log 置于程序所在目录或提供了不正确的文件')
    os.system("pause")
    sys.exit()



def getUUID(i:bytearray):
    i = bytearray(i)
    if len(i.split(bytearray(b'00000000-'))) > 1:
        i = i.split(bytearray(b'00000000-'))[1]
        if (i[-1] == bytearray(b'\n')[0]) and (i[-2] == bytearray(b'\r')[0]):
            del i[-1]
            del i[-1]
        else:
            del i[-1]
        if len(i.split(bytearray(b' ('))) > 1:
            i = i.split(bytearray(b' ('))[0]
        i = str(bytearray(b'00000000-') + i)
        i = i.split('bytearray(b\'',maxsplit=1)[1]
        i = i.split('\')',maxsplit=1)[0]
        return i



def getName(i:bytearray):
    i = bytearray(i)
    try:
        i = i.split('登入  '.encode())[1]
    except:
        None
    try:
        i = i.split(bytearray(b'logout '))[1]
    except:
        None
    i = i.split(bytearray(b' 00000000-'))[0]
    return i.decode()



with open("login_out.log","r+b") as file:
    uuid = []
    for i in file:
        i = bytearray(i)
        if len(i.split(bytearray(b'00000000-0000-4000-8000-'))) > 1:
            uuid.append(getUUID(i))
uuid = list(set(uuid))



nameList = []
for i in uuid:
    nameList.append([])
with open("login_out.log","r+b") as file:
    for i in file:
        i = bytearray(i)
        if len(i.split(bytearray(b'00000000-0000-4000-8000-'))) > 1:
            name = getName(i)
            i = getUUID(i)
            nameList[uuid.index(i)].append(name)
nameListNew = []
for i in nameList:
    nameListNew.append(i[-1])
nameList = copy.deepcopy(nameListNew)
del nameListNew



with open("login_out.log","r+b") as file:
    log = []
    lsData = []
    for i in file:
        i = bytearray(i)
        if len(i.split(botName)) > 1:
            if len(lsData) > 0:
                log.append(lsData)
                lsData = []
        else:
            if (len(i.split('登入  '.encode())) > 1) or (len(i.split(bytearray(b'logout '))) > 1):
                playerUUID = getUUID(i)
                if (len(i.split('登入  '.encode())) > 1):
                    i = i.split(' 登入'.encode())[0]
                    type = 0
                else:
                    i = i.split(bytearray(b' logout'))[0]
                    type = 1
                i = i.replace(bytearray(b' '),bytearray(b'/'))
                i = i.replace(bytearray(b':'),bytearray(b'/'))
                i = i.split(bytearray(b'/'))
                date = datetime.datetime(int(i[0]),int(i[1]),int(i[2]),int(i[3]),int(i[4]),int(i[5]),0)
                lsData.append([playerUUID,type,date])
            else:
                continue



uuidList = []
ans = []
for i in log:
    check = []
    login = []
    logout = []
    save = copy.deepcopy(i)
    i = copy.deepcopy(i)
    while True:
        playerData = i[0]
        try:
            location = check.index(playerData[0])
            if playerData[1] == 1:
                del check[location]
        except:
            if playerData[1] == 0:
                login.append([playerData[0],playerData[2]])
                check.append(playerData[0])
        del i[0]
        if len(i) == 0:
            break
    for i1 in save:
        if i1[1] == 1:
            logout.append([i1[0],i1[2]])
    for i1 in login:
        pointer = -1
        success = False
        for i2 in logout:
            pointer = pointer + 1
            if i2[0] == i1[0]:
                dateDerTa = i2[1] - i1[1]
                if dateDerTa > datetime.timedelta(0):
                    ans.append([i2[0],str(i1[1]),str(i2[1]),dateDerTa])
                    uuidList.append(i2[0])
                del logout[pointer]
                success = True
                break
        if (success == False) and ((save[-1][-1] - i1[1]) > datetime.timedelta(0)):
            ans.append([i1[0],str(i1[1]),str(save[-1][-1]),save[-1][-1] - i1[1]])
            uuidList.append(i1[0])



def collection(i:list):
    list = []
    for i1 in i:
        try:
            list.index(i1)
        except:
            list.append(i1)
    return list



ansAll = []
uuidList = collection(uuidList)
for i in uuidList:
    addTime = datetime.timedelta(0)
    pointer = -1
    while True:
        pointer = pointer + 1
        if ans[pointer][0] == i:
            addTime = addTime + ans[pointer][-1]
        if pointer == len(ans) - 1:
            break
    ansAll.append([i,str(addTime)])



answer = copy.deepcopy(ans)
answerAll = copy.deepcopy(ansAll)
pointer = -1
for i in ans:
    pointer = pointer + 1
    answer[pointer].insert(1,nameList[uuid.index(i[0])])
pointer = -1
for i in ansAll:
    pointer = pointer + 1
    answerAll[pointer].insert(1,nameList[uuid.index(i[0])])
del ans
del ansAll



login_out_data = []
for i in answer:
    success = False
    for i1 in login_out_data:
        if i[0] == i1[0][0]:
            login_out_data[login_out_data.index(i1)].append([i[0],i[1],i[2],i[3],i[4]])
            success = True
            continue
    if success == False:
        login_out_data.append([[i[0],i[1],i[2],i[3],i[4]]])
answer = copy.deepcopy(login_out_data)
del login_out_data



def isStayUpLate(start:str,end:str):
    if ('23:00:00' <= start <= '24:00:00') or ('00:00:00' <= end <= '06:00:00'):
        return True
    if ('23:00:00' <= end <= '24:00:00') or ('00:00:00' <= start <= '06:00:00'):
        return True
    return False



def fixbug(start:str,end:str):
    startDate = start.split(' ')[0]
    endDate = end.split(' ')[0]
    if startDate == endDate:
        return False
    else:
        start = start.split(' ')[1]
        end = end.split(' ')[1]
        if ('00:00:00' <= start <= '23:00:00') and ('06:00:00' <= end <= '24:00:00'):
            return True
        if ('00:00:00' <= end <= '23:00:00') and ('06:00:00' <= start <= '24:00:00'):
            return True



with open("统计结果.txt","w+",encoding='UTF-8') as file:
    file.write('Made By Happy2018new.\n')
    file.write('源代码使用遵循 MIT 协议.\n\n')
    file.write('登入及登出日志: \n')
    for i in answer:
        pointer = 0
        file.write(f'- 玩家: {i[0][1]} UUID: {i[0][0]}\n')
        for i1 in i:
            pointer = pointer + 1
            i1[2] = i1[2].replace('-','/')
            i1[3] = i1[3].replace('-','/')
            if ((isStayUpLate(i1[2].split(' ')[1],i1[3].split(' ')[1]) == True) or (fixbug(i1[2],i1[3]) == True)) and (i1[4] >= datetime.timedelta(minutes=30)):
                StayUpLate = '这家伙在熬夜…… 年轻人啊——记得注意自己的健康！'
            else:
                StayUpLate = '这个年轻人应该很健康吧？'
            if i1[4] >= datetime.timedelta(hours=24):
                StayUpLate = '这家伙在熬夜…… 年轻人啊——记得注意自己的健康！'
            i1[4] = str(i1[4])
            i1[4] = i1[4].replace('days','天')
            i1[4] = i1[4].replace('day','天')
            file.write(f'     - 序号 {pointer}\n')
            file.write(f'          - 自 {i1[2]} 上线直到 {i1[3]} 下线\n')
            file.write(f'          - 本次在线时间间隔: {i1[4]}\n')
            file.write(f'          - 健康评估: {StayUpLate}\n')
    file.write('\n\n\n合计数据: \n')
    pointer = -1
    for i in answerAll:
        pointer = pointer + 1
        i[2] = str(i[2])
        i[2] = i[2].replace('days','天')
        i[2] = i[2].replace('day','天')
        if pointer == len(answerAll) - 1:
            file.write(f'- 玩家名: {i[1]} UUID: {i[0]} 总在线时长: {i[2]}')
        else:
            file.write(f'- 玩家名: {i[1]} UUID: {i[0]} 总在线时长: {i[2]}\n')



print('完成：已成功进行归档整理并筛选出可能的不健康玩家\n感谢您使用 英伦小镇和幻想乡·健康观测平台 ！')
os.system("pause")
sys.exit()