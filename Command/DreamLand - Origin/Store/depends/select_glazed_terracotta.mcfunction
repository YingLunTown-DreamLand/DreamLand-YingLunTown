scoreboard players add glazed_terracotta store:select 1
execute as @a[c=1] if score glazed_terracotta store:select matches 17.. run scoreboard players set glazed_terracotta store:select 1

scoreboard players reset @a general:math
scoreboard players operation @a[c=1] general:math = glazed_terracotta store:select

execute as @a[scores={general:math=1}] run structure load store:select_glazed_terracotta_1 934 106 -1024
execute as @a[scores={general:math=2}] run structure load store:select_glazed_terracotta_2 934 106 -1024
execute as @a[scores={general:math=3}] run structure load store:select_glazed_terracotta_3 934 106 -1024
execute as @a[scores={general:math=4}] run structure load store:select_glazed_terracotta_4 934 106 -1024
execute as @a[scores={general:math=5}] run structure load store:select_glazed_terracotta_5 934 106 -1024
execute as @a[scores={general:math=6}] run structure load store:select_glazed_terracotta_6 934 106 -1024
execute as @a[scores={general:math=7}] run structure load store:select_glazed_terracotta_7 934 106 -1024
execute as @a[scores={general:math=8}] run structure load store:select_glazed_terracotta_8 934 106 -1024
execute as @a[scores={general:math=9}] run structure load store:select_glazed_terracotta_9 934 106 -1024
execute as @a[scores={general:math=10}] run structure load store:select_glazed_terracotta_10 934 106 -1024
execute as @a[scores={general:math=11}] run structure load store:select_glazed_terracotta_11 934 106 -1024
execute as @a[scores={general:math=12}] run structure load store:select_glazed_terracotta_12 934 106 -1024
execute as @a[scores={general:math=13}] run structure load store:select_glazed_terracotta_13 934 106 -1024
execute as @a[scores={general:math=14}] run structure load store:select_glazed_terracotta_14 934 106 -1024
execute as @a[scores={general:math=15}] run structure load store:select_glazed_terracotta_15 934 106 -1024
execute as @a[scores={general:math=16}] run structure load store:select_glazed_terracotta_16 934 106 -1024

tellraw @a[scores={general:math=1..15}] {"rawtext":[{"translate":"%%2","with":{"rawtext":[{"score":{"objective":"general:math","name":"@a[scores={general:math=1}]"}},{"text":"§a您已成功选择 §e白色带釉陶瓦"}]}},{"translate":"%%2","with":{"rawtext":[{"score":{"objective":"general:math","name":"@a[scores={general:math=2}]"}},{"text":"§a您已成功选择 §e淡灰色带釉陶瓦"}]}},{"translate":"%%2","with":{"rawtext":[{"score":{"objective":"general:math","name":"@a[scores={general:math=3}]"}},{"text":"§a您已成功选择 §e灰色带釉陶瓦"}]}},{"translate":"%%2","with":{"rawtext":[{"score":{"objective":"general:math","name":"@a[scores={general:math=4}]"}},{"text":"§a您已成功选择 §e黑色带釉陶瓦"}]}},{"translate":"%%2","with":{"rawtext":[{"score":{"objective":"general:math","name":"@a[scores={general:math=5}]"}},{"text":"§a您已成功选择 §e棕色带釉陶瓦"}]}},{"translate":"%%2","with":{"rawtext":[{"score":{"objective":"general:math","name":"@a[scores={general:math=6}]"}},{"text":"§a您已成功选择 §e红色带釉陶瓦"}]}},{"translate":"%%2","with":{"rawtext":[{"score":{"objective":"general:math","name":"@a[scores={general:math=7}]"}},{"text":"§a您已成功选择 §e橙色带釉陶瓦"}]}},{"translate":"%%2","with":{"rawtext":[{"score":{"objective":"general:math","name":"@a[scores={general:math=8}]"}},{"text":"§a您已成功选择 §e黄色带釉陶瓦"}]}},{"translate":"%%2","with":{"rawtext":[{"score":{"objective":"general:math","name":"@a[scores={general:math=9}]"}},{"text":"§a您已成功选择 §e黄绿色带釉陶瓦"}]}},{"translate":"%%2","with":{"rawtext":[{"score":{"objective":"general:math","name":"@a[scores={general:math=10}]"}},{"text":"§a您已成功选择 §e绿色带釉陶瓦"}]}},{"translate":"%%2","with":{"rawtext":[{"score":{"objective":"general:math","name":"@a[scores={general:math=11}]"}},{"text":"§a您已成功选择 §e青色带釉陶瓦"}]}},{"translate":"%%2","with":{"rawtext":[{"score":{"objective":"general:math","name":"@a[scores={general:math=12}]"}},{"text":"§a您已成功选择 §e淡蓝色带釉陶瓦"}]}},{"translate":"%%2","with":{"rawtext":[{"score":{"objective":"general:math","name":"@a[scores={general:math=13}]"}},{"text":"§a您已成功选择 §e蓝色带釉陶瓦"}]}},{"translate":"%%2","with":{"rawtext":[{"score":{"objective":"general:math","name":"@a[scores={general:math=14}]"}},{"text":"§a您已成功选择 §e紫色带釉陶瓦"}]}},{"translate":"%%2","with":{"rawtext":[{"score":{"objective":"general:math","name":"@a[scores={general:math=15}]"}},{"text":"§a您已成功选择 §e品红色带釉陶瓦"}]}}]}
tellraw @a[scores={general:math=16}] {"rawtext":[{"translate":"%%2","with":{"rawtext":[{"score":{"objective":"general:math","name":"@a[scores={general:math=16}]"}},{"text":"§a您已成功选择 §e粉红色带釉陶瓦"}]}}]}

scoreboard players reset @a[scores={general:math=1..16}] general:math