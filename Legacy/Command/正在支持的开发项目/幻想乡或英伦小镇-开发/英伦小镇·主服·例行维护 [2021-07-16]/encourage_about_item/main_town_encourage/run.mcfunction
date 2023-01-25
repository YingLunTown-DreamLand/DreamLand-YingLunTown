#『新手物资领取点』
#桃木剑（耐久Ⅲ,经验修补Ⅰ,锋利Ⅴ,火焰附加Ⅱ,击退Ⅱ,抢夺Ⅲ）*1
#皮革类可穿戴装备（耐久Ⅲ,经验修补Ⅰ,保护Ⅳ）*1
#锁链类可穿戴装备（耐久Ⅱ,保护Ⅲ）*1
#铁矿石*32
#
#当玩家启动本系统后获得标签try_to_get_main_town_encourage并执行以下命令：
execute @a[tag=try_to_get_main_town_encourage,tag=got_main_town_encourage] ~ ~ ~ tellraw @s {"rawtext":[{"text":"§c您已经在之前取得过这些物资了§f！"}]}
execute @a[tag=try_to_get_main_town_encourage,tag=got_main_town_encourage] ~ ~ ~ playsound random.break @s ~ ~ ~ 1 1 1
execute @a[tag=try_to_get_main_town_encourage,tag=got_main_town_encourage] ~ ~ ~ tag @s remove try_to_get_main_town_encourage
#1
execute @a[tag=try_to_get_main_town_encourage] ~ ~ ~ structure load encourage:main_town ~ ~3 ~
execute @a[tag=try_to_get_main_town_encourage] ~ ~ ~ tellraw @s {"rawtext":[{"text":"§a已成功在您头顶处发放新手物资§f，§a请注意查收§f！"}]}
execute @a[tag=try_to_get_main_town_encourage] ~ ~ ~ playsound random.levelup @s ~ ~ ~ 1 1 1
execute @a[tag=try_to_get_main_town_encourage] ~ ~ ~ tag @s add got_main_town_encourage
execute @a[tag=try_to_get_main_town_encourage] ~ ~ ~ tag @s remove try_to_get_main_town_encourage
#2