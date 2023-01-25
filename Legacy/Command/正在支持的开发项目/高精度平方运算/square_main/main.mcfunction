execute @e[scores={square=..-1},tag=square:helper] ~ ~ ~ tag @s add square:fu
execute @e[tag=square:fu] ~ ~ ~ scoreboard players set ls square -1
execute @e[tag=square:fu] ~ ~ ~ scoreboard players operation @s square *= ls square
# abs(num)

scoreboard players add int square 0
scoreboard players add b square 0
scoreboard players add c square 0
# 初始化分数
scoreboard players operation save square = @e[tag=square:helper] square
# 备份分数
scoreboard players set ls square 1000000
scoreboard players operation @e[tag=square:helper] square /= ls square
scoreboard players operation int square = @e[tag=square:helper] square
scoreboard players operation @e[tag=square:helper] square = save square
# 得出整数位
scoreboard players operation @e[tag=square:helper] square %= ls square
scoreboard players operation float_save square = @e[tag=square:helper] square
scoreboard players operation save square = @e[tag=square:helper] square
# 得出小数部分
scoreboard players set ls square 1000
scoreboard players operation @e[tag=square:helper] square /= ls square
scoreboard players operation b square = @e[tag=square:helper] square
scoreboard players operation @e[tag=square:helper] square = save square
# 得出前3位小数
scoreboard players operation @e[tag=square:helper] square %= ls square
scoreboard players operation c square = @e[tag=square:helper] square
# 得出后三位小数
# 提取 a.bc 中的 a(int),b,c

scoreboard players operation ans square = int square
scoreboard players operation ans square *= int square
scoreboard players set ls square 1000000
scoreboard players operation ans square *= ls square
# ans = a*a*10^6
scoreboard players operation ans1 square = int square
scoreboard players operation ans1 square *= b square
scoreboard players set ls square 2
scoreboard players operation ans1 square *= ls square
scoreboard players set ls square 1000
scoreboard players operation ans1 square *= ls square
# ans1 = 2*a*b*10^3
scoreboard players operation ans2 square = int square
scoreboard players operation ans2 square *= c square
scoreboard players set ls square 2
scoreboard players operation ans2 square *= ls square
# ans2 = 2*a*c
scoreboard players operation ans3 square = b square
scoreboard players operation ans3 square *= b square
# ans3 = b^2
scoreboard players operation ans square += ans1 square
scoreboard players operation ans square += ans2 square
scoreboard players operation ans square += ans3 square
# ans = ans + ans1 + ans2 + ans3
scoreboard players operation ans1 square = c square
scoreboard players operation ans1 square *= c square
# ans1 = c^2
scoreboard players operation ans2 square = b square
scoreboard players operation ans2 square *= c square
scoreboard players set ls square 2
scoreboard players operation ans2 square *= ls square
scoreboard players set ls square 1000
scoreboard players operation ans2 square *= ls square
# ans2 = 2*b*c*10^3
scoreboard players operation ans1 square += ans2 square
scoreboard players set ls square 1000000
scoreboard players operation ans1 square /= ls square
# ans1 = (ans1 + ans2) * 10^(-6)
scoreboard players operation ans square += ans1 square
# ans = ans + ans1
# 计算 pow(num,2)

scoreboard players add intA square 0
scoreboard players add bA square 0
scoreboard players add cA square 0
# 初始化分数
scoreboard players operation save square = ans square
# 备份分数
scoreboard players set ls square 1000000
scoreboard players operation @e[tag=square:helper] square = ans square
scoreboard players operation @e[tag=square:helper] square /= ls square
scoreboard players operation intA square = @e[tag=square:helper] square
scoreboard players operation @e[tag=square:helper] square = save square
# 得出整数位
scoreboard players operation @e[tag=square:helper] square %= ls square
scoreboard players operation float square = @e[tag=square:helper] square
# 得出小数部分
# 提取 ans 中的 aA(intA),float

function square_main/screen
 # 开发者选项：
 # scoreboard players operation <Name> <Objective> = ans square
 # <Name> <Objective> = pow(num,2)
# 显示结果

scoreboard players reset * square
scoreboard players set num square 0
# 释放数据