scoreboard players add @s b_d_p:time 1
execute @s[scores={b_d_p:time=-49}] ~ ~ ~ title @s actionbar §c你的死亡位置已超出可记录范围
execute @s[scores={b_d_p:time=0}] ~ ~ ~ playsound random.break @s ~ ~ ~ 1 1 1
execute @s[scores={b_d_p:time=0}] ~ ~ ~ scoreboard players reset @s b_d_p:time
execute @s[scores={b_d_p:time=2}] ~ ~ ~ titleraw @s actionbar {"rawtext":[{"text":"§a已成功记录您的死亡位置§f:\n(§b"},{"score":{"objective":"posx","name":"@s"}},{"text":"§f,§b"},{"score":{"objective":"posy","name":"@s"}},{"text":"§f,§b"},{"score":{"objective":"posz","name":"@s"}},{"text":"§f)"}]}
execute @s[scores={b_d_p:time=101..}] ~ ~ ~ playsound random.levelup @s ~ ~ ~ 1 1 1
execute @s[scores={b_d_p:time=101..}] ~ ~ ~ scoreboard players reset @s b_d_p:time
#actionbar