execute @a[scores={e_e_s:mark=0..14,e_e_s:mark=!4,e_e_s:mark=!9,e_e_s:mark=!14,e_e_s:o_t=0},c=1] ~ ~ ~ tag @s add enderchest_encourage:random
#tag_set
execute @a[tag=enderchest_encourage:random] ~ ~ ~ tag @s add enderchest_encourage:replaceitem_test
execute @a[tag=enderchest_encourage:random] ~ ~ ~ replaceitem entity @s slot.enderchest 0 keep air
*#execute @a[tag=enderchest_encourage:random] ~ ~ ~ replaceitem entity @s slot.enderchest 1 keep air
*#execute @a[tag=enderchest_encourage:random] ~ ~ ~ tag @s remove enderchest_encourage:replaceitem_test
#replaceitem_test
execute @a[tag=enderchest_encourage:random,scores={e_e_s:mark=!0..1,e_e_s:mark=!3..4,e_e_s:mark=!5..6,e_e_s:mark=!8..9,e_e_s:mark=!10..11,e_e_s:mark=!13..14},tag=enderchest_encourage:replaceitem_test] ~ ~ ~ playsound random.orb @s ~ ~ ~ 1 0.5 1
execute @a[tag=enderchest_encourage:random,tag=enderchest_encourage:replaceitem_test,scores={e_e_s:mark=2},tag=enderchest_encourage:said] ~ ~ ~ tellraw @s {"rawtext":[{"text":"§l§f===========\n§e通§6知\n§r§a已发现您还未领取 §l§f『§b阶段性奖励§f·§b入服奖励§f』 §r§a中的以下奖励§f(§a请尝试清空末影箱前 §l§b2 §r§a个槽位以正常领取§f)§7：\n§r§c苹果 §7* §l§b64\n§r§8铁锭 §7* §l§b32\n§f=========="}]}
execute @a[tag=enderchest_encourage:random,tag=enderchest_encourage:replaceitem_test,scores={e_e_s:mark=7},tag=enderchest_encourage:said] ~ ~ ~ tellraw @s {"rawtext":[{"text":"§l§f===========\n§e通§6知\n§r§a已发现您还未领取 §l§f『§b阶段性奖励§f·§b在线时间达 §f1000 §b分钟§f』 §r§a中的以下奖励§f(§a请尝试清空末影箱前 §l§b2 §r§a个槽位以正常领取§f)§7：\n§r§6金苹果 §7* §l§b32\n§r§9钻石 §7* §l§b16\n§f=========="}]}
execute @a[tag=enderchest_encourage:random,tag=enderchest_encourage:replaceitem_test,scores={e_e_s:mark=12},tag=enderchest_encourage:said] ~ ~ ~ tellraw @s {"rawtext":[{"text":"§l§f===========\n§e通§6知\n§r§a已发现您还未领取 §l§f『§b阶段性奖励§f·§b在线时间达 §f5000 §b分钟§f』 §r§a中的以下奖励§f(§a请尝试清空末影箱前 §l§b2 §r§a个槽位以正常领取§f)§7：\n§r§e附魔苹果 §7* §l§b16\n§r§4下界合金碎片 §7* §l§b32\n§f=========="}]}
execute @a[tag=enderchest_encourage:random,scores={e_e_s:mark=!0..1,e_e_s:mark=!3..4,e_e_s:mark=!5..6,e_e_s:mark=!8..9,e_e_s:mark=!10..11,e_e_s:mark=!13..14}] ~ ~ ~ scoreboard players remove @s e_e_s:mark 1
#set_scores(s)_and_send_message
execute @a[tag=enderchest_encourage:random,scores={e_e_s:mark=0}] ~ ~ ~ scoreboard players add @s coin 100
execute @a[tag=enderchest_encourage:random,scores={e_e_s:mark=0}] ~ ~ ~ xp 40 @s
execute @a[tag=enderchest_encourage:random,scores={e_e_s:mark=0}] ~ ~ ~ stopsound @s random.levelup
execute @a[tag=enderchest_encourage:random,scores={e_e_s:mark=0},tag=enderchest_encourage:replaceitem_test] ~ ~ ~ scoreboard players set @s e_e_s:mark 1
execute @a[tag=enderchest_encourage:random,scores={e_e_s:mark=0..3,e_e_s:mark=!2},tag=!enderchest_encourage:replaceitem_test] ~ ~ ~ replaceitem entity @s slot.enderchest 0 keep apple 64
execute @a[tag=enderchest_encourage:random,scores={e_e_s:mark=0..3,e_e_s:mark=!2},tag=!enderchest_encourage:replaceitem_test] ~ ~ ~ replaceitem entity @s slot.enderchest 1 keep iron_ingot 32
#1
execute @a[tag=enderchest_encourage:random,scores={e_e_s:mark=5}] ~ ~ ~ scoreboard players add @s coin 8000
execute @a[tag=enderchest_encourage:random,scores={e_e_s:mark=5}] ~ ~ ~ xp 2920 @s
execute @a[tag=enderchest_encourage:random,scores={e_e_s:mark=5}] ~ ~ ~ stopsound @s random.levelup
execute @a[tag=enderchest_encourage:random,scores={e_e_s:mark=5},tag=enderchest_encourage:replaceitem_test] ~ ~ ~ scoreboard players set @s e_e_s:mark 6
execute @a[tag=enderchest_encourage:random,scores={e_e_s:mark=5..8,e_e_s:mark=!7},tag=!enderchest_encourage:replaceitem_test] ~ ~ ~ replaceitem entity @s slot.enderchest 0 keep golden_apple 32
execute @a[tag=enderchest_encourage:random,scores={e_e_s:mark=5..8,e_e_s:mark=!7},tag=!enderchest_encourage:replaceitem_test] ~ ~ ~ replaceitem entity @s slot.enderchest 1 keep diamond 16
#2
execute @a[tag=enderchest_encourage:random,scores={e_e_s:mark=10}] ~ ~ ~ scoreboard players add @s coin 80000
execute @a[tag=enderchest_encourage:random,scores={e_e_s:mark=10}] ~ ~ ~ xp 18582 @s
execute @a[tag=enderchest_encourage:random,scores={e_e_s:mark=10}] ~ ~ ~ stopsound @s random.levelup
execute @a[tag=enderchest_encourage:random,scores={e_e_s:mark=10},tag=enderchest_encourage:replaceitem_test] ~ ~ ~ scoreboard players set @s e_e_s:mark 11
execute @a[tag=enderchest_encourage:random,scores={e_e_s:mark=10..13,e_e_s:mark=!12},tag=!enderchest_encourage:replaceitem_test] ~ ~ ~ replaceitem entity @s slot.enderchest 0 keep enchanted_golden_apple 16
execute @a[tag=enderchest_encourage:random,scores={e_e_s:mark=10..13,e_e_s:mark=!12},tag=!enderchest_encourage:replaceitem_test] ~ ~ ~ replaceitem entity @s slot.enderchest 1 keep netherite_scrap 32
#3
execute @a[tag=enderchest_encourage:random,scores={e_e_s:mark=!0,e_e_s:mark=!2..4,e_e_s:mark=!5,e_e_s:mark=!7..9,e_e_s:mark=!10,e_e_s:mark=!12..14},tag=!enderchest_encourage:replaceitem_test,tag=enderchest_encourage:said] ~ ~ ~ playsound random.levelup @s ~ ~ ~ 1 1.125 1
execute @a[tag=enderchest_encourage:random,scores={e_e_s:mark=!0,e_e_s:mark=!2..4,e_e_s:mark=!5,e_e_s:mark=!7..9,e_e_s:mark=!10,e_e_s:mark=!12..14},tag=!enderchest_encourage:replaceitem_test,tag=enderchest_encourage:said] ~ ~ ~ scoreboard players add @s e_e_s:mark 2
#4
execute @a[tag=enderchest_encourage:random,tag=!enderchest_encourage:replaceitem_test,scores={e_e_s:mark=0},tag=!enderchest_encourage:said] ~ ~ ~ tellraw @s {"rawtext":[{"text":"§l§f===========\n§e通§6知\n§r§a已成功发放 §l§f『§b阶段性奖励§f·§b入服奖励§f』§7：\n§r§g英伦币 §7* §l§b100 §r§f(§a当前还有 §g英伦币 §7* §l§b"},{"score":{"objective":"coin","name":"*"}},{"text":"§r§f)\n§r§2经验值 §7* §l§b40 §r§f(§l§b 0 §r§a级§l§f →§b 4 §r§a级 §f)\n§c苹果 §7* §l§b64 §r§f( §a位于末影箱的槽位 §l§b1 §r§f)\n§8铁锭 §7* §l§b32 §r§f( §a位于末影箱的槽位 §l§b2 §r§f)\n§l§f=========="}]}
execute @a[tag=enderchest_encourage:random,tag=enderchest_encourage:replaceitem_test,scores={e_e_s:mark=1},tag=!enderchest_encourage:said] ~ ~ ~ tellraw @s {"rawtext":[{"text":"§l§f===========\n§e通§6知\n§r§a已成功发放 §l§f『§b阶段性奖励§f·§b入服奖励§f』§7：\n§r§g英伦币 §7* §l§b100 §r§f(§a当前还有 §g英伦币 §7* §l§b"},{"score":{"objective":"coin","name":"*"}},{"text":"§r§f)\n§r§2经验值 §7* §l§b40 §r§f(§l§b 0 §r§a级§l§f →§b 4 §r§a级 §f)\n§c未能成功发放的奖励§f(§c请尝试清空末影箱前 §l§b2 §r§c个槽位以正常领取§f)\n§c苹果 §7* §l§b64\n§r§8铁锭 §7* §l§b32\n§f=========="}]}
execute @a[tag=enderchest_encourage:random,tag=!enderchest_encourage:replaceitem_test,scores={e_e_s:mark=3},tag=enderchest_encourage:said] ~ ~ ~ tellraw @s {"rawtext":[{"text":"§l§f===========\n§e通§6知\n§r§a已成功补发 §l§f『§b阶段性奖励§f·§b入服奖励§f』 §r§a中未能发放的奖励§f：\n§r§c苹果 §7* §l§b64 §r§f( §a位于末影箱的槽位 §l§b1 §r§f)\n§8铁锭 §7* §l§b32 §r§f( §a位于末影箱的槽位 §l§b2 §r§f)\n§l§f=========="}]}
execute @a[tag=enderchest_encourage:random,tag=!enderchest_encourage:replaceitem_test,scores={e_e_s:mark=5},tag=!enderchest_encourage:said] ~ ~ ~ tellraw @s {"rawtext":[{"text":"§l§f===========\n§e通§6知\n§r§a已成功发放 §l§f『§b阶段性奖励§f·§b在线时间达 §f1000 §b分钟§f』§7：\n§r§g英伦币 §7* §l§b8000 §r§f(§a当前还有 §g英伦币 §7* §l§b"},{"score":{"objective":"coin","name":"*"}},{"text":"§r§f)\n§r§2经验值 §7* §l§b2920 §r§f(§l§b 0 §r§a级§l§f →§b 40 §r§a级 §f)\n§6金苹果 §7* §l§b32 §r§f( §a位于末影箱的槽位 §l§b1 §r§f)\n§9钻石 §7* §l§b16 §r§f( §a位于末影箱的槽位 §l§b2 §r§f)\n§l§f=========="}]}
execute @a[tag=enderchest_encourage:random,tag=enderchest_encourage:replaceitem_test,scores={e_e_s:mark=6},tag=!enderchest_encourage:said] ~ ~ ~ tellraw @s {"rawtext":[{"text":"§l§f===========\n§e通§6知\n§r§a已成功发放 §l§f『§b阶段性奖励§f·§b在线时间达 §f1000 §b分钟§f』§7：\n§r§g英伦币 §7* §l§b8000 §r§f(§a当前还有 §g英伦币 §7* §l§b"},{"score":{"objective":"coin","name":"*"}},{"text":"§r§f)\n§r§2经验值 §7* §l§b2920 §r§f(§l§b 0 §r§a级§l§f →§b 40 §r§a级 §f)\n§c未能成功发放的奖励§f(§c请尝试清空末影箱前 §l§b2 §r§c个槽位以正常领取§f)\n§6金苹果 §7* §l§b32\n§r§9钻石 §7* §l§b16\n§f=========="}]}
execute @a[tag=enderchest_encourage:random,tag=!enderchest_encourage:replaceitem_test,scores={e_e_s:mark=8},tag=enderchest_encourage:said] ~ ~ ~ tellraw @s {"rawtext":[{"text":"§l§f===========\n§e通§6知\n§r§a已成功补发 §l§f『§b阶段性奖励§f·§b在线时间达 §f1000 §b分钟§f』 §r§a中未能发放的奖励§f：\n§r§6金苹果 §7* §l§b32 §r§f( §a位于末影箱的槽位 §l§b1 §r§f)\n§9钻石 §7* §l§b16 §r§f( §a位于末影箱的槽位 §l§b2 §r§f)\n§l§f=========="}]}
execute @a[tag=enderchest_encourage:random,tag=!enderchest_encourage:replaceitem_test,scores={e_e_s:mark=10},tag=!enderchest_encourage:said] ~ ~ ~ tellraw @s {"rawtext":[{"text":"§l§f===========\n§e通§6知\n§r§a已成功发放 §l§f『§b阶段性奖励§f·§b在线时间达 §f5000 §b分钟§f』§7：\n§r§g英伦币 §7* §l§b8000 §r§f(§a当前还有 §g英伦币 §7* §l§b"},{"score":{"objective":"coin","name":"*"}},{"text":"§r§f)\n§r§2经验值 §7* §l§b18582 §r§f(§l§b 0 §r§a级§l§f →§b 80 §r§a级 §f)\n§e附魔苹果 §7* §l§b16 §r§f( §a位于末影箱的槽位 §l§b1 §r§f)\n§4下界合金碎片 §7* §l§b32 §r§f( §a位于末影箱的槽位 §l§b2 §r§f)\n§l§f=========="}]}
execute @a[tag=enderchest_encourage:random,tag=enderchest_encourage:replaceitem_test,scores={e_e_s:mark=11},tag=!enderchest_encourage:said] ~ ~ ~ tellraw @s {"rawtext":[{"text":"§l§f===========\n§e通§6知\n§r§a已成功发放 §l§f『§b阶段性奖励§f·§b在线时间达 §f5000 §b分钟§f』§7：\n§r§g英伦币 §7* §l§b8000 §r§f(§a当前还有 §g英伦币 §7* §l§b"},{"score":{"objective":"coin","name":"*"}},{"text":"§r§f)\n§r§2经验值 §7* §l§b18582 §r§f(§l§b 0 §r§a级§l§f →§b 80 §r§a级 §f)\n§c未能成功发放的奖励§f(§c请尝试清空末影箱前 §l§b2 §r§c个槽位以正常领取§f)\n§e附魔苹果 §7* §l§b16\n§r§4下界合金碎片 §f* §l§b32\n§f=========="}]}
execute @a[tag=enderchest_encourage:random,tag=!enderchest_encourage:replaceitem_test,scores={e_e_s:mark=13},tag=enderchest_encourage:said] ~ ~ ~ tellraw @s {"rawtext":[{"text":"§l§f===========\n§e通§6知\n§r§a已成功补发 §l§f『§b阶段性奖励§f·§b在线时间达 §f5000 §b分钟§f』 §r§a中未能发放的奖励§f：\n§r§e附魔苹果 §7* §l§b16 §r§f( §a位于末影箱的槽位 §l§b1 §r§f)\n§4下界合金碎片 §7* §l§b32 §r§f( §a位于末影箱的槽位 §l§b2 §r§f)\n§l§f=========="}]}
#send_message
execute @a[tag=enderchest_encourage:random,scores={e_e_s:mark=0..3},tag=!enderchest_encourage:replaceitem_test,tag=!enderchest_encourage:scores_can_not_change] ~ ~ ~ scoreboard players set @s e_e_s:mark 4
execute @a[tag=enderchest_encourage:random,scores={e_e_s:mark=5..8},tag=!enderchest_encourage:replaceitem_test,tag=!enderchest_encourage:scores_can_not_change] ~ ~ ~ scoreboard players set @s e_e_s:mark 9
execute @a[tag=enderchest_encourage:random,scores={e_e_s:mark=10..13},tag=!enderchest_encourage:replaceitem_test,tag=!enderchest_encourage:scores_can_not_change] ~ ~ ~ scoreboard players set @s e_e_s:mark 14
#set_score(s)
execute @a[tag=enderchest_encourage:random,tag=!enderchest_encourage:said] ~ ~ ~ playsound random.levelup @s ~ ~ ~ 1 1.125 1
execute @a[tag=enderchest_encourage:random,tag=enderchest_encourage:replaceitem_test] ~ ~ ~ tag @s add enderchest_encourage:said
#end_1
execute @a[tag=enderchest_encourage:random] ~ ~ ~ tag @s remove enderchest_encourage:replaceitem_test
execute @a[tag=enderchest_encourage:random] ~ ~ ~ tag @s remove enderchest_encourage:random
#end_2