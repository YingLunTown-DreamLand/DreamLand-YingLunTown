# depends/getItemFromChest(
#    "ds:itemLocation": int, "ds:chestPlace": int, "@e[tag=ds:chest_O_point]": armor_stand
# ) -> "DeepSleep:getItemFromChestReturn": mcstructure
# example: "DeepSleep:getItemFromChestReturn": mcstructure   =   [item: ANY(tag="DeepSleep:itemIssue")]

# Environment(Initial States)
# "@e[tag=ds:chest_O_point]": armor_stand |
#                  chest                  | chest | chest | chest | chest | chest

# Install
# in the commandblockplace, as a repeating function

# Start Condition
# testfor @e[tag=ds:chest_O_point] == Success
# or
# testfor @e[tag=DeepSleep:getItemFromChest,c=1] == Success







scoreboard objectives add ds:itemLocation dummy
# 此计分板上记录的分数用于访问箱子中指定栏位上的物品
scoreboard objectives add ds:chestPlace dummy
# 此计分板上记录的分数用于访问指定的箱子
scoreboard objectives add ds:testPlayerNum dummy
# 本函数(depends/getItemFromChest)不一定安全，因为此时可能会处理超过 1 个以上的玩家，而这是非预期行为
# 为了解决这个问题，需要这个计分板计算本函数(depends/getItemFromChest)处理的玩家数量。如果超过 1 个，则应该执行一些特定的行为
# scoreboards add







# 这里考虑需要被访问的箱子都在一条直线上
# 然后呢，箱子有 6 个，向 x+ 方向延申(实际上这里应该写一个 api 用于自定义延申方向，便于后续修改，不过我懒就不写了)
# 默认 @e[tag=ds:chest_O_point] 代表的是第一个箱子上的实体，然后让这个实体向 x+ 方向移动以达到访问箱子的目的
# 应该说明的是，这个 @e[tag=ds:chest_O_point] 是一个 盔甲架 ，且得在箱子上方一格处

# 前 3 个箱子存放题目；后 3 个箱子存放答案
# 每 1 个箱子代表 1 个年龄段，总计 3 个年龄段，分别为 小学 初中 高中

# @e[tag=ds:chest_O_point] 在 ds:itemLocation 的分数代表要访问的栏位，范围在 0 ~ 26 (一个箱子 27 个格子)
# @e[tag=ds:chest_O_point] 在 ds:chestPlace 的分数代表要访问的箱子，范围在 0 ~ 5





scoreboard players add @e[tag=ds:chest_O_point] ds:itemLocation 0
scoreboard players add @e[tag=ds:chest_O_point] ds:chestPlace 0
# 还是先初始化下分数吧，虽然不是必须的



execute @e[tag=ds:chest_O_point,scores={ds:chestPlace=4..}] ~ ~ ~ tp ~4.0 ~ ~
execute @e[tag=ds:chest_O_point,scores={ds:chestPlace=4..}] ~ ~ ~ scoreboard players remove @s ds:chestPlace 4
execute @e[tag=ds:chest_O_point,scores={ds:chestPlace=2..}] ~ ~ ~ tp ~2.0 ~ ~
execute @e[tag=ds:chest_O_point,scores={ds:chestPlace=2..}] ~ ~ ~ scoreboard players remove @s ds:chestPlace 2
execute @e[tag=ds:chest_O_point,scores={ds:chestPlace=1..}] ~ ~ ~ tp ~1.0 ~ ~
execute @e[tag=ds:chest_O_point,scores={ds:chestPlace=1..}] ~ ~ ~ scoreboard players remove @s ds:chestPlace 1
# 二分法处理实体 @e[tag=ds:chest_O_point]
# 现在这个实体应该达到了我们要访问的这个箱子了
# 这种写法应该更加灵活和高级一点，毕竟实际可以访问的范围在 0 ~ 7 (不过也没超出来多少就是了)



execute @e[tag=ds:chest_O_point] ~ ~ ~ clone ~ ~-1 ~ ~ ~-1 ~ ~ ~2 ~
# 把要被访问的箱子复制到 @e[tag=ds:chest_O_point] 的 (~,~2,~) 位置，也就是它头部上方一格处


