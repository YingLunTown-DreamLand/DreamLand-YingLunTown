scoreboard players add terracotta store:select 1
execute as @a[c=1] if score terracotta store:select matches 18.. run scoreboard players set terracotta store:select 1

scoreboard players reset @a general:math
scoreboard players operation @a[c=1] general:math = terracotta store:select

execute as @a[scores={general:math=1}] run structure load store:select_terracotta_1 907 106 -1024
execute as @a[scores={general:math=2}] run structure load store:select_terracotta_2 907 106 -1024
execute as @a[scores={general:math=3}] run structure load store:select_terracotta_3 907 106 -1024
execute as @a[scores={general:math=4}] run structure load store:select_terracotta_4 907 106 -1024
execute as @a[scores={general:math=5}] run structure load store:select_terracotta_5 907 106 -1024
execute as @a[scores={general:math=6}] run structure load store:select_terracotta_6 907 106 -1024
execute as @a[scores={general:math=7}] run structure load store:select_terracotta_7 907 106 -1024
execute as @a[scores={general:math=8}] run structure load store:select_terracotta_8 907 106 -1024
execute as @a[scores={general:math=9}] run structure load store:select_terracotta_9 907 106 -1024
execute as @a[scores={general:math=10}] run structure load store:select_terracotta_10 907 106 -1024
execute as @a[scores={general:math=11}] run structure load store:select_terracotta_11 907 106 -1024
execute as @a[scores={general:math=12}] run structure load store:select_terracotta_12 907 106 -1024
execute as @a[scores={general:math=13}] run structure load store:select_terracotta_13 907 106 -1024
execute as @a[scores={general:math=14}] run structure load store:select_terracotta_14 907 106 -1024
execute as @a[scores={general:math=15}] run structure load store:select_terracotta_15 907 106 -1024
execute as @a[scores={general:math=16}] run structure load store:select_terracotta_16 907 106 -1024
execute as @a[scores={general:math=17}] run structure load store:select_terracotta_17 907 106 -1024

tellraw @a[scores={general:math=1..16}] {"rawtext":[{"translate":"%%2","with":{"rawtext":[{"score":{"objective":"general:math","name":"@a[scores={general:math=1}]"}},{"text":"§a您已成功选择 §e陶瓦"}]}},{"translate":"%%2","with":{"rawtext":[{"score":{"objective":"general:math","name":"@a[scores={general:math=2}]"}},{"text":"§a您已成功选择 §e白色陶瓦"}]}},{"translate":"%%2","with":{"rawtext":[{"score":{"objective":"general:math","name":"@a[scores={general:math=3}]"}},{"text":"§a您已成功选择 §e淡灰色陶瓦"}]}},{"translate":"%%2","with":{"rawtext":[{"score":{"objective":"general:math","name":"@a[scores={general:math=4}]"}},{"text":"§a您已成功选择 §e灰色陶瓦"}]}},{"translate":"%%2","with":{"rawtext":[{"score":{"objective":"general:math","name":"@a[scores={general:math=5}]"}},{"text":"§a您已成功选择 §e黑色陶瓦"}]}},{"translate":"%%2","with":{"rawtext":[{"score":{"objective":"general:math","name":"@a[scores={general:math=6}]"}},{"text":"§a您已成功选择 §e棕色陶瓦"}]}},{"translate":"%%2","with":{"rawtext":[{"score":{"objective":"general:math","name":"@a[scores={general:math=7}]"}},{"text":"§a您已成功选择 §e红色陶瓦"}]}},{"translate":"%%2","with":{"rawtext":[{"score":{"objective":"general:math","name":"@a[scores={general:math=8}]"}},{"text":"§a您已成功选择 §e橙色陶瓦"}]}},{"translate":"%%2","with":{"rawtext":[{"score":{"objective":"general:math","name":"@a[scores={general:math=9}]"}},{"text":"§a您已成功选择 §e黄色陶瓦"}]}},{"translate":"%%2","with":{"rawtext":[{"score":{"objective":"general:math","name":"@a[scores={general:math=10}]"}},{"text":"§a您已成功选择 §e黄绿色陶瓦"}]}},{"translate":"%%2","with":{"rawtext":[{"score":{"objective":"general:math","name":"@a[scores={general:math=11}]"}},{"text":"§a您已成功选择 §e绿色陶瓦"}]}},{"translate":"%%2","with":{"rawtext":[{"score":{"objective":"general:math","name":"@a[scores={general:math=12}]"}},{"text":"§a您已成功选择 §e青色陶瓦"}]}},{"translate":"%%2","with":{"rawtext":[{"score":{"objective":"general:math","name":"@a[scores={general:math=13}]"}},{"text":"§a您已成功选择 §e淡蓝色陶瓦"}]}},{"translate":"%%2","with":{"rawtext":[{"score":{"objective":"general:math","name":"@a[scores={general:math=14}]"}},{"text":"§a您已成功选择 §e蓝色陶瓦"}]}},{"translate":"%%2","with":{"rawtext":[{"score":{"objective":"general:math","name":"@a[scores={general:math=15}]"}},{"text":"§a您已成功选择 §e紫色陶瓦"}]}},{"translate":"%%2","with":{"rawtext":[{"score":{"objective":"general:math","name":"@a[scores={general:math=16}]"}},{"text":"§a您已成功选择 §e品红色陶瓦"}]}}]}
tellraw @a[scores={general:math=17}] {"rawtext":[{"translate":"%%2","with":{"rawtext":[{"score":{"objective":"general:math","name":"@a[scores={general:math=17}]"}},{"text":"§a您已成功选择 §e粉红色陶瓦"}]}}]}

scoreboard players reset @a[scores={general:math=1..17}] general:math