execute @e[tag=m_l:armor_stand] ~ ~ ~ tp ~ ~ ~
execute @e[tag=m_l:armor_stand] ~ ~ ~ summon minecraft:armor_stand m_l:TestAreaIsLoaded
execute @e[tag=m_l:armor_stand] ~ ~ ~ tag @e[name=m_l:TestAreaIsLoaded,r=3,tag="",c=1] add m_l:TestAreaIsLoaded
execute @e[tag=m_l:TestAreaIsLoaded] ~ ~ ~ fill ~ -64 ~ ~ 319 ~ minecraft:air 0 replace minecraft:light_block 15
execute @e[tag=m_l:TestAreaIsLoaded] ~ ~ ~ fill ~ 0 ~ ~ 255 ~ minecraft:air 0 replace minecraft:light_block 15
execute @e[tag=m_l:TestAreaIsLoaded] ~ ~ ~ fill ~ 0 ~ ~ 127 ~ minecraft:air 0 replace minecraft:light_block 15
execute @e[tag=m_l:TestAreaIsLoaded] ~ ~ ~ tp @e[c=1,tag=m_l:armor_stand] ~ -32767 ~
execute @e[tag=m_l:TestAreaIsLoaded] ~ ~ ~ tp ~ -32767 ~
execute @e[tag=m_l:TestAreaIsLoaded] ~ ~ ~ kill @e[r=3,tag=m_l:armor_stand]
execute @e[tag=m_l:TestAreaIsLoaded] ~ ~ ~ kill @s
#
execute @e[tag=MovingLight,type=minecraft:armor_stand] ~ ~ ~ tp ~ ~ ~
#
execute @a[x=1987,y=103,z=51892,r=500,tag=MovingLight] ~ ~ ~ tag @s remove MovingLight
tag @a add MovingLight:dead
tag @e[type=minecraft:player] remove MovingLight:dead
execute @a[tag=MovingLight:dead,tag=MovingLight] ~ ~ ~ tag @s remove MovingLight
tag @a[tag=MovingLight:dead] remove MovingLight:dead
# 弃用旧api

#Air

execute @a[tag=MovingLight] ~ ~ ~ structure load MovingLight:player ~ ~ ~
execute @e[tag=MovingLight:player] ~ ~ ~ tp ~ ~32767.0 ~
#
execute @e[tag=MovingLight:player] ~ ~ ~ fill ~ ~-32766.0 ~ ~ ~-32767.0 ~ minecraft:light_block 14 replace minecraft:air
#
execute @e[tag=MovingLight:player] ~ ~ ~ kill @e[dx=0,tag=MovingLight,type=minecraft:armor_stand]
#
execute @e[tag=MovingLight,type=minecraft:armor_stand] ~ ~ ~ execute @s[y=512,dy=-1024] ~ ~ ~ fill ~ -64 ~ ~ 319 ~ minecraft:air 0 replace minecraft:light_block 14
execute @e[tag=MovingLight,type=minecraft:armor_stand] ~ ~ ~ execute @s[y=512,dy=-1024] ~ ~ ~ fill ~ 0 ~ ~ 255 ~ minecraft:air 0 replace minecraft:light_block 14
execute @e[tag=MovingLight,type=minecraft:armor_stand] ~ ~ ~ execute @s[y=512,dy=-1024] ~ ~ ~ fill ~ 0 ~ ~ 127 ~ minecraft:air 0 replace minecraft:light_block 14
execute @e[tag=MovingLight,type=minecraft:armor_stand] ~ ~ ~ execute @s[y=32700,dy=1024] ~ ~ ~ fill ~ ~-32767 ~ ~ ~-32766 ~ minecraft:air 0 replace minecraft:light_block 14
execute @e[tag=MovingLight,type=minecraft:armor_stand] ~ ~ ~ tp ~ -32767.0 ~
execute @e[tag=MovingLight,type=minecraft:armor_stand] ~ ~ ~ kill @s
#
execute @e[tag=MovingLight:player] ~ ~ ~ summon minecraft:armor_stand MovingLight
execute @e[tag=MovingLight:player] ~ ~ ~ tag @e[type=minecraft:armor_stand,name=MovingLight,tag="",dx=0] add MovingLight
#
execute @e[tag=MovingLight:player] ~ ~ ~ tp ~ -32767.0 ~
execute @e[tag=MovingLight:player] ~ ~ ~ kill @s
#