scoreboard players add @a[scores={top_y_0=0..24}] top_y_0 1
execute @a[scores={top_y_0=25..}] ~~~playsound random.levelup
scoreboard players reset @a[scores={top_y_0=25..}] top_y_0
#function_02_chanyv
scoreboard players add @a[tag=godmode] godmode 1
tellraw @a[scores={godmode=1},tag=!tell] {"rawtext":[{"text":"§l§a开发者模式属于§f[§7实验性功能§f]。§a若您要进入开发者模式§f，§a请阅读并同意以下内容§f："}]}
tellraw @a[scores={godmode=1},tag=!tell] {"rawtext":[{"text":"§l§f1.§b我们将会使用到一些标签§f(§7tag§f)§f,§b一些计分板和一些实体§f。§b在进入开发者模式的一瞬间§f，§b这些标签§f,§b计分板和实体都会被使用§f，§b可能是添加§f,§b生成或删除§f。§b若您因为疏忽导致数据损失，我们概不负责§f！"}]}
tellraw @a[scores={godmode=1},tag=!tell] {"rawtext":[{"text":"§l§f2.§e我们将会在您进入开发者模式的那一瞬间将您快捷物品栏的前§f4§e格替换为相应的功能物品§f，§e他们用于执行相应的开发者模式下才能执行的操作§f。§e若您因为疏忽导致储存于这些物品栏的物品丢失§f，§e我们概不负责§f！"}]}
tellraw @a[scores={godmode=1},tag=!tell] {"rawtext":[{"text":"§l§c如果您§o§a同意§r§l§c以上内容§f，§c请再次输入§f'§7/tag @s add godmode§f'§c进入开发者模式§f。§c再次执行该命令即代表您同意上述内容§f，§c请谨慎选择§f。"}]}
tag @a[scores={godmode=1},tag=!tell] add tell
#Start
tag @a[tag=godmode,scores={godmode=2}] add godmode_true
replaceitem entity @a[scores={godmode=2}] slot.hotbar 0 ender_pearl
replaceitem entity @a[scores={godmode=2}] slot.hotbar 1 egg
replaceitem entity @a[scores={godmode=2}] slot.hotbar 2 fishing_rod
replaceitem entity @a[scores={godmode=2}] slot.hotbar 3 wooden_button
tellraw @a[scores={godmode=2}] {"rawtext":[{"text":"§l§e您现在已经进入开发者模式§f。"}]}
tellraw @a[scores={godmode=2}] {"rawtext":[{"text":"§l§d您的快捷物品栏的前4格已经被替换为相应的物品§f，§d它们的作用及使用方法如下§f："}]}
tellraw @a[scores={godmode=2}] {"rawtext":[{"text":"§l§f[§b末影珍珠§f]§7-§d持续显示自身的坐标§f。§d扔出即可启用§f，§d死亡时不显示§f。"}]}
tellraw @a[scores={godmode=2}] {"rawtext":[{"text":"§l§f[§6鸡蛋§f]§7-§c前往随机位置§f(x§7/§fz §c轴§f:-524288~524288,§cy轴为随机位置的最高落脚点§f)。§c扔出即可前往§f，§c死亡时不会前往§f。"}]}
tellraw @a[scores={godmode=2}] {"rawtext":[{"text":"§l§f[§d钓鱼竿§f]§7-§b自杀§f。§b扔出即可自杀§f，§b死亡时不会自杀§f。"}]}
tellraw @a[scores={godmode=2}] {"rawtext":[{"text":"§l§f[§8橡树按钮§f]§7-§a设置死亡点§f。§a在脚部位置放置即可将当前位置设为死亡点§f，§a死亡时不会设置§f。"}]}
tellraw @a[scores={godmode=2}] {"rawtext":[{"text":"§l§b介绍完毕§f。§e若需要退出开发者模式§f，§d再次输入您刚刚输入的命令并执行即可§f。"}]}
scoreboard players add @a[scores={godmode=2}] godmode 1
#Start_0
tag @a[scores={godmode=4}] remove godmode_true
tag @a[scores={godmode=4},tag=t_pos] remove t_pos
tellraw @a[scores={godmode=4}] {"rawtext":[{"text":"§a已成功退出开发者模式§f！"}]}
tag @a[scores={godmode=4},tag=tell] remove tell
scoreboard players reset @a[scores={godmode=4}] godmode
tag @a[tag=godmode] remove godmode
#Start_1
execute @e[type=ender_pearl] ~~~tellraw @p[r=1.4,tag=godmode_true,tag=!t_pos] {"rawtext":[{"text":"§l§9您的坐标将持续显示在物品栏上方§f。§9若要取消该功能§f，§9再次扔出末影珍珠§f。"}]} 
execute @e[type=ender_pearl] ~~~tag @p[r=1.4,tag=godmode_true,tag=!t_pos] add kill_ender_pearl
execute @e[type=ender_pearl] ~~~tag @p[r=1.4,tag=godmode_true,tag=!t_pos] add t_pos
execute @e[type=ender_pearl] ~~~scoreboard players set @p[r=1.4,tag=t_pos] t_pos_actionbar 30
execute @a[tag=kill_ender_pearl] ~~~kill @e[type=ender_pearl,r=1.4]
execute @a[tag=kill_ender_pearl] ~~~playsound note.harp
tag @a[tag=kill_ender_pearl] remove kill_ender_pearl
execute @e[type=ender_pearl] ~~~tellraw @p[r=1.4,tag=godmode_true,tag=t_pos] {"rawtext":[{"text":"§a已成功关闭坐标持续显示§f！"}]}
execute @e[type=ender_pearl] ~~~tag @p[r=1.4,tag=godmode_true,tag=!kill_ender_pearl] add kill_ender_pearl
execute @e[type=ender_pearl] ~~~tag @p[r=1.4,tag=godmode_true,tag=t_pos] remove t_pos
execute @a[tag=kill_ender_pearl] ~~~kill @e[type=ender_pearl,r=1.4]
execute @a[tag=kill_ender_pearl] ~~~playsound note.harp
tag @a[tag=kill_ender_pearl] remove kill_ender_pearl
#function_01_start
scoreboard players reset * t_pos_jz
scoreboard players reset * t_pos_posx
scoreboard players reset * t_pos_posy
scoreboard players reset * t_pos_posz
tag @a[tag=t_pos] add t_pos_test_die
tag @e[tag=t_pos_test_die] remove t_pos_test_die
tag @a[tag=t_pos,tag=t_pos_test_die,tag=!t_pos_0] add t_pos_0
tag @a[tag=t_pos,tag=t_pos_test_die,tag=t_pos_0] remove t_pos
scoreboard players add @a[tag=t_pos] t_pos_actionbar 0
scoreboard players add @a[scores={t_pos_actionbar=0..29},tag=t_pos] t_pos_actionbar 1
tag @r[tag=t_pos,scores={t_pos_actionbar=30..},tag=!t_pos_actionbar_random] add t_pos_actionbar_random
execute @a[tag=t_pos_actionbar_random,scores={posx_0=-524288..524288,posy_0=-256..256,posz_0=-524288..524288},tag=!t_pos_before_normal] ~~~tag @s add t_pos_before_normal
scoreboard players reset * t_pos_jz
execute @a[tag=t_pos_actionbar_random] ~~~scoreboard players operation @s t_pos_posx = @s posx_0
execute @a[tag=t_pos_actionbar_random] ~~~scoreboard players operation @s t_pos_posy = @s posy_0
execute @a[tag=t_pos_actionbar_random] ~~~scoreboard players operation @s t_pos_posz = @s posz_0
execute @a[tag=t_pos_actionbar_random] ~~~scoreboard players reset @s posx_0
execute @a[tag=t_pos_actionbar_random] ~~~scoreboard players reset @s posy_0
execute @a[tag=t_pos_actionbar_random] ~~~scoreboard players reset @s posz_0
execute @a[tag=t_pos_actionbar_random] ~~~summon armor_stand "0" ~ 32767 ~
execute @a[tag=t_pos_actionbar_random] ~~~summon armor_stand "1" ~ 32767 ~
execute @a[tag=t_pos_actionbar_random] ~~~summon armor_stand "2" ~ 32767 ~
execute @a[tag=t_pos_actionbar_random] ~~~summon armor_stand "3" ~ 32767 ~
execute @a[tag=t_pos_actionbar_random] ~~~summon armor_stand "4" ~ 32767 ~
execute @a[tag=t_pos_actionbar_random] ~~~summon armor_stand "5" ~ 32767 ~
execute @a[tag=t_pos_actionbar_random] ~~~summon armor_stand "6" ~ 32767 ~
execute @a[tag=t_pos_actionbar_random] ~~~summon armor_stand "7" ~ 32767 ~
execute @a[tag=t_pos_actionbar_random] ~~~summon armor_stand "8" ~ 32767 ~
execute @a[tag=t_pos_actionbar_random] ~~~summon armor_stand "9" ~ 32767 ~
execute @a[tag=t_pos_actionbar_random] ~~~summon armor_stand "-" ~ 32767 ~
execute @a[tag=t_pos_actionbar_random] ~~~summon armor_stand "超出范围" ~ 32767 ~
execute @a[tag=t_pos_actionbar_random] ~~~scoreboard players set @e[name="0",y=32767,r=1] t_pos_jz 0
execute @a[tag=t_pos_actionbar_random] ~~~scoreboard players set @e[name="1",y=32767,r=1] t_pos_jz 1
execute @a[tag=t_pos_actionbar_random] ~~~scoreboard players set @e[name="2",y=32767,r=1] t_pos_jz 2
execute @a[tag=t_pos_actionbar_random] ~~~scoreboard players set @e[name="3",y=32767,r=1] t_pos_jz 3
execute @a[tag=t_pos_actionbar_random] ~~~scoreboard players set @e[name="4",y=32767,r=1] t_pos_jz 4
execute @a[tag=t_pos_actionbar_random] ~~~scoreboard players set @e[name="5",y=32767,r=1] t_pos_jz 5
execute @a[tag=t_pos_actionbar_random] ~~~scoreboard players set @e[name="6",y=32767,r=1] t_pos_jz 6
execute @a[tag=t_pos_actionbar_random] ~~~scoreboard players set @e[name="7",y=32767,r=1] t_pos_jz 7
execute @a[tag=t_pos_actionbar_random] ~~~scoreboard players set @e[name="8",y=32767,r=1] t_pos_jz 8
execute @a[tag=t_pos_actionbar_random] ~~~scoreboard players set @e[name="9",y=32767,r=1] t_pos_jz 9
execute @a[tag=t_pos_actionbar_random] ~~~scoreboard players set @e[name="-",y=32767,r=1] t_pos_jz 10
execute @a[tag=t_pos_actionbar_random] ~~~scoreboard players set @e[name="超出范围",y=32767,r=1] t_pos_jz 11
scoreboard players set ge t_pos_jz 100000
scoreboard players set shi t_pos_jz 10
scoreboard players set bai t_pos_jz 100
scoreboard players set qian t_pos_jz 1000
scoreboard players set wan t_pos_jz 10000
tag @a[tag=t_pos_actionbar_random] add posx
tag @a[tag=t_pos_actionbar_random] add posy
tag @a[tag=t_pos_actionbar_random] add posz
function posx
function t_pos
kill @e[scores={t_pos_jz=0..11}]
execute @a[tag=t_pos_actionbar_random] ~~~scoreboard players operation @s posx_0 = @s t_pos_posx
execute @a[tag=t_pos_actionbar_random] ~~~scoreboard players operation @s posy_0 = @s t_pos_posy
execute @a[tag=t_pos_actionbar_random] ~~~scoreboard players operation @s posz_0 = @s t_pos_posz
execute @a[tag=t_pos_actionbar_random,tag=!t_pos_before_normal] ~~~scoreboard players reset @s posx_0
execute @a[tag=t_pos_actionbar_random,tag=!t_pos_before_normal] ~~~scoreboard players reset @s posy_0
execute @a[tag=t_pos_actionbar_random,tag=!t_pos_before_normal] ~~~scoreboard players reset @s posz_0
scoreboard players reset @a[scores={t_pos_actionbar=30..},tag=t_pos_actionbar_random] t_pos_actionbar
tag @a[tag=t_pos_actionbar_random] remove t_pos_actionbar_random
tag @a[tag=t_pos_0,tag=!t_pos] add t_pos
tag @a[tag=t_pos_0,tag=t_pos] remove t_pos_0
tag @a[tag=t_pos_before_normal] remove t_pos_before_normal
#function_01
scoreboard players reset * random_posx
scoreboard players reset * random_posy
scoreboard players reset * random_posz
execute @e[type=egg] ~~~tag @p[r=1.4,tag=godmode_true,tag=!random_pos] add random_pos
execute @a[tag=random_pos] ~~~kill @e[r=1.4,type=egg]
tellraw @a[tag=random_pos] {"rawtext":[{"text":"§b您已成功传送到随机位置§f！"}]}
execute @a[tag=random_pos,scores={posx_0=-524288..524288,posy_0=-256..256,posz_0=-524288..524288},tag=!t_pos_before_normal] ~~~tag @s add t_pos_before_normal
execute @a[tag=random_pos] ~~~scoreboard players operation @s random_posx = @s posx_0
execute @a[tag=random_pos] ~~~scoreboard players operation @s random_posy = @s posy_0
execute @a[tag=random_pos] ~~~scoreboard players operation @s random_posz = @s posz_0
scoreboard players random @a[tag=random_pos] posx_0 -524288 524288
scoreboard players random @a[tag=random_pos] posz_0 -524288 524288
tag @a[tag=random_pos] add back
tag @a[tag=random_pos,tag=!非自然的] add 非自然的
execute @a[tag=random_pos] ~~~function tp
execute @a[tag=random_pos] ~~~scoreboard players operation @s posx_0 = @s random_posx
execute @a[tag=random_pos] ~~~scoreboard players operation @s posy_0 = @s random_posy
execute @a[tag=random_pos] ~~~scoreboard players operation @s posz_0 = @s random_posz
scoreboard players reset @a[tag=random_pos,tag=!t_pos_before_normal] posx_0
scoreboard players reset @a[tag=random_pos,tag=!t_pos_before_normal] posy_0
scoreboard players reset @a[tag=random_pos,tag=!t_pos_before_normal] posz_0
tag @a[tag=t_pos_before_normal] remove t_pos_before_normal
tag @a[tag=random_pos,tag=!top_y] add top_y
tag @a[tag=random_pos] remove random_pos
gamerule sendcommandfeedback false
execute @a[tag=top_y] ~~~tp~ 350~
gamerule sendcommandfeedback true
scoreboard players add @a[tag=top_y] top_y 0
tag @a[tag=top_y] remove top_y
scoreboard players add @a[scores={top_y=0..49}] top_y 1
gamerule sendcommandfeedback false
execute @a[scores={top_y=49}] ~~~tp~ 256.1~
execute @p[scores={top_y=50..}] ~~~function top_y
gamerule sendcommandfeedback true
#function_02
execute @e[type=fishing_hook] ~~~tag @p[tag=godmode_true,r=3,tag=!godmode_die] add godmode_die
execute @a[tag=godmode_die] ~~~kill @e[r=3,type=fishing_hook]
kill @a[tag=godmode_die]
tellraw @a[tag=godmode_die,m=!1] {"rawtext":[{"text":"§c已成功自杀§f！"}]}
tag @a[tag=godmode_die] remove godmode_die
#function_03
execute @a[tag=godmode_true] ~~~detect~~~wooden_button -1 scoreboard players reset @s posx_0
execute @a[tag=godmode_true] ~~~detect~~~wooden_button -1 scoreboard players reset @s posy_0
execute @a[tag=godmode_true] ~~~detect~~~wooden_button -1 scoreboard players reset @s posz_0
execute @a[tag=godmode_true] ~~~detect~~~wooden_button -1 tag @s add wantpos
execute @a[tag=godmode_true] ~~~detect~~~wooden_button -1 tag @s add testpos
execute @a[tag=godmode_true] ~~~detect~~~wooden_button -1 tag @s add godmode_set
execute @a[tag=godmode_true] ~~~detect~~~wooden_button -1 particle minecraft:egg_destroy_emitter ~ ~ ~
execute @a[tag=godmode_true] ~~~detect~~~wooden_button -1 setblock ~ ~ ~ air 0 destroy
#function_04