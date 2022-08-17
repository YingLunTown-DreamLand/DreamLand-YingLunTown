execute @a[tag=s_m:main_add_bmdsw,c=1,scores={白名单=1}] ~ ~ ~ tag @s add s_m:main_add_bmdsw_random
execute @a[tag=s_m:main_add_bmdsw_random] ~ ~ ~ tag @e[family=mob,tag=!bmdsw,r=5,c=3,type=!armor_stand] add bmdsw_prepare
execute @a[tag=s_m:main_add_bmdsw_random,scores={bmdsw_added=3..}] ~ ~ ~ tag @e[family=mob,tag=!bmdsw,r=5,c=3,type=!armor_stand] add bmdsw_true
execute @a[tag=s_m:main_add_bmdsw_random,scores={bmdsw_added=2}] ~ ~ ~ tag @e[family=mob,tag=!bmdsw,r=5,c=2,type=!armor_stand] add bmdsw_true
execute @a[tag=s_m:main_add_bmdsw_random,scores={bmdsw_added=1}] ~ ~ ~ tag @e[family=mob,tag=!bmdsw,r=5,c=1,type=!armor_stand] add bmdsw_true
execute @a[tag=s_m:main_add_bmdsw_random] ~ ~ ~ tag @e[tag=bmdsw_true] add bmdsw
execute @a[tag=s_m:main_add_bmdsw_random] ~ ~ ~ scoreboard objectives add bmdsw:math dummy
execute @e[tag=bmdsw_true] ~ ~ ~ scoreboard players add @a[tag=s_m:main_add_bmdsw_random] bmdsw:math 1
execute @a[tag=s_m:main_add_bmdsw_random] ~ ~ ~ scoreboard players operation @s bmdsw_added -= @s bmdsw:math
execute @a[tag=s_m:main_add_bmdsw_random] ~ ~ ~ scoreboard players set @s bmdsw:math 0
execute @a[tag=s_m:main_add_bmdsw_random] ~ ~ ~ execute @e[tag=bmdsw_true,c=1] ~ ~ ~ scoreboard players set @a[tag=s_m:main_add_bmdsw_random] bmdsw:math 1
execute @a[tag=s_m:main_add_bmdsw_random] ~ ~ ~ execute @e[tag=bmdsw_prepare,tag=!bmdsw,c=1] ~ ~ ~ scoreboard players set @a[tag=s_m:main_add_bmdsw_random] bmdsw:math 2
execute @a[tag=s_m:main_add_bmdsw_random,scores={bmdsw:math=0}] ~ ~ ~ tellraw @s {"rawtext":[{"text":"§c没有选择到任何生物"}]}
execute @a[tag=s_m:main_add_bmdsw_random,scores={bmdsw:math=1}] ~ ~ ~ tellraw @s {"rawtext":[{"text":"§a已成功将下列生物添加到白名单生物列中§f：\n§l§b"},{"selector":"@e[tag=bmdsw_true]"},{"text":"\n§r§a当前还剩 §l§b"},{"score":{"objective":"bmdsw_added","name":"*"}},{"text":" §r§a次添加次数"}]}
execute @a[tag=s_m:main_add_bmdsw_random,scores={bmdsw:math=2}] ~ ~ ~ tellraw @s {"rawtext":[{"text":"§a已成功将下列生物添加到白名单生物列中§f：\n§l§b"},{"selector":"@e[tag=bmdsw_true]"},{"text":"\n§r§c未能成功添加的生物§f：\n§l§b"},{"selector":"@e[tag=!bmdsw,tag=bmdsw_prepare]"},{"text":"\n§r§a当前还剩 §l§b"},{"score":{"objective":"bmdsw_added","name":"*"}},{"text":" §r§a次添加次数"}]}
execute @a[tag=s_m:main_add_bmdsw_random,scores={bmdsw:math=0}] ~ ~ ~ playsound random.break @s ~ ~ ~1 1 1
execute @a[tag=s_m:main_add_bmdsw_random,scores={bmdsw:math=1..2}] ~ ~ ~ playsound random.orb @s ~ ~ ~ 1 1 1
execute @a[tag=s_m:main_add_bmdsw_random] ~ ~ ~ tag @e[tag=bmdsw_true] remove bmdsw_true
execute @a[tag=s_m:main_add_bmdsw_random] ~ ~ ~ tag @e[tag=bmdsw_prepare] remove bmdsw_prepare
execute @a[tag=s_m:main_add_bmdsw_random] ~ ~ ~ scoreboard objectives remove bmdsw:math
execute @a[tag=s_m:main_add_bmdsw_random,scores={bmdsw_added=..0,s_m:scores=9}] ~ ~ ~ tellraw @s {"rawtext":[{"text":"§c您已经将本月内的添加次数使用完，因此已自动回退到上一级内容§f！"}]}
execute @a[tag=s_m:main_add_bmdsw_random,scores={bmdsw_added=..0,s_m:scores=9}] ~ ~ ~ playsound random.toast @s ~ ~ ~ 1 1 1
execute @a[tag=s_m:main_add_bmdsw_random,scores={bmdsw_added=..0,s_m:scores=9}] ~ ~ ~ tag @s add s_m:user_mark
execute @a[tag=s_m:main_add_bmdsw_random,scores={bmdsw_added=..0,s_m:scores=9}] ~ ~ ~ scoreboard players set @s s_m:cd 2
execute @a[tag=s_m:main_add_bmdsw_random,scores={bmdsw_added=..0,s_m:scores=9}] ~ ~ ~ tp ~ ~ ~ ~ 0
execute @a[tag=s_m:main_add_bmdsw_random,scores={bmdsw_added=..0,s_m:scores=9}] ~ ~ ~ scoreboard players set @s s_m:scores 7
execute @a[tag=s_m:main_add_bmdsw_random] ~ ~ ~ tag @s remove s_m:main_add_bmdsw
execute @a[tag=s_m:main_add_bmdsw_random] ~ ~ ~ tag @s remove s_m:main_add_bmdsw_random
execute @a[tag=s_m:main_add_bmdsw,c=1] ~ ~ ~ function main/add_bmdsw
#add_bmdsw