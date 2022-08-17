execute @e[tag=!ces:HaveBeenChanged,family=undead,c=1,type=!minecraft:wither,type=!minecraft:zombie_horse,type=!minecraft:skeleton_horse,type=!minecraft:phantom,type=!minecraft:zoglin] ~ ~ ~ function ChangeEntitySettings
#改变生物设置

execute @e[family=undead,c=1] ~ ~ ~ function GiveEffect
#给予亡灵生物状态效果

effect @e[type=minecraft:villager] regeneration 99999 0 false
event entity @e[type=minecraft:creeper] minecraft:become_charged
#赋予村民生命恢复1级效果
#使苦力怕始终保持为闪电苦力怕

| 阳光传感器、红石比较器
| time add 1
#更改昼夜倍率(白天:晚上=1:2)



#2022/03/04 Night
#Author: Happy2018new
#Info: Update for 禧庭mc server.
#Version:2022-03-04-01