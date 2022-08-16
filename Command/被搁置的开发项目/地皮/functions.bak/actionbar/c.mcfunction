execute @a[scores={uw:actionbar=10}] ~ ~ ~ scoreboard objectives add uw:sm2_number dummy
execute @a[scores={uw:actionbar=10}] ~ ~ ~ scoreboard objectives add uw:act_math_jz dummy
execute @a[scores={uw:actionbar=10}] ~ ~ ~ scoreboard objectives add uw:act_math dummy
execute @a[scores={uw:actionbar=10}] ~ ~ ~ scoreboard objectives add uw:act_math_0 dummy
#scoreboards_add
execute @a[scores={uw:actionbar=10}] ~ ~ ~ scoreboard players set @s uw:sm2_number 62500
execute @a[scores={uw:actionbar=10}] ~ ~ ~ scoreboard players operation @s uw:sm2_number -= @s uw:m2_number
#1
execute @a[scores={uw:actionbar=10}] ~ ~ ~ scoreboard players set @s uw:act_math_jz 1200
execute @a[scores={uw:actionbar=10}] ~ ~ ~ scoreboard players operation @s uw:act_math = @s uw:time
execute @a[scores={uw:actionbar=10}] ~ ~ ~ scoreboard players operation @s uw:act_math /= @s uw:act_math_jz
#2
execute @a[scores={uw:actionbar=10}] ~ ~ ~ scoreboard players operation @s uw:act_math_0 = @s uw:time
execute @a[scores={uw:actionbar=10}] ~ ~ ~ scoreboard players operation @s uw:act_math_0 %= @s uw:act_math_jz
execute @a[scores={uw:actionbar=10}] ~ ~ ~ scoreboard players set @s uw:act_math_jz 20
execute @a[scores={uw:actionbar=10}] ~ ~ ~ scoreboard players operation @s uw:act_math_0 /= @s uw:act_math_jz
#prepare
execute @a[scores={uw:actionbar=10}] ~ ~ ~ titleraw @s actionbar {"rawtext":[{"text":"Under World System\n您当前正在使用默认创建方法创建地皮\n您目前还可以创建面积为 "},{"score":{"objective":"uw:sm2_number","name":"@s"}},{"text":"m² 的地皮(单位：1m=1方块)\n请前往矩形对角线处一位置以记录第1组坐标\n"},{"score":{"objective":"uw:act_math","name":"@s"}},{"text":" 分钟 "},{"score":{"objective":"uw:act_math_0","name":"@s"}},{"text":" 秒后此页面将自动关闭\n扔出雪球确认记录坐标\n低头至最低点返回上一页\n温馨提示：\n1. 记录坐标后，无论最后是否创建了地皮，要创建下一个地皮均需要等待 15 分钟\n2. 地皮的长和宽的最大值为 55m\n3. 将要创建的地皮所在的区块需要在加载区域内，否则无法正常创建"}]}
#screen
execute @a[scores={uw:actionbar=10}] ~ ~ ~ scoreboard objectives remove uw:sm2_number
execute @a[scores={uw:actionbar=10}] ~ ~ ~ scoreboard objectives remove uw:act_math_jz
execute @a[scores={uw:actionbar=10}] ~ ~ ~ scoreboard objectives remove uw:act_math
execute @a[scores={uw:actionbar=10}] ~ ~ ~ scoreboard objectives remove uw:act_math_0
#scoreboards_remove