execute @e[tag=ds:chest_O_point,scores={ds:itemLocation=!0}] ~ ~ ~ replaceitem block ~ ~2.0 ~ slot.container 0 minecraft:air
execute @e[tag=ds:chest_O_point,scores={ds:itemLocation=!1}] ~ ~ ~ replaceitem block ~ ~2.0 ~ slot.container 1 minecraft:air
execute @e[tag=ds:chest_O_point,scores={ds:itemLocation=!2}] ~ ~ ~ replaceitem block ~ ~2.0 ~ slot.container 2 minecraft:air
execute @e[tag=ds:chest_O_point,scores={ds:itemLocation=!3}] ~ ~ ~ replaceitem block ~ ~2.0 ~ slot.container 3 minecraft:air
execute @e[tag=ds:chest_O_point,scores={ds:itemLocation=!4}] ~ ~ ~ replaceitem block ~ ~2.0 ~ slot.container 4 minecraft:air
execute @e[tag=ds:chest_O_point,scores={ds:itemLocation=!5}] ~ ~ ~ replaceitem block ~ ~2.0 ~ slot.container 5 minecraft:air
execute @e[tag=ds:chest_O_point,scores={ds:itemLocation=!6}] ~ ~ ~ replaceitem block ~ ~2.0 ~ slot.container 6 minecraft:air
execute @e[tag=ds:chest_O_point,scores={ds:itemLocation=!7}] ~ ~ ~ replaceitem block ~ ~2.0 ~ slot.container 7 minecraft:air
execute @e[tag=ds:chest_O_point,scores={ds:itemLocation=!8}] ~ ~ ~ replaceitem block ~ ~2.0 ~ slot.container 8 minecraft:air
execute @e[tag=ds:chest_O_point,scores={ds:itemLocation=!9}] ~ ~ ~ replaceitem block ~ ~2.0 ~ slot.container 9 minecraft:air
execute @e[tag=ds:chest_O_point,scores={ds:itemLocation=!10}] ~ ~ ~ replaceitem block ~ ~2.0 ~ slot.container 10 minecraft:air
execute @e[tag=ds:chest_O_point,scores={ds:itemLocation=!11}] ~ ~ ~ replaceitem block ~ ~2.0 ~ slot.container 11 minecraft:air
execute @e[tag=ds:chest_O_point,scores={ds:itemLocation=!12}] ~ ~ ~ replaceitem block ~ ~2.0 ~ slot.container 12 minecraft:air
execute @e[tag=ds:chest_O_point,scores={ds:itemLocation=!13}] ~ ~ ~ replaceitem block ~ ~2.0 ~ slot.container 13 minecraft:air
execute @e[tag=ds:chest_O_point,scores={ds:itemLocation=!14}] ~ ~ ~ replaceitem block ~ ~2.0 ~ slot.container 14 minecraft:air
execute @e[tag=ds:chest_O_point,scores={ds:itemLocation=!15}] ~ ~ ~ replaceitem block ~ ~2.0 ~ slot.container 15 minecraft:air
execute @e[tag=ds:chest_O_point,scores={ds:itemLocation=!16}] ~ ~ ~ replaceitem block ~ ~2.0 ~ slot.container 16 minecraft:air
execute @e[tag=ds:chest_O_point,scores={ds:itemLocation=!17}] ~ ~ ~ replaceitem block ~ ~2.0 ~ slot.container 17 minecraft:air
execute @e[tag=ds:chest_O_point,scores={ds:itemLocation=!18}] ~ ~ ~ replaceitem block ~ ~2.0 ~ slot.container 18 minecraft:air
execute @e[tag=ds:chest_O_point,scores={ds:itemLocation=!19}] ~ ~ ~ replaceitem block ~ ~2.0 ~ slot.container 19 minecraft:air
execute @e[tag=ds:chest_O_point,scores={ds:itemLocation=!20}] ~ ~ ~ replaceitem block ~ ~2.0 ~ slot.container 20 minecraft:air
execute @e[tag=ds:chest_O_point,scores={ds:itemLocation=!21}] ~ ~ ~ replaceitem block ~ ~2.0 ~ slot.container 21 minecraft:air
execute @e[tag=ds:chest_O_point,scores={ds:itemLocation=!22}] ~ ~ ~ replaceitem block ~ ~2.0 ~ slot.container 22 minecraft:air
execute @e[tag=ds:chest_O_point,scores={ds:itemLocation=!23}] ~ ~ ~ replaceitem block ~ ~2.0 ~ slot.container 23 minecraft:air
execute @e[tag=ds:chest_O_point,scores={ds:itemLocation=!24}] ~ ~ ~ replaceitem block ~ ~2.0 ~ slot.container 24 minecraft:air
execute @e[tag=ds:chest_O_point,scores={ds:itemLocation=!25}] ~ ~ ~ replaceitem block ~ ~2.0 ~ slot.container 25 minecraft:air
execute @e[tag=ds:chest_O_point,scores={ds:itemLocation=!26}] ~ ~ ~ replaceitem block ~ ~2.0 ~ slot.container 26 minecraft:air
# 现在 @e[tag=ds:chest_O_point] 的 (~,~2,~) 处的箱子应该只有 1 个物品了，而这个物品正是我们需要的


