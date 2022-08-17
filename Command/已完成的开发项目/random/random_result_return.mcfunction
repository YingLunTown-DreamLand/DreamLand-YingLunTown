scoreboard players remove @s random:ws 1
execute @s[scores={random:ws=1..}] ~ ~ ~ scoreboard players operation @s random:wsr *= ten random
execute @s[scores={random:ws=1..}] ~ ~ ~ function random_result_return
# random_result_return