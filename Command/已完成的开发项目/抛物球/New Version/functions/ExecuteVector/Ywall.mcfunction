execute @s ~ ~-32767.0 ~ detect ~ ~ ~ minecraft:air -1 tag @s add pbn:allow
execute @s ~ ~-32767.0 ~ detect ~ ~ ~ minecraft:water -1 tag @s add pbn:allow
execute @s ~ ~-32767.0 ~ detect ~ ~ ~ minecraft:lava -1 tag @s add pbn:allow
#检验是否碰撞到方块

execute @s[tag=!pbn:allow] ~ ~ ~ function ExecuteVector/VyReverse
#若碰撞，则让Y轴向量取反

execute @s[tag=pbn:allow] ~ ~ ~ tag @s remove pbn:allow
#善后



#若Y轴已经碰撞到固体方块，则向上(下)传送到非碰撞位置并对Y轴向量取反和损耗
#Y轴反弹存在Bug