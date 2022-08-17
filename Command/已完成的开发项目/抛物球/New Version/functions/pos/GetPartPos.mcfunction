scoreboard objectives add pbn:posx dummy
scoreboard objectives add pbn:posy dummy
scoreboard objectives add pbn:posz dummy
scoreboard objectives add pbn:Vy0 dummy
#添加计分板

scoreboard players add SpeedNum1 pbn:settings 0
scoreboard players add SpeedNum2 pbn:settings 0
#初始化分数



execute @s ~ ~ ~ summon minecraft:armor_stand pbn:PosFix ~ ~ ~
execute @s ~ ~ ~ summon minecraft:armor_stand pbn:PosGetHelper ^ ^ ^1
execute @s ~ ~ ~ summon minecraft:armor_stand pbn:entity ^ ^ ^1
execute @s ^ ^ ^1 tag @e[type=minecraft:armor_stand,c=1,name=pbn:PosFix] add pbn:pgh
execute @s ^ ^ ^1 tag @e[type=minecraft:armor_stand,c=1,name=pbn:PosGetHelper] add pbn:pgh
execute @s ^ ^ ^1 tag @e[type=minecraft:armor_stand,c=1,name=pbn:entity] add pbn:EntitySpawn
#召唤实体并添加标签



tag @e[tag=pbn:pgh,y=-30000000,z=-30000000,dy=60000000,dz=60000000,dx=-30000000,name=pbn:PosGetHelper] add "pbn:posx-"
tag @e[tag=pbn:pgh,x=-30000000,z=-30000000,dx=60000000,dz=60000000,dy=-30000000,name=pbn:PosGetHelper] add "pbn:posy-"
tag @e[tag=pbn:pgh,x=-30000000,y=-30000000,dx=60000000,dy=60000000,dz=-30000000,name=pbn:PosGetHelper] add "pbn:posz-"
execute @e[tag="pbn:posx-"] ~ ~ ~ tp ~3.0 ~ ~
execute @e[tag="pbn:posy-"] ~ ~ ~ tp ~ ~3.0 ~
execute @e[tag="pbn:posz-"] ~ ~ ~ tp ~ ~ ~3.0
#转入正区间



execute @e[tag=pbn:pgh] ~ ~ ~ scoreboard players set @s pbn:posx 0
execute @e[tag=pbn:pgh] ~ ~ ~ scoreboard players set @s pbn:posy 0
execute @e[tag=pbn:pgh] ~ ~ ~ scoreboard players set @s pbn:posz 0
#初始化分数



execute @e[tag=pbn:pgh] ~ ~ ~ function pos/float
execute @e[tag=pbn:pgh] ~ ~ ~ tp ~0.5 ~ ~
execute @e[tag=pbn:pgh] ~ ~ ~ tp ~ ~0.5 ~
execute @e[tag=pbn:pgh] ~ ~ ~ tp ~ ~ ~0.5
#求取各个轴上向量的小数部分并修正到方块中央(近似)



execute @e[tag=pbn:pgh,name=pbn:PosFix] ~2.0 ~ ~ scoreboard players add @e[y=-30000000,z=-30000000,dy=60000000,dz=60000000,dx=30000000,tag=pbn:pgh,name=pbn:PosGetHelper] pbn:posx 2000000
execute @e[tag=pbn:pgh,name=pbn:PosFix] ~2.0 ~ ~ execute @e[y=-30000000,z=-30000000,dy=60000000,dz=60000000,dx=30000000,tag=pbn:pgh,name=pbn:PosGetHelper] ~ ~ ~ tp ~-2.0 ~ ~

execute @e[tag=pbn:pgh,name=pbn:PosFix] ~1.0 ~ ~ scoreboard players add @e[y=-30000000,z=-30000000,dy=60000000,dz=60000000,dx=30000000,tag=pbn:pgh,name=pbn:PosGetHelper] pbn:posx 1000000
execute @e[tag=pbn:pgh,name=pbn:PosFix] ~1.0 ~ ~ execute @e[y=-30000000,z=-30000000,dy=60000000,dz=60000000,dx=30000000,tag=pbn:pgh,name=pbn:PosGetHelper] ~ ~ ~ tp ~-1.0 ~ ~
#求取X轴整数部分



execute @e[tag=pbn:pgh,name=pbn:PosFix] ~ ~2.0 ~ scoreboard players add @e[x=-30000000,z=-30000000,dx=60000000,dz=60000000,dy=30000000,tag=pbn:pgh,name=pbn:PosGetHelper] pbn:posy 2000000
execute @e[tag=pbn:pgh,name=pbn:PosFix] ~ ~2.0 ~ execute @e[x=-30000000,z=-30000000,dx=60000000,dz=60000000,dy=3000000,tag=pbn:pgh,name=pbn:PosGetHelper] ~ ~ ~ tp ~ ~-2.0 ~

execute @e[tag=pbn:pgh,name=pbn:PosFix] ~ ~1.0 ~ scoreboard players add @e[x=-30000000,z=-30000000,dx=60000000,dz=60000000,dy=30000000,tag=pbn:pgh,name=pbn:PosGetHelper] pbn:posy 1000000
execute @e[tag=pbn:pgh,name=pbn:PosFix] ~ ~1.0 ~ execute @e[x=-30000000,z=-30000000,dx=60000000,dz=60000000,dy=30000000,tag=pbn:pgh,name=pbn:PosGetHelper] ~ ~ ~ tp ~ ~-1.0 ~
#求取Y轴整数部分