execute @e[tag=ds:chest_O_point] ~ ~2.0 ~ tag @e[type=minecraft:item,dx=0] add DeepSleep:unclean
execute @e[tag=ds:chest_O_point] ~ ~2.0 ~ setblock ~ ~ ~ minecraft:air 0 destroy
execute @e[tag=ds:chest_O_point] ~ ~2.0 ~ tag @e[type=minecraft:item,dx=0,c=1] add DeepSleep:itemIssue
execute @e[tag=ds:chest_O_point] ~ ~2.0 ~ structure save DeepSleep:getItemFromChestReturn ~ ~ ~ ~ ~ ~ true disk false
execute @e[tag=ds:chest_O_point] ~ ~2.0 ~ kill @e[type=minecraft:item,dx=0,tag=!DeepSleep:unclean]
tag @a[tag=DeepSleep:unclean] remove DeepSleep:unclean
# 现在已经拿到了我们想要拿的物品了
# 为了更好的拓展性，我现在把这个物品保存在 DeepSleep:getItemFromChestReturn 这个结构中，同时这个实体带有标签 DeepSleep:itemIssue
# 这个结构用于存放函数 depends/getItemFromChest 的返回值，其内部只包含一个实体，也就是需要拿取的物品


execute @e[tag=ds:chest_O_point] ~ ~ ~ scoreboard players reset @s
execute @e[tag=ds:chest_O_point] ~ ~ ~ tp ~ -32767.0 ~
execute @e[tag=ds:chest_O_point] ~ ~ ~ kill @s
# 一些善后性的处理
# 可能有人觉得 reset 分数是没必要的，不过可能会出现分数残留，所以安全起见还是 reset 一下


tag @a[tag=DeepSleep:getItemFromChest,c=1] add DeepSleep:testPlayerNum
scoreboard objectives remove ds:testPlayerNum
scoreboard objectives add ds:testPlayerNum
execute @a[tag=DeepSleep:getItemFromChest] ~ ~ ~ scoreboard players add @a[tag=DeepSleep:testPlayerNum] ds:testPlayerNum 1
# 计算本函数(depends/getItemFromChest)处理的玩家数量，保存在 @a[tag=DeepSleep:testPlayerNum] 的 ds:testPlayerNum 中
execute @a[tag=DeepSleep:testPlayerNum,scores={ds:testPlayerNum=2..}] ~ ~ ~ scoreboard players set @a[tag=DeepSleep:getItemFromChest] ds:screenTime 1
execute @a[tag=DeepSleep:testPlayerNum,scores={ds:testPlayerNum=..1}] ~ ~ ~ tag @a[tag=DeepSleep:getItemFromChest] add DeepSleep:getItemFromChest_return_true
tag @a[tag=DeepSleep:testPlayerNum] remove DeepSleep:testPlayerNum
# 如果本函数(depends/getItemFromChest)处理的玩家数量超过 1 个，则不会返回 DeepSleep:getItemFromChest_return_true ，但会令显示题目的标题的下次刷新时间缩短到 1
# 玩家获得 DeepSleep:getItemFromChest_return_true 标签后表示此函数按预期执行
# 没按预期执行就是处理的玩家数量超过了 1 个，当然也可能是其他奇奇怪怪的情况，我也不是很清楚（
# 这里考虑的是一个非常极端的情况，不过如果出现了的话……
scoreboard objectives remove ds:testPlayerNum
scoreboard objectives add ds:testPlayerNum
# 虽然这是没有必要的，但我还是希望计分板干净点


tag @a[tag=DeepSleep:getItemFromChest,tag=DeepSleep:changeIssue_request_lock] remove DeepSleep:changeIssue_request_lock
# 解锁
# 现在可以调用函数 depends/changeIssue 了
tag @a[tag=DeepSleep:getItemFromChest] remove DeepSleep:getItemFromChest
# 善后