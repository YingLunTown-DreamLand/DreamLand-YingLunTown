scoreboard players add @a lswk:so_big 0
execute @a[scores={lswk:so_big=256..},tag=lswk:sure] ~~~tellraw @s {"rawtext":[{"text":"§c你输入的数字太大了，它最高只能为§o§l§f255§r§c。"}]}
execute @a[scores={lswk:so_big=256..},tag=lswk:sure] ~~~playsound random.break
execute @a[scores={lswk:so_big=256..},tag=lswk:sure] ~~~scoreboard players reset @s lswk:so_big
execute @a[scores={lswk:so_big=..-1},tag=lswk:sure] ~~~tellraw @s {"rawtext":[{"text":"§c你输入的数字太小了，它至少必须是§o§l§f0§r§c。"}]}
execute @a[scores={lswk:so_big=..-1},tag=lswk:sure] ~~~playsound random.break
execute @a[scores={lswk:so_big=..-1},tag=lswk:sure] ~~~scoreboard players reset @s lswk:so_big
//0
execute @a[scores={lswk:so_big=0..255},tag=lswk:sure] ~~~tellraw @s {"rawtext":[{"text":"§a已提交并同步您的更改§f。"}]}
execute @a[scores={lswk:so_big=0..255},tag=lswk:sure] ~~~playsound random.levelup @s ~~~ 1 0.5
execute @a[scores={lswk:so_big=1..255},tag=lswk:sure] ~~~scoreboard players operation max_entity_number lswk:setting = @s lswk:so_big
execute @a[scores={lswk:so_big=0},tag=lswk:sure] ~~~scoreboard players reset max_entity_number lswk:setting
execute @a[scores={lswk:so_big=0..255},tag=lswk:sure] ~~~summon armor_stand "§l§a系§2统§r"
execute @a[scores={lswk:so_big=0..255},tag=lswk:sure] ~~~tag @e[name="§l§a系§2统§r",r=0.75,tag=!lswk:say] add lswk:say
execute @e[tag=lswk:say] ~~~w @a[m=1,tag=!lswk:sure] §l§b@a[tag=lswk:sure] §r§e更改了世界§f(§e存档§f)§e上由该系统所生成的栓绳最大存在数量§f。
execute @e[tag=lswk:say] ~~~w @a[tag=lswk:sure] §l§b@a[tag=lswk:sure] §r§e更改了世界§f(§e存档§f)§e上由该系统所生成的栓绳最大存在数量§f。
execute @e[tag=lswk:say] ~~~execute @a[m=1,tag=!lswk:sure] ~~~playsound random.toast
tp @e[tag=lswk:say] 0 32767 0
kill @e[tag=lswk:say]
tag @a[tag=lswk:sure] remove lswk:sure
//1