execute @e[tag=pbn:pgh,name=pbn:PosFix] ~ ~ ~2.0 scoreboard players add @e[x=-30000000,y=-30000000,dx=60000000,dy=60000000,dz=30000000,tag=pbn:pgh,name=pbn:PosGetHelper] pbn:posz 2000000
execute @e[tag=pbn:pgh,name=pbn:PosFix] ~ ~ ~2.0 execute @e[x=-30000000,y=-30000000,dx=60000000,dy=60000000,dz=30000000,tag=pbn:pgh,name=pbn:PosGetHelper] ~ ~ ~ tp ~ ~ ~-2.0

execute @e[tag=pbn:pgh,name=pbn:PosFix] ~ ~ ~1.0 scoreboard players add @e[x=-30000000,y=-30000000,dx=60000000,dy=60000000,dz=30000000,tag=pbn:pgh,name=pbn:PosGetHelper] pbn:posz 1000000
execute @e[tag=pbn:pgh,name=pbn:PosFix] ~ ~ ~1.0 execute @e[x=-30000000,y=-30000000,dx=60000000,dy=60000000,dz=30000000,tag=pbn:pgh,name=pbn:PosGetHelper] ~ ~ ~ tp ~ ~ ~-1.0
#求取Z轴整数部分



execute @e[tag=pbn:pgh,name=pbn:PosFix] ~ ~ ~ scoreboard players operation @e[tag=pbn:pgh,name=pbn:PosGetHelper] pbn:posx -= @s pbn:posx
execute @e[tag=pbn:pgh,name=pbn:PosFix] ~ ~ ~ scoreboard players operation @e[tag=pbn:pgh,name=pbn:PosGetHelper] pbn:posy -= @s pbn:posy
execute @e[tag=pbn:pgh,name=pbn:PosFix] ~ ~ ~ scoreboard players operation @e[tag=pbn:pgh,name=pbn:PosGetHelper] pbn:posz -= @s pbn:posz
execute @e[tag="pbn:posx-",name=pbn:PosGetHelper] ~ ~ ~ scoreboard players remove @s pbn:posx 3000000
execute @e[tag="pbn:posy-",name=pbn:PosGetHelper] ~ ~ ~ scoreboard players remove @s pbn:posy 3000000
execute @e[tag="pbn:posz-",name=pbn:PosGetHelper] ~ ~ ~ scoreboard players remove @s pbn:posz 3000000
execute @e[tag=pbn:pgh,name=pbn:PosGetHelper] ~ ~ ~ scoreboard players operation @s pbn:posx *= SpeedNum1 pbn:settings
execute @e[tag=pbn:pgh,name=pbn:PosGetHelper] ~ ~ ~ scoreboard players operation @s pbn:posx /= SpeedNum2 pbn:settings
execute @e[tag=pbn:pgh,name=pbn:PosGetHelper] ~ ~ ~ scoreboard players operation @s pbn:posy *= SpeedNum1 pbn:settings
execute @e[tag=pbn:pgh,name=pbn:PosGetHelper] ~ ~ ~ scoreboard players operation @s pbn:posy /= SpeedNum2 pbn:settings
execute @e[tag=pbn:pgh,name=pbn:PosGetHelper] ~ ~ ~ scoreboard players operation @s pbn:posz *= SpeedNum1 pbn:settings
execute @e[tag=pbn:pgh,name=pbn:PosGetHelper] ~ ~ ~ scoreboard players operation @s pbn:posz /= SpeedNum2 pbn:settings
#得到正确的各轴向量



execute @e[tag=pbn:pgh,name=pbn:PosGetHelper] ~ ~ ~ scoreboard players operation @e[tag=pbn:EntitySpawn] pbn:posx = @s pbn:posx
execute @e[tag=pbn:pgh,name=pbn:PosGetHelper] ~ ~ ~ scoreboard players operation @e[tag=pbn:EntitySpawn] pbn:posy = @s pbn:posy
execute @e[tag=pbn:pgh,name=pbn:PosGetHelper] ~ ~ ~ scoreboard players operation @e[tag=pbn:EntitySpawn] pbn:posz = @s pbn:posz
execute @e[tag=pbn:pgh,name=pbn:PosGetHelper] ~ ~ ~ scoreboard players operation @e[tag=pbn:EntitySpawn] pbn:Vy0 = @s pbn:posy
#同步向量数据和Y轴上的初速度



execute @e[tag=pbn:pgh] ~ ~ ~ scoreboard players reset @s
execute @e[tag=pbn:pgh] ~ ~ ~ tp ~ -32767.0 ~
execute @e[tag=pbn:pgh] ~ ~ ~ kill @s
execute @e[tag=pbn:EntitySpawn] ~ ~ ~ tp ~ ~32768.5 ~
execute @e[tag=pbn:EntitySpawn] ~ ~ ~ tag @s add pbn:entity
execute @e[tag=pbn:EntitySpawn] ~ ~ ~ tag @s remove pbn:EntitySpawn
#善后





#取得单位向量