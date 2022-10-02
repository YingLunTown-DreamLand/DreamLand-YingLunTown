scoreboard objectives add 国庆快乐 dummy
# 添加计分板

scoreboard players add @a 国庆快乐 0
scoreboard players add @a[scores={国庆快乐=0..9}] 国庆快乐 1
# 添加分数

execute @a[scores={国庆快乐=8}] ~~~ playsound random.levelup
# 播放音效
execute @a[scores={国庆快乐=8}] ~~~ summon fireworks_rocket ~~~
execute @a[scores={国庆快乐=8}] ~~~ summon fireworks_rocket ~~~
execute @a[scores={国庆快乐=8}] ~~~ summon fireworks_rocket ~~~
# 播放粒子(1)
execute @a[scores={国庆快乐=8}] ~~~ particle minecraft:huge_explosion_emitter ~~1~
execute @a[scores={国庆快乐=8}] ~~~ particle minecraft:huge_explosion_emitter ~~1~
execute @a[scores={国庆快乐=8}] ~~~ particle minecraft:huge_explosion_emitter ~~1~
# 播放粒子(2)
execute @a[scores={国庆快乐=8}] ~~~ title @s title §l§6国庆节§e快乐！！！
execute @a[scores={国庆快乐=8}] ~~~ tellraw @s {"rawtext":[{"text":"§l§6国庆节福利： §b8000幻想币§e已入账"}]}
# 显示 Title 和 Tellraw

execute @a[scores={国庆快乐=8}] ~~~ scoreboard players add @s money 8000
# 奖励实现