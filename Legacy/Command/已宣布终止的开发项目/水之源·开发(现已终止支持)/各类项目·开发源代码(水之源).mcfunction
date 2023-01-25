execute @a[scores={白名单=!1},tag=!in_nether] ~ ~ ~ summon minecraft:armor_stand ban_csm ~ ~32767 ~
execute @a[scores={白名单=!1},tag=!in_nether] ~ ~32767 ~ tag @e[tag=!ban_csm,type=minecraft:armor_stand,name=ban_csm,r=3] add ban_csm
execute @e[tag=ban_csm] ~ 32774 ~ tp @s[dy=-512] ~ 32774.5 ~
execute @e[tag=ban_csm] ~ 33015 ~ tp @s[dy=512] ~ 33015.49 ~
tag @e[type=item,name=骷髅模型,tag=!yczd_klmx] add yczd_klmx
execute @e[tag=ban_csm] ~ ~-32767 ~ fill ~7.5 ~7.5 ~7.5 ~-7.5 ~-7.5 ~-7.5 skull 0 replace respawn_anchor
execute @e[tag=ban_csm] ~ ~-32767 ~ fill ~7.5 ~7.5 ~7.5 ~-7.5 ~-7.5 ~-7.5 air 0 replace skull 0
execute @e[type=item,name=骷髅模型,tag=!yczd_klmx] ~ ~ ~ setblock ~ ~ ~ respawn_anchor
execute @e[type=item,name=骷髅模型,tag=!yczd_klmx] ~ ~ ~ setblock ~ ~ ~ air 0 destroy
execute @e[type=item,name=骷髅模型,tag=!yczd_klmx] ~ ~ ~ kill
execute @e[tag=ban_csm] ~ ~ ~ kill
#重生锚
scoreboard objectives add hc dummy
scoreboard objectives add hc_t dummy
#0
scoreboard players add @a[tag=hc] hc 0
tag @a[tag=hc] remove hc
#1
testfor @a[scores={hc=0..}]
*#clone
effect @a[scores={hc=0}] blindness 7
effect @a[scores={hc=0}] nausea 7
title @a[scores={hc=0}] title §l§a正在§e回城§f...
title @a[scores={hc=0}] subtitle §l|§d低头§c取消§4回城§f|
execute @a[scores={hc=0}] ~ ~ ~ playsound portal.trigger
title @a[scores={hc=0..}] times 0 32767 0
title @a[scores={hc=20}] title §l§b3
title @a[scores={hc=20}] subtitle §l|§d低头§c取消§4回城§f|
title @a[scores={hc=40}] title §l§b2
title @a[scores={hc=40}] subtitle §l|§d低头§c取消§4回城§f|
title @a[scores={hc=60}] title §l§b1
title @a[scores={hc=60}] subtitle §l|§d低头§c取消§4回城§f|
tag @a[scores={hc=80},tag=!in_overworld] add hc_screen
title @a[scores={hc=80},tag=in_overworld] times 0 70 20
title @a[scores={hc=80},tag=in_overworld] title §l§9到§3家§b啦§6ο(=•ω＜=)ρ⌒☆
title @a[scores={hc=80},tag=in_overworld] subtitle §l|§g欢迎§e回来§7！§f|
title @a[scores={hc=80},tag=in_overworld] reset
tag @a[tag=in_overworld] remove in_overworld
tag @a[rm=0,tag=!in_overworld] add in_overworld
testfor @a[tag=!in_overworld,scores={hc=80}]
*#summon minecraft:armor_stand hc 0 4 0
*#tp @a[scores={hc=80},tag=!in_overworld] @e[name=hc,type=armor_stand,x=0,y=4,z=0,c=1,dx=0,dy=0,dz=0]
*#kill @e[name=hc,type=armor_stand,x=0,y=4,z=0,dx=0,dy=0,dz=0]
*#execute @a[scores={hc=80}] 0 4 0 tp ~ ~ ~ facing ~ ~ ~
scoreboard players set @a[scores={hc=80}] hc_t 1
scoreboard players reset @a[scores={hc=80..}] hc
scoreboard players add @a[scores={hc=0..79}] hc 1
#2
testfor @a[scores={hc=0..79},rx=90,rxm=60]
*#clone
title @a[scores={hc=0..79},rx=90,rxm=60] times 0 70 20
effect @a[scores={hc=0..79},rx=90,rxm=60] blindness 0
effect @a[scores={hc=0..79},rx=90,rxm=60] nausea 0
execute @a[scores={hc=0..79},rx=90,rxm=60] ~ ~ ~ stopsound @s portal.trigger
title @a[scores={hc=0..79},rx=90,rxm=60] title §l§a已成功§c取消§a回城
title @a[scores={hc=0..79},rx=90,rxm=60] subtitle §l§f|§e感谢§g您的§6使用§f|
title @a[scores={hc=0..79},rx=90,rxm=60] reset
execute @a[scores={hc=0..79},rx=90,rxm=60] ~ ~ ~ playsound random.anvil_break
execute @a[scores={hc=0..79},rx=90,rxm=60] ~ ~ ~ scoreboard players reset @s hc
#3
testfor @a[scores={hc_t=1..60}]
*#clone
scoreboard players add @a[scores={hc_t=1..60}] hc_t 1
title @a[scores={hc_t=61},tag=hc_screen] times 0 70 20
title @a[scores={hc_t=61},tag=hc_screen] title §l§9到§3家§b啦§6ο(=•ω＜=)ρ⌒☆
title @a[scores={hc_t=61},tag=hc_screen] subtitle §l|§g欢迎§e回来§7！§f|
title @a[scores={hc_t=61},tag=hc_screen] reset
tag @a[scores={hc_t=61},tag=hc_screen] remove hc_screen
execute @a[scores={hc_t=61}] ~ ~ ~ playsound random.levelup @s ~ ~ ~ 1 0.5
scoreboard players reset @a[scores={hc_t=61..}] hc_t