# depends/changeIssue() -> None

# Install
# in the commandblockplace, as a repeating function

# Start Condition
# testfor @a[tag=DeepSleep:changeIssue,tag=!DeepSleep:changeIssue_request_lock,c=1] == Success







scoreboard objectives add ds:screenTime dummy
# 此计分板上记录的分数用于记录显示题目的标题的下次刷新时间
# 考虑到高频刷新显示可能比较卡，所以每隔 14 gameticks 刷新一次
scoreboard objectives add ds:progress dummy
# 此计分板上记录的分数用于记录答题进度
# 1..2, 3..4, 5..6 分别对应 小学, 初中, 高中





execute @a[tag=DeepSleep:changeIssue,tag=!DeepSleep:changeIssue_request_lock,rm=0] ~ ~ ~ tag @s add DeepSleep:in_overworld
execute @a[tag=DeepSleep:changeIssue,tag=!DeepSleep:changeIssue_request_lock,tag=!DeepSleep:in_overworld] ~ ~ ~ tag @s remove DeepSleep:changeIssue
tag @a[tag=DeepSleep:in_overworld] remove DeepSleep:in_overworld
# 筛除不在主世界但仍然在请求本函数(depends/changeIssue)的玩家
# 虽然这么做是没有必要的，但我想我应该避免一些奇奇怪怪的情况
# 管理员要是安分点就没这事了:(




execute @a[tag=DeepSleep:changeIssue,tag=!DeepSleep:changeIssue_request_lock] ~ ~ ~ scoreboard players add @s ds:progress 0
# 初始化分数
tag @a[tag=DeepSleep:changeIssue,tag=!DeepSleep:changeIssue_request_lock,c=1] add DeepSleep:testPlayerNum
scoreboard objectives remove ds:testPlayerNum
scoreboard objectives add ds:testPlayerNum
execute @a[tag=DeepSleep:changeIssue,tag=!DeepSleep:changeIssue_request_lock] ~ ~ ~ scoreboard players add @a[tag=DeepSleep:testPlayerNum] ds:testPlayerNum 1
# 计算本函数(depends/changeIssue)处理的玩家数量，保存在 @a[tag=DeepSleep:testPlayerNum] 的 ds:testPlayerNum 中
execute @a[tag=DeepSleep:testPlayerNum,scores={ds:testPlayerNum=2..}] ~ ~ ~ tellraw @a[tag=DeepSleep:changeIssue,tag=!DeepSleep:changeIssue_request_lock,scores={ds:progress=1..}] {"rawtext":[{"text":"§cDeepSleep/Panic: Process two players at once, please try again later!\nRequested by FUNC(depends/changeIssue)"}]}
execute @a[tag=DeepSleep:testPlayerNum,scores={ds:testPlayerNum=2..}] ~ ~ ~ execute @a[tag=DeepSleep:changeIssue,tag=!DeepSleep:changeIssue_request_lock,scores={ds:progress=1..}] ~ ~ ~ playsound random.break @s ~ ~ ~ 1.00 1.00 1.00
execute @a[tag=DeepSleep:testPlayerNum,scores={ds:testPlayerNum=2..}] ~ ~ ~ tag @a[tag=DeepSleep:changeIssue,tag=!DeepSleep:changeIssue_request_lock] remove DeepSleep:changeIssue
tag @a[tag=DeepSleep:testPlayerNum] remove DeepSleep:testPlayerNum
# 如果本函数(depends/changeIssue)处理的玩家数量超过 1 时视为处理时发生了错误
# 如果确认发生了错误，则显示 panic message ，同时播放音效，然后进行其他一些必要的行为
# 这里考虑的是一个非常极端的情况，不过如果出现了的话……
scoreboard objectives remove ds:testPlayerNum
scoreboard objectives add ds:testPlayerNum
# 虽然这是没有必要的，但我还是希望计分板干净点
 // 这部分考虑用记录 last player 来解决问题，这样不管处理了多少玩家，都可以识别出谁才是需要被处理的玩家
 // 毕竟谁也不希望触发 program panic
 // 不过这需要 uid 的依赖库了，害
 // 不过今天不打算写了，写那个锁写死我了（虽然是节省了命令方块，但是要写锁啊，锁！！！）
 // 嗯…… depends/getItemFromChest 干脆也改用 last player 法来精确定位处理者吧，不然看起来不太优雅





execute @a[tag=DeepSleep:changeIssue,tag=!DeepSleep:changeIssue_request_lock] ~ ~ ~ scoreboard players add @s ds:progress 1
# prepare

execute @a[tag=DeepSleep:changeIssue,tag=!DeepSleep:changeIssue_request_lock] ~ ~ ~ summon minecraft:armor_stand "ds:chest_O_point" 0.0 0.0 0.0
execute @a[tag=DeepSleep:changeIssue,tag=!DeepSleep:changeIssue_request_lock] ~ ~ ~ tag @e[name="ds:chest_O_point",type=minecraft:armor_stand,c=1,tag="",x=0.0,y=0.0,z=0.0,dx=0] add ds:chest_O_point
# "@e[tag=ds:chest_O_point]": armor_stand

execute @a[tag=DeepSleep:changeIssue,tag=!DeepSleep:changeIssue_request_lock,scores={ds:progress=1..2}] ~ ~ ~ scoreboard players random @e[tag=ds:chest_O_point] ds:itemLocation 0 26
# "ds:chestPlace": int

execute @a[tag=DeepSleep:changeIssue,tag=!DeepSleep:changeIssue_request_lock,scores={ds:progress=1..2}] ~ ~ ~ scoreboard players set @e[tag=ds:chest_O_point] ds:chestPlace 1
execute @a[tag=DeepSleep:changeIssue,tag=!DeepSleep:changeIssue_request_lock,scores={ds:progress=3..4}] ~ ~ ~ scoreboard players set @e[tag=ds:chest_O_point] ds:chestPlace 2
execute @a[tag=DeepSleep:changeIssue,tag=!DeepSleep:changeIssue_request_lock,scores={ds:progress=5..6}] ~ ~ ~ scoreboard players set @e[tag=ds:chest_O_point] ds:chestPlace 3
# "ds:itemLocation": int

execute @a[tag=DeepSleep:changeIssue,tag=!DeepSleep:changeIssue_request_lock] ~ ~ ~ tag @s add DeepSleep:getItemFromChest
# 请求 API 接口 - depends/getItemFromChest


execute @a[tag=DeepSleep:changeIssue,tag=!DeepSleep:changeIssue_request_lock,rm=0,scores={ds:progress=5..6}] ~ ~ ~ scoreboard players set @e[tag=ds:chest_O_point] ds:chestPlace 3
execute @a[tag=DeepSleep:changeIssue,tag=!DeepSleep:changeIssue_request_lock] ~ ~ ~ scoreboard players set @s ds:screenTime 1
# 要求重新显示题目
# 因为换了题目，所以肯定要重新显示一下题目，而实现原理就是把下次刷新时间改成接近 0 的值





execute @a[tag=DeepSleep:changeIssue,tag=!DeepSleep:changeIssue_request_lock,rm=0] ~ ~ ~ tag @s add DeepSleep:changeIssue_request_lock
# 由于本函数(depends/changeIssue)不完全安全，因此需要上锁
# 固然，拥有标签 DeepSleep:changeIssue_request_lock 的玩家不会被本函数(depends/changeIssue)处理，直到函数 depends/getItemFromChest 解锁


execute @a[tag=DeepSleep:changeIssue,tag=!DeepSleep:changeIssue_request_lock] ~ ~ ~ tag @s remove DeepSleep:changeIssue
# 善后性处理