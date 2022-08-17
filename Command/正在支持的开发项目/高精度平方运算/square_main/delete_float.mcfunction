execute @s[tag=square:continue] ~ ~ ~ tag @s remove square:continue
# 清理标记

scoreboard players operation @s square:delete = i square:delete
# 同步分数

scoreboard players set num square:delete 10
scoreboard players operation @s square:delete %= num square:delete
execute @s[scores={square:delete=0}] ~ ~ ~ tag @s add square:continue
# 判断是否可以移除

execute @s[tag=square:continue] ~ ~ ~ scoreboard players operation @s square:delete = i square:delete
execute @s[tag=square:continue] ~ ~ ~ scoreboard players operation @s square:delete /= num square:delete
execute @s[tag=square:continue] ~ ~ ~ scoreboard players operation i square:delete = @s square:delete
# 移除多余的0

execute @s[tag=square:continue,scores={square:delete=10..}] ~ ~ ~ function square_main/delete_float
# 递归