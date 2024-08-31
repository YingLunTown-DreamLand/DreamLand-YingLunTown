scoreboard players add concrete store:select 1
execute as @a[c=1] if score concrete store:select matches 17.. run scoreboard players set concrete store:select 1

scoreboard players reset @a general:math
scoreboard players operation @a[c=1] general:math = concrete store:select

execute as @a[scores={general:math=1}] run structure load store:select_concrete_1 913 106 -1024
execute as @a[scores={general:math=2}] run structure load store:select_concrete_2 913 106 -1024
execute as @a[scores={general:math=3}] run structure load store:select_concrete_3 913 106 -1024
execute as @a[scores={general:math=4}] run structure load store:select_concrete_4 913 106 -1024
execute as @a[scores={general:math=5}] run structure load store:select_concrete_5 913 106 -1024
execute as @a[scores={general:math=6}] run structure load store:select_concrete_6 913 106 -1024
execute as @a[scores={general:math=7}] run structure load store:select_concrete_7 913 106 -1024
execute as @a[scores={general:math=8}] run structure load store:select_concrete_8 913 106 -1024
execute as @a[scores={general:math=9}] run structure load store:select_concrete_9 913 106 -1024
execute as @a[scores={general:math=10}] run structure load store:select_concrete_10 913 106 -1024
execute as @a[scores={general:math=11}] run structure load store:select_concrete_11 913 106 -1024
execute as @a[scores={general:math=12}] run structure load store:select_concrete_12 913 106 -1024
execute as @a[scores={general:math=13}] run structure load store:select_concrete_13 913 106 -1024
execute as @a[scores={general:math=14}] run structure load store:select_concrete_14 913 106 -1024
execute as @a[scores={general:math=15}] run structure load store:select_concrete_15 913 106 -1024
execute as @a[scores={general:math=16}] run structure load store:select_concrete_16 913 106 -1024

tellraw @a[scores={general:math=1..16}] {"rawtext":[{"translate":"%%2","with":{"rawtext":[{"score":{"objective":"general:math","name":"@a[scores={general:math=1}]"}},{"text":"§a您已成功选择 §e白色混凝土"}]}},{"translate":"%%2","with":{"rawtext":[{"score":{"objective":"general:math","name":"@a[scores={general:math=2}]"}},{"text":"§a您已成功选择 §e淡灰色混凝土"}]}},{"translate":"%%2","with":{"rawtext":[{"score":{"objective":"general:math","name":"@a[scores={general:math=3}]"}},{"text":"§a您已成功选择 §e灰色混凝土"}]}},{"translate":"%%2","with":{"rawtext":[{"score":{"objective":"general:math","name":"@a[scores={general:math=4}]"}},{"text":"§a您已成功选择 §e黑色混凝土"}]}},{"translate":"%%2","with":{"rawtext":[{"score":{"objective":"general:math","name":"@a[scores={general:math=5}]"}},{"text":"§a您已成功选择 §e棕色混凝土"}]}},{"translate":"%%2","with":{"rawtext":[{"score":{"objective":"general:math","name":"@a[scores={general:math=6}]"}},{"text":"§a您已成功选择 §e红色混凝土"}]}},{"translate":"%%2","with":{"rawtext":[{"score":{"objective":"general:math","name":"@a[scores={general:math=7}]"}},{"text":"§a您已成功选择 §e橙色混凝土"}]}},{"translate":"%%2","with":{"rawtext":[{"score":{"objective":"general:math","name":"@a[scores={general:math=8}]"}},{"text":"§a您已成功选择 §e黄色混凝土"}]}},{"translate":"%%2","with":{"rawtext":[{"score":{"objective":"general:math","name":"@a[scores={general:math=9}]"}},{"text":"§a您已成功选择 §e黄绿色混凝土"}]}},{"translate":"%%2","with":{"rawtext":[{"score":{"objective":"general:math","name":"@a[scores={general:math=10}]"}},{"text":"§a您已成功选择 §e绿色混凝土"}]}},{"translate":"%%2","with":{"rawtext":[{"score":{"objective":"general:math","name":"@a[scores={general:math=11}]"}},{"text":"§a您已成功选择 §e青色混凝土"}]}},{"translate":"%%2","with":{"rawtext":[{"score":{"objective":"general:math","name":"@a[scores={general:math=12}]"}},{"text":"§a您已成功选择 §e淡蓝色混凝土"}]}},{"translate":"%%2","with":{"rawtext":[{"score":{"objective":"general:math","name":"@a[scores={general:math=13}]"}},{"text":"§a您已成功选择 §e蓝色混凝土"}]}},{"translate":"%%2","with":{"rawtext":[{"score":{"objective":"general:math","name":"@a[scores={general:math=14}]"}},{"text":"§a您已成功选择 §e紫色混凝土"}]}},{"translate":"%%2","with":{"rawtext":[{"score":{"objective":"general:math","name":"@a[scores={general:math=15}]"}},{"text":"§a您已成功选择 §e品红色混凝土"}]}},{"translate":"%%2","with":{"rawtext":[{"score":{"objective":"general:math","name":"@a[scores={general:math=16}]"}},{"text":"§a您已成功选择 §e粉红色混凝土"}]}}]}
scoreboard players reset @a[scores={general:math=1..16}] general:math