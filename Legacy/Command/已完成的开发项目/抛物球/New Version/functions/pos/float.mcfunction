summon minecraft:armor_stand pbn:BlockMark ~ ~ ~
tag @e[type=minecraft:armor_stand,name=pbn:BlockMark,c=1] add pbn:BlockMark
tag @s add pbn:TemporaryTag
#生成标记实体并赋予标签

execute @s ~-2.0 ~ ~ scoreboard players add @e[x=~-1,dx=2,y=~-1,dy=2,z=~-1,dz=2,tag=pbn:BlockMark] pbn:posx 2000000
execute @s ~-2.0 ~ ~ execute @e[x=~-1,dx=2,y=~-1,dy=2,z=~-1,dz=2,tag=pbn:BlockMark] ~ ~ ~ execute @e[tag=pbn:TemporaryTag] ~ ~ ~ tp ~-2.0 ~ ~

execute @s ~-1.0 ~ ~ scoreboard players add @e[x=~-1,dx=2,y=~-1,dy=2,z=~-1,dz=2,tag=pbn:BlockMark] pbn:posx 1000000
execute @s ~-1.0 ~ ~ execute @e[x=~-1,dx=2,y=~-1,dy=2,z=~-1,dz=2,tag=pbn:BlockMark] ~ ~ ~ execute @e[tag=pbn:TemporaryTag] ~ ~ ~ tp ~-1.0 ~ ~

execute @s ~-0.8 ~ ~ scoreboard players add @e[x=~-1,dx=2,y=~-1,dy=2,z=~-1,dz=2,tag=pbn:BlockMark] pbn:posx 800000
execute @s ~-0.8 ~ ~ execute @e[x=~-1,dx=2,y=~-1,dy=2,z=~-1,dz=2,tag=pbn:BlockMark] ~ ~ ~ execute @e[tag=pbn:TemporaryTag] ~ ~ ~ tp ~-0.8 ~ ~

execute @s ~-0.4 ~ ~ scoreboard players add @e[x=~-1,dx=2,y=~-1,dy=2,z=~-1,dz=2,tag=pbn:BlockMark] pbn:posx 400000
execute @s ~-0.4 ~ ~ execute @e[x=~-1,dx=2,y=~-1,dy=2,z=~-1,dz=2,tag=pbn:BlockMark] ~ ~ ~ execute @e[tag=pbn:TemporaryTag] ~ ~ ~ tp ~-0.4 ~ ~

execute @s ~-0.2 ~ ~ scoreboard players add @e[x=~-1,dx=2,y=~-1,dy=2,z=~-1,dz=2,tag=pbn:BlockMark] pbn:posx 200000
execute @s ~-0.2 ~ ~ execute @e[x=~-1,dx=2,y=~-1,dy=2,z=~-1,dz=2,tag=pbn:BlockMark] ~ ~ ~ execute @e[tag=pbn:TemporaryTag] ~ ~ ~ tp ~-0.2 ~ ~

execute @s ~-0.1 ~ ~ scoreboard players add @e[x=~-1,dx=2,y=~-1,dy=2,z=~-1,dz=2,tag=pbn:BlockMark] pbn:posx 100000
execute @s ~-0.1 ~ ~ execute @e[x=~-1,dx=2,y=~-1,dy=2,z=~-1,dz=2,tag=pbn:BlockMark] ~ ~ ~ execute @e[tag=pbn:TemporaryTag] ~ ~ ~ tp ~-0.1 ~ ~

execute @s ~-0.08 ~ ~ scoreboard players add @e[x=~-1,dx=2,y=~-1,dy=2,z=~-1,dz=2,tag=pbn:BlockMark] pbn:posx 80000
execute @s ~-0.08 ~ ~ execute @e[x=~-1,dx=2,y=~-1,dy=2,z=~-1,dz=2,tag=pbn:BlockMark] ~ ~ ~ execute @e[tag=pbn:TemporaryTag] ~ ~ ~ tp ~-0.08 ~ ~

execute @s ~-0.04 ~ ~ scoreboard players add @e[x=~-1,dx=2,y=~-1,dy=2,z=~-1,dz=2,tag=pbn:BlockMark] pbn:posx 40000
execute @s ~-0.04 ~ ~ execute @e[x=~-1,dx=2,y=~-1,dy=2,z=~-1,dz=2,tag=pbn:BlockMark] ~ ~ ~ execute @e[tag=pbn:TemporaryTag] ~ ~ ~ tp ~-0.04 ~ ~

execute @s ~-0.02 ~ ~ scoreboard players add @e[x=~-1,dx=2,y=~-1,dy=2,z=~-1,dz=2,tag=pbn:BlockMark] pbn:posx 20000
execute @s ~-0.02 ~ ~ execute @e[x=~-1,dx=2,y=~-1,dy=2,z=~-1,dz=2,tag=pbn:BlockMark] ~ ~ ~ execute @e[tag=pbn:TemporaryTag] ~ ~ ~ tp ~-0.02 ~ ~

execute @s ~-0.01 ~ ~ scoreboard players add @e[x=~-1,dx=2,y=~-1,dy=2,z=~-1,dz=2,tag=pbn:BlockMark] pbn:posx 10000
execute @s ~-0.01 ~ ~ execute @e[x=~-1,dx=2,y=~-1,dy=2,z=~-1,dz=2,tag=pbn:BlockMark] ~ ~ ~ execute @e[tag=pbn:TemporaryTag] ~ ~ ~ tp ~-0.01 ~ ~

execute @s ~-0.008 ~ ~ scoreboard players add @e[x=~-1,dx=2,y=~-1,dy=2,z=~-1,dz=2,tag=pbn:BlockMark] pbn:posx 8000
execute @s ~-0.008 ~ ~ execute @e[x=~-1,dx=2,y=~-1,dy=2,z=~-1,dz=2,tag=pbn:BlockMark] ~ ~ ~ execute @e[tag=pbn:TemporaryTag] ~ ~ ~ tp ~-0.008 ~ ~

execute @s ~-0.004 ~ ~ scoreboard players add @e[x=~-1,dx=2,y=~-1,dy=2,z=~-1,dz=2,tag=pbn:BlockMark] pbn:posx 4000
execute @s ~-0.004 ~ ~ execute @e[x=~-1,dx=2,y=~-1,dy=2,z=~-1,dz=2,tag=pbn:BlockMark] ~ ~ ~ execute @e[tag=pbn:TemporaryTag] ~ ~ ~ tp ~-0.004 ~ ~

execute @s ~-0.002 ~ ~ scoreboard players add @e[x=~-1,dx=2,y=~-1,dy=2,z=~-1,dz=2,tag=pbn:BlockMark] pbn:posx 2000
execute @s ~-0.002 ~ ~ execute @e[x=~-1,dx=2,y=~-1,dy=2,z=~-1,dz=2,tag=pbn:BlockMark] ~ ~ ~ execute @e[tag=pbn:TemporaryTag] ~ ~ ~ tp ~-0.002 ~ ~

execute @s ~-0.001 ~ ~ scoreboard players add @e[x=~-1,dx=2,y=~-1,dy=2,z=~-1,dz=2,tag=pbn:BlockMark] pbn:posx 1000
execute @s ~-0.001 ~ ~ execute @e[x=~-1,dx=2,y=~-1,dy=2,z=~-1,dz=2,tag=pbn:BlockMark] ~ ~ ~ execute @e[tag=pbn:TemporaryTag] ~ ~ ~ tp ~-0.001 ~ ~

execute @s ~-0.0008 ~ ~ scoreboard players add @e[x=~-1,dx=2,y=~-1,dy=2,z=~-1,dz=2,tag=pbn:BlockMark] pbn:posx 800
execute @s ~-0.0008 ~ ~ execute @e[x=~-1,dx=2,y=~-1,dy=2,z=~-1,dz=2,tag=pbn:BlockMark] ~ ~ ~ execute @e[tag=pbn:TemporaryTag] ~ ~ ~ tp ~-0.0008 ~ ~

execute @s ~-0.0004 ~ ~ scoreboard players add @e[x=~-1,dx=2,y=~-1,dy=2,z=~-1,dz=2,tag=pbn:BlockMark] pbn:posx 400
execute @s ~-0.0004 ~ ~ execute @e[x=~-1,dx=2,y=~-1,dy=2,z=~-1,dz=2,tag=pbn:BlockMark] ~ ~ ~ execute @e[tag=pbn:TemporaryTag] ~ ~ ~ tp ~-0.0004 ~ ~

execute @s ~-0.0002 ~ ~ scoreboard players add @e[x=~-1,dx=2,y=~-1,dy=2,z=~-1,dz=2,tag=pbn:BlockMark] pbn:posx 200
execute @s ~-0.0002 ~ ~ execute @e[x=~-1,dx=2,y=~-1,dy=2,z=~-1,dz=2,tag=pbn:BlockMark] ~ ~ ~ execute @e[tag=pbn:TemporaryTag] ~ ~ ~ tp ~-0.0002 ~ ~

execute @s ~-0.0001 ~ ~ scoreboard players add @e[x=~-1,dx=2,y=~-1,dy=2,z=~-1,dz=2,tag=pbn:BlockMark] pbn:posx 100
execute @s ~-0.0001 ~ ~ execute @e[x=~-1,dx=2,y=~-1,dy=2,z=~-1,dz=2,tag=pbn:BlockMark] ~ ~ ~ execute @e[tag=pbn:TemporaryTag] ~ ~ ~ tp ~-0.0001 ~ ~

execute @s ~-0.00008 ~ ~ scoreboard players add @e[x=~-1,dx=2,y=~-1,dy=2,z=~-1,dz=2,tag=pbn:BlockMark] pbn:posx 80
execute @s ~-0.00008 ~ ~ execute @e[x=~-1,dx=2,y=~-1,dy=2,z=~-1,dz=2,tag=pbn:BlockMark] ~ ~ ~ execute @e[tag=pbn:TemporaryTag] ~ ~ ~ tp ~-0.00008 ~ ~

execute @s ~-0.00004 ~ ~ scoreboard players add @e[x=~-1,dx=2,y=~-1,dy=2,z=~-1,dz=2,tag=pbn:BlockMark] pbn:posx 40
execute @s ~-0.00004 ~ ~ execute @e[x=~-1,dx=2,y=~-1,dy=2,z=~-1,dz=2,tag=pbn:BlockMark] ~ ~ ~ execute @e[tag=pbn:TemporaryTag] ~ ~ ~ tp ~-0.00004 ~ ~

execute @s ~-0.00002 ~ ~ scoreboard players add @e[x=~-1,dx=2,y=~-1,dy=2,z=~-1,dz=2,tag=pbn:BlockMark] pbn:posx 20
execute @s ~-0.00002 ~ ~ execute @e[x=~-1,dx=2,y=~-1,dy=2,z=~-1,dz=2,tag=pbn:BlockMark] ~ ~ ~ execute @e[tag=pbn:TemporaryTag] ~ ~ ~ tp ~-0.00002 ~ ~

execute @s ~-0.00001 ~ ~ scoreboard players add @e[x=~-1,dx=2,y=~-1,dy=2,z=~-1,dz=2,tag=pbn:BlockMark] pbn:posx 10
execute @s ~-0.00001 ~ ~ execute @e[x=~-1,dx=2,y=~-1,dy=2,z=~-1,dz=2,tag=pbn:BlockMark] ~ ~ ~ execute @e[tag=pbn:TemporaryTag] ~ ~ ~ tp ~-0.00001 ~ ~

execute @s ~-0.000008 ~ ~ scoreboard players add @e[x=~-1,dx=2,y=~-1,dy=2,z=~-1,dz=2,tag=pbn:BlockMark] pbn:posx 8
execute @s ~-0.000008 ~ ~ execute @e[x=~-1,dx=2,y=~-1,dy=2,z=~-1,dz=2,tag=pbn:BlockMark] ~ ~ ~ execute @e[tag=pbn:TemporaryTag] ~ ~ ~ tp ~-0.000008 ~ ~

execute @s ~-0.000004 ~ ~ scoreboard players add @e[x=~-1,dx=2,y=~-1,dy=2,z=~-1,dz=2,tag=pbn:BlockMark] pbn:posx 4
execute @s ~-0.000004 ~ ~ execute @e[x=~-1,dx=2,y=~-1,dy=2,z=~-1,dz=2,tag=pbn:BlockMark] ~ ~ ~ execute @e[tag=pbn:TemporaryTag] ~ ~ ~ tp ~-0.000004 ~ ~

execute @s ~-0.000002 ~ ~ scoreboard players add @e[x=~-1,dx=2,y=~-1,dy=2,z=~-1,dz=2,tag=pbn:BlockMark] pbn:posx 2
execute @s ~-0.000002 ~ ~ execute @e[x=~-1,dx=2,y=~-1,dy=2,z=~-1,dz=2,tag=pbn:BlockMark] ~ ~ ~ execute @e[tag=pbn:TemporaryTag] ~ ~ ~ tp ~-0.000002 ~ ~

execute @s ~-0.000001 ~ ~ scoreboard players add @e[x=~-1,dx=2,y=~-1,dy=2,z=~-1,dz=2,tag=pbn:BlockMark] pbn:posx 1
execute @s ~-0.000001 ~ ~ execute @e[x=~-1,dx=2,y=~-1,dy=2,z=~-1,dz=2,tag=pbn:BlockMark] ~ ~ ~ execute @e[tag=pbn:TemporaryTag] ~ ~ ~ tp ~-0.000001 ~ ~
#求取X轴小数部分


execute @s ~ ~-2.0 ~ scoreboard players add @e[x=~-1,dx=2,y=~-1,dy=2,z=~-1,dz=2,tag=pbn:BlockMark] pbn:posy 2000000
execute @s ~ ~-2.0 ~ execute @e[x=~-1,dx=2,y=~-1,dy=2,z=~-1,dz=2,tag=pbn:BlockMark] ~ ~ ~ execute @e[tag=pbn:TemporaryTag] ~ ~ ~ tp ~ ~-2.0 ~

execute @s ~ ~-1.0 ~ scoreboard players add @e[x=~-1,dx=2,y=~-1,dy=2,z=~-1,dz=2,tag=pbn:BlockMark] pbn:posy 1000000
execute @s ~ ~-1.0 ~ execute @e[x=~-1,dx=2,y=~-1,dy=2,z=~-1,dz=2,tag=pbn:BlockMark] ~ ~ ~ execute @e[tag=pbn:TemporaryTag] ~ ~ ~ tp ~ ~-1.0 ~

execute @s ~ ~-0.8 ~ scoreboard players add @e[x=~-1,dx=2,y=~-1,dy=2,z=~-1,dz=2,tag=pbn:BlockMark] pbn:posy 800000
execute @s ~ ~-0.8 ~ execute @e[x=~-1,dx=2,y=~-1,dy=2,z=~-1,dz=2,tag=pbn:BlockMark] ~ ~ ~ execute @e[tag=pbn:TemporaryTag] ~ ~ ~ tp ~ ~-0.8 ~

execute @s ~ ~-0.4 ~ scoreboard players add @e[x=~-1,dx=2,y=~-1,dy=2,z=~-1,dz=2,tag=pbn:BlockMark] pbn:posy 400000
execute @s ~ ~-0.4 ~ execute @e[x=~-1,dx=2,y=~-1,dy=2,z=~-1,dz=2,tag=pbn:BlockMark] ~ ~ ~ execute @e[tag=pbn:TemporaryTag] ~ ~ ~ tp ~ ~-0.4 ~

execute @s ~ ~-0.2 ~ scoreboard players add @e[x=~-1,dx=2,y=~-1,dy=2,z=~-1,dz=2,tag=pbn:BlockMark] pbn:posy 200000
execute @s ~ ~-0.2 ~ execute @e[x=~-1,dx=2,y=~-1,dy=2,z=~-1,dz=2,tag=pbn:BlockMark] ~ ~ ~ execute @e[tag=pbn:TemporaryTag] ~ ~ ~ tp ~ ~-0.2 ~

execute @s ~ ~-0.1 ~ scoreboard players add @e[x=~-1,dx=2,y=~-1,dy=2,z=~-1,dz=2,tag=pbn:BlockMark] pbn:posy 100000
execute @s ~ ~-0.1 ~ execute @e[x=~-1,dx=2,y=~-1,dy=2,z=~-1,dz=2,tag=pbn:BlockMark] ~ ~ ~ execute @e[tag=pbn:TemporaryTag] ~ ~ ~ tp ~ ~-0.1 ~

execute @s ~ ~-0.08 ~ scoreboard players add @e[x=~-1,dx=2,y=~-1,dy=2,z=~-1,dz=2,tag=pbn:BlockMark] pbn:posy 80000
execute @s ~ ~-0.08 ~ execute @e[x=~-1,dx=2,y=~-1,dy=2,z=~-1,dz=2,tag=pbn:BlockMark] ~ ~ ~ execute @e[tag=pbn:TemporaryTag] ~ ~ ~ tp ~ ~-0.08 ~

execute @s ~ ~-0.04 ~ scoreboard players add @e[x=~-1,dx=2,y=~-1,dy=2,z=~-1,dz=2,tag=pbn:BlockMark] pbn:posy 40000
execute @s ~ ~-0.04 ~ execute @e[x=~-1,dx=2,y=~-1,dy=2,z=~-1,dz=2,tag=pbn:BlockMark] ~ ~ ~ execute @e[tag=pbn:TemporaryTag] ~ ~ ~ tp ~ ~-0.04 ~

execute @s ~ ~-0.02 ~ scoreboard players add @e[x=~-1,dx=2,y=~-1,dy=2,z=~-1,dz=2,tag=pbn:BlockMark] pbn:posy 20000
execute @s ~ ~-0.02 ~ execute @e[x=~-1,dx=2,y=~-1,dy=2,z=~-1,dz=2,tag=pbn:BlockMark] ~ ~ ~ execute @e[tag=pbn:TemporaryTag] ~ ~ ~ tp ~ ~-0.02 ~

execute @s ~ ~-0.01 ~ scoreboard players add @e[x=~-1,dx=2,y=~-1,dy=2,z=~-1,dz=2,tag=pbn:BlockMark] pbn:posy 10000
execute @s ~ ~-0.01 ~ execute @e[x=~-1,dx=2,y=~-1,dy=2,z=~-1,dz=2,tag=pbn:BlockMark] ~ ~ ~ execute @e[tag=pbn:TemporaryTag] ~ ~ ~ tp ~ ~-0.01 ~

execute @s ~ ~-0.008 ~ scoreboard players add @e[x=~-1,dx=2,y=~-1,dy=2,z=~-1,dz=2,tag=pbn:BlockMark] pbn:posy 8000
execute @s ~ ~-0.008 ~ execute @e[x=~-1,dx=2,y=~-1,dy=2,z=~-1,dz=2,tag=pbn:BlockMark] ~ ~ ~ execute @e[tag=pbn:TemporaryTag] ~ ~ ~ tp ~ ~-0.008 ~

execute @s ~ ~-0.004 ~ scoreboard players add @e[x=~-1,dx=2,y=~-1,dy=2,z=~-1,dz=2,tag=pbn:BlockMark] pbn:posy 4000
execute @s ~ ~-0.004 ~ execute @e[x=~-1,dx=2,y=~-1,dy=2,z=~-1,dz=2,tag=pbn:BlockMark] ~ ~ ~ execute @e[tag=pbn:TemporaryTag] ~ ~ ~ tp ~ ~-0.004 ~

execute @s ~ ~-0.002 ~ scoreboard players add @e[x=~-1,dx=2,y=~-1,dy=2,z=~-1,dz=2,tag=pbn:BlockMark] pbn:posy 2000
execute @s ~ ~-0.002 ~ execute @e[x=~-1,dx=2,y=~-1,dy=2,z=~-1,dz=2,tag=pbn:BlockMark] ~ ~ ~ execute @e[tag=pbn:TemporaryTag] ~ ~ ~ tp ~ ~-0.002 ~

execute @s ~ ~-0.001 ~ scoreboard players add @e[x=~-1,dx=2,y=~-1,dy=2,z=~-1,dz=2,tag=pbn:BlockMark] pbn:posy 1000
execute @s ~ ~-0.001 ~ execute @e[x=~-1,dx=2,y=~-1,dy=2,z=~-1,dz=2,tag=pbn:BlockMark] ~ ~ ~ execute @e[tag=pbn:TemporaryTag] ~ ~ ~ tp ~ ~-0.001 ~

execute @s ~ ~-0.0008 ~ scoreboard players add @e[x=~-1,dx=2,y=~-1,dy=2,z=~-1,dz=2,tag=pbn:BlockMark] pbn:posy 800
execute @s ~ ~-0.0008 ~ execute @e[x=~-1,dx=2,y=~-1,dy=2,z=~-1,dz=2,tag=pbn:BlockMark] ~ ~ ~ execute @e[tag=pbn:TemporaryTag] ~ ~ ~ tp ~ ~-0.0008 ~

execute @s ~ ~-0.0004 ~ scoreboard players add @e[x=~-1,dx=2,y=~-1,dy=2,z=~-1,dz=2,tag=pbn:BlockMark] pbn:posy 400
execute @s ~ ~-0.0004 ~ execute @e[x=~-1,dx=2,y=~-1,dy=2,z=~-1,dz=2,tag=pbn:BlockMark] ~ ~ ~ execute @e[tag=pbn:TemporaryTag] ~ ~ ~ tp ~ ~-0.0004 ~

execute @s ~ ~-0.0002 ~ scoreboard players add @e[x=~-1,dx=2,y=~-1,dy=2,z=~-1,dz=2,tag=pbn:BlockMark] pbn:posy 200
execute @s ~ ~-0.0002 ~ execute @e[x=~-1,dx=2,y=~-1,dy=2,z=~-1,dz=2,tag=pbn:BlockMark] ~ ~ ~ execute @e[tag=pbn:TemporaryTag] ~ ~ ~ tp ~ ~-0.0002 ~

execute @s ~ ~-0.0001 ~ scoreboard players add @e[x=~-1,dx=2,y=~-1,dy=2,z=~-1,dz=2,tag=pbn:BlockMark] pbn:posy 100
execute @s ~ ~-0.0001 ~ execute @e[x=~-1,dx=2,y=~-1,dy=2,z=~-1,dz=2,tag=pbn:BlockMark] ~ ~ ~ execute @e[tag=pbn:TemporaryTag] ~ ~ ~ tp ~ ~-0.0001 ~

execute @s ~ ~-0.00008 ~ scoreboard players add @e[x=~-1,dx=2,y=~-1,dy=2,z=~-1,dz=2,tag=pbn:BlockMark] pbn:posy 80
execute @s ~ ~-0.00008 ~ execute @e[x=~-1,dx=2,y=~-1,dy=2,z=~-1,dz=2,tag=pbn:BlockMark] ~ ~ ~ execute @e[tag=pbn:TemporaryTag] ~ ~ ~ tp ~ ~-0.00008 ~

execute @s ~ ~-0.00004 ~ scoreboard players add @e[x=~-1,dx=2,y=~-1,dy=2,z=~-1,dz=2,tag=pbn:BlockMark] pbn:posy 40
execute @s ~ ~-0.00004 ~ execute @e[x=~-1,dx=2,y=~-1,dy=2,z=~-1,dz=2,tag=pbn:BlockMark] ~ ~ ~ execute @e[tag=pbn:TemporaryTag] ~ ~ ~ tp ~ ~-0.00004 ~

execute @s ~ ~-0.00002 ~ scoreboard players add @e[x=~-1,dx=2,y=~-1,dy=2,z=~-1,dz=2,tag=pbn:BlockMark] pbn:posy 20
execute @s ~ ~-0.00002 ~ execute @e[x=~-1,dx=2,y=~-1,dy=2,z=~-1,dz=2,tag=pbn:BlockMark] ~ ~ ~ execute @e[tag=pbn:TemporaryTag] ~ ~ ~ tp ~ ~-0.00002 ~

execute @s ~ ~-0.00001 ~ scoreboard players add @e[x=~-1,dx=2,y=~-1,dy=2,z=~-1,dz=2,tag=pbn:BlockMark] pbn:posy 10
execute @s ~ ~-0.00001 ~ execute @e[x=~-1,dx=2,y=~-1,dy=2,z=~-1,dz=2,tag=pbn:BlockMark] ~ ~ ~ execute @e[tag=pbn:TemporaryTag] ~ ~ ~ tp ~ ~-0.00001 ~

execute @s ~ ~-0.000008 ~ scoreboard players add @e[x=~-1,dx=2,y=~-1,dy=2,z=~-1,dz=2,tag=pbn:BlockMark] pbn:posy 8
execute @s ~ ~-0.000008 ~ execute @e[x=~-1,dx=2,y=~-1,dy=2,z=~-1,dz=2,tag=pbn:BlockMark] ~ ~ ~ execute @e[tag=pbn:TemporaryTag] ~ ~ ~ tp ~ ~-0.000008 ~

execute @s ~ ~-0.000004 ~ scoreboard players add @e[x=~-1,dx=2,y=~-1,dy=2,z=~-1,dz=2,tag=pbn:BlockMark] pbn:posy 4
execute @s ~ ~-0.000004 ~ execute @e[x=~-1,dx=2,y=~-1,dy=2,z=~-1,dz=2,tag=pbn:BlockMark] ~ ~ ~ execute @e[tag=pbn:TemporaryTag] ~ ~ ~ tp ~ ~-0.000004 ~

execute @s ~ ~-0.000002 ~ scoreboard players add @e[x=~-1,dx=2,y=~-1,dy=2,z=~-1,dz=2,tag=pbn:BlockMark] pbn:posy 2
execute @s ~ ~-0.000002 ~ execute @e[x=~-1,dx=2,y=~-1,dy=2,z=~-1,dz=2,tag=pbn:BlockMark] ~ ~ ~ execute @e[tag=pbn:TemporaryTag] ~ ~ ~ tp ~ ~-0.000002 ~

execute @s ~ ~-0.000001 ~ scoreboard players add @e[x=~-1,dx=2,y=~-1,dy=2,z=~-1,dz=2,tag=pbn:BlockMark] pbn:posy 1
execute @s ~ ~-0.000001 ~ execute @e[x=~-1,dx=2,y=~-1,dy=2,z=~-1,dz=2,tag=pbn:BlockMark] ~ ~ ~ execute @e[tag=pbn:TemporaryTag] ~ ~ ~ tp ~ ~-0.000001 ~
#求取Y轴小数部分


execute @s ~ ~ ~-2.0 scoreboard players add @e[x=~-1,dx=2,y=~-1,dy=2,z=~-1,dz=2,tag=pbn:BlockMark] pbn:posz 2000000
execute @s ~ ~ ~-2.0 execute @e[x=~-1,dx=2,y=~-1,dy=2,z=~-1,dz=2,tag=pbn:BlockMark] ~ ~ ~ execute @e[tag=pbn:TemporaryTag] ~ ~ ~ tp ~ ~ ~-2.0

execute @s ~ ~ ~-1.0 scoreboard players add @e[x=~-1,dx=2,y=~-1,dy=2,z=~-1,dz=2,tag=pbn:BlockMark] pbn:posz 1000000
execute @s ~ ~ ~-1.0 execute @e[x=~-1,dx=2,y=~-1,dy=2,z=~-1,dz=2,tag=pbn:BlockMark] ~ ~ ~ execute @e[tag=pbn:TemporaryTag] ~ ~ ~ tp ~ ~ ~-1.0

execute @s ~ ~ ~-0.8 scoreboard players add @e[x=~-1,dx=2,y=~-1,dy=2,z=~-1,dz=2,tag=pbn:BlockMark] pbn:posz 800000
execute @s ~ ~ ~-0.8 execute @e[x=~-1,dx=2,y=~-1,dy=2,z=~-1,dz=2,tag=pbn:BlockMark] ~ ~ ~ execute @e[tag=pbn:TemporaryTag] ~ ~ ~ tp ~ ~ ~-0.8

execute @s ~ ~ ~-0.4 scoreboard players add @e[x=~-1,dx=2,y=~-1,dy=2,z=~-1,dz=2,tag=pbn:BlockMark] pbn:posz 400000
execute @s ~ ~ ~-0.4 execute @e[x=~-1,dx=2,y=~-1,dy=2,z=~-1,dz=2,tag=pbn:BlockMark] ~ ~ ~ execute @e[tag=pbn:TemporaryTag] ~ ~ ~ tp ~ ~ ~-0.4

execute @s ~ ~ ~-0.2 scoreboard players add @e[x=~-1,dx=2,y=~-1,dy=2,z=~-1,dz=2,tag=pbn:BlockMark] pbn:posz 200000
execute @s ~ ~ ~-0.2 execute @e[x=~-1,dx=2,y=~-1,dy=2,z=~-1,dz=2,tag=pbn:BlockMark] ~ ~ ~ execute @e[tag=pbn:TemporaryTag] ~ ~ ~ tp ~ ~ ~-0.2

execute @s ~ ~ ~-0.1 scoreboard players add @e[x=~-1,dx=2,y=~-1,dy=2,z=~-1,dz=2,tag=pbn:BlockMark] pbn:posz 100000
execute @s ~ ~ ~-0.1 execute @e[x=~-1,dx=2,y=~-1,dy=2,z=~-1,dz=2,tag=pbn:BlockMark] ~ ~ ~ execute @e[tag=pbn:TemporaryTag] ~ ~ ~ tp ~ ~ ~-0.1

execute @s ~ ~ ~-0.08 scoreboard players add @e[x=~-1,dx=2,y=~-1,dy=2,z=~-1,dz=2,tag=pbn:BlockMark] pbn:posz 80000
execute @s ~ ~ ~-0.08 execute @e[x=~-1,dx=2,y=~-1,dy=2,z=~-1,dz=2,tag=pbn:BlockMark] ~ ~ ~ execute @e[tag=pbn:TemporaryTag] ~ ~ ~ tp ~ ~ ~-0.08

execute @s ~ ~ ~-0.04 scoreboard players add @e[x=~-1,dx=2,y=~-1,dy=2,z=~-1,dz=2,tag=pbn:BlockMark] pbn:posz 40000
execute @s ~ ~ ~-0.04 execute @e[x=~-1,dx=2,y=~-1,dy=2,z=~-1,dz=2,tag=pbn:BlockMark] ~ ~ ~ execute @e[tag=pbn:TemporaryTag] ~ ~ ~ tp ~ ~ ~-0.04

execute @s ~ ~ ~-0.02 scoreboard players add @e[x=~-1,dx=2,y=~-1,dy=2,z=~-1,dz=2,tag=pbn:BlockMark] pbn:posz 20000
execute @s ~ ~ ~-0.02 execute @e[x=~-1,dx=2,y=~-1,dy=2,z=~-1,dz=2,tag=pbn:BlockMark] ~ ~ ~ execute @e[tag=pbn:TemporaryTag] ~ ~ ~ tp ~ ~ ~-0.02

execute @s ~ ~ ~-0.01 scoreboard players add @e[x=~-1,dx=2,y=~-1,dy=2,z=~-1,dz=2,tag=pbn:BlockMark] pbn:posz 10000
execute @s ~ ~ ~-0.01 execute @e[x=~-1,dx=2,y=~-1,dy=2,z=~-1,dz=2,tag=pbn:BlockMark] ~ ~ ~ execute @e[tag=pbn:TemporaryTag] ~ ~ ~ tp ~ ~ ~-0.01

execute @s ~ ~ ~-0.008 scoreboard players add @e[x=~-1,dx=2,y=~-1,dy=2,z=~-1,dz=2,tag=pbn:BlockMark] pbn:posz 8000
execute @s ~ ~ ~-0.008 execute @e[x=~-1,dx=2,y=~-1,dy=2,z=~-1,dz=2,tag=pbn:BlockMark] ~ ~ ~ execute @e[tag=pbn:TemporaryTag] ~ ~ ~ tp ~ ~ ~-0.008

execute @s ~ ~ ~-0.004 scoreboard players add @e[x=~-1,dx=2,y=~-1,dy=2,z=~-1,dz=2,tag=pbn:BlockMark] pbn:posz 4000
execute @s ~ ~ ~-0.004 execute @e[x=~-1,dx=2,y=~-1,dy=2,z=~-1,dz=2,tag=pbn:BlockMark] ~ ~ ~ execute @e[tag=pbn:TemporaryTag] ~ ~ ~ tp ~ ~ ~-0.004

execute @s ~ ~ ~-0.002 scoreboard players add @e[x=~-1,dx=2,y=~-1,dy=2,z=~-1,dz=2,tag=pbn:BlockMark] pbn:posz 2000
execute @s ~ ~ ~-0.002 execute @e[x=~-1,dx=2,y=~-1,dy=2,z=~-1,dz=2,tag=pbn:BlockMark] ~ ~ ~ execute @e[tag=pbn:TemporaryTag] ~ ~ ~ tp ~ ~ ~-0.002

execute @s ~ ~ ~-0.001 scoreboard players add @e[x=~-1,dx=2,y=~-1,dy=2,z=~-1,dz=2,tag=pbn:BlockMark] pbn:posz 1000
execute @s ~ ~ ~-0.001 execute @e[x=~-1,dx=2,y=~-1,dy=2,z=~-1,dz=2,tag=pbn:BlockMark] ~ ~ ~ execute @e[tag=pbn:TemporaryTag] ~ ~ ~ tp ~ ~ ~-0.001

execute @s ~ ~ ~-0.0008 scoreboard players add @e[x=~-1,dx=2,y=~-1,dy=2,z=~-1,dz=2,tag=pbn:BlockMark] pbn:posz 800
execute @s ~ ~ ~-0.0008 execute @e[x=~-1,dx=2,y=~-1,dy=2,z=~-1,dz=2,tag=pbn:BlockMark] ~ ~ ~ execute @e[tag=pbn:TemporaryTag] ~ ~ ~ tp ~ ~ ~-0.0008

execute @s ~ ~ ~-0.0004 scoreboard players add @e[x=~-1,dx=2,y=~-1,dy=2,z=~-1,dz=2,tag=pbn:BlockMark] pbn:posz 400
execute @s ~ ~ ~-0.0004 execute @e[x=~-1,dx=2,y=~-1,dy=2,z=~-1,dz=2,tag=pbn:BlockMark] ~ ~ ~ execute @e[tag=pbn:TemporaryTag] ~ ~ ~ tp ~ ~ ~-0.0004

execute @s ~ ~ ~-0.0002 scoreboard players add @e[x=~-1,dx=2,y=~-1,dy=2,z=~-1,dz=2,tag=pbn:BlockMark] pbn:posz 200
execute @s ~ ~ ~-0.0002 execute @e[x=~-1,dx=2,y=~-1,dy=2,z=~-1,dz=2,tag=pbn:BlockMark] ~ ~ ~ execute @e[tag=pbn:TemporaryTag] ~ ~ ~ tp ~ ~ ~-0.0002

execute @s ~ ~ ~-0.0001 scoreboard players add @e[x=~-1,dx=2,y=~-1,dy=2,z=~-1,dz=2,tag=pbn:BlockMark] pbn:posz 100
execute @s ~ ~ ~-0.0001 execute @e[x=~-1,dx=2,y=~-1,dy=2,z=~-1,dz=2,tag=pbn:BlockMark] ~ ~ ~ execute @e[tag=pbn:TemporaryTag] ~ ~ ~ tp ~ ~ ~-0.0001

execute @s ~ ~ ~-0.00008 scoreboard players add @e[x=~-1,dx=2,y=~-1,dy=2,z=~-1,dz=2,tag=pbn:BlockMark] pbn:posz 80
execute @s ~ ~ ~-0.00008 execute @e[x=~-1,dx=2,y=~-1,dy=2,z=~-1,dz=2,tag=pbn:BlockMark] ~ ~ ~ execute @e[tag=pbn:TemporaryTag] ~ ~ ~ tp ~ ~ ~-0.00008

execute @s ~ ~ ~-0.00004 scoreboard players add @e[x=~-1,dx=2,y=~-1,dy=2,z=~-1,dz=2,tag=pbn:BlockMark] pbn:posz 40
execute @s ~ ~ ~-0.00004 execute @e[x=~-1,dx=2,y=~-1,dy=2,z=~-1,dz=2,tag=pbn:BlockMark] ~ ~ ~ execute @e[tag=pbn:TemporaryTag] ~ ~ ~ tp ~ ~ ~-0.00004

execute @s ~ ~ ~-0.00002 scoreboard players add @e[x=~-1,dx=2,y=~-1,dy=2,z=~-1,dz=2,tag=pbn:BlockMark] pbn:posz 20
execute @s ~ ~ ~-0.00002 execute @e[x=~-1,dx=2,y=~-1,dy=2,z=~-1,dz=2,tag=pbn:BlockMark] ~ ~ ~ execute @e[tag=pbn:TemporaryTag] ~ ~ ~ tp ~ ~ ~-0.00002

execute @s ~ ~ ~-0.00001 scoreboard players add @e[x=~-1,dx=2,y=~-1,dy=2,z=~-1,dz=2,tag=pbn:BlockMark] pbn:posz 10
execute @s ~ ~ ~-0.00001 execute @e[x=~-1,dx=2,y=~-1,dy=2,z=~-1,dz=2,tag=pbn:BlockMark] ~ ~ ~ execute @e[tag=pbn:TemporaryTag] ~ ~ ~ tp ~ ~ ~-0.00001

execute @s ~ ~ ~-0.000008 scoreboard players add @e[x=~-1,dx=2,y=~-1,dy=2,z=~-1,dz=2,tag=pbn:BlockMark] pbn:posz 8
execute @s ~ ~ ~-0.000008 execute @e[x=~-1,dx=2,y=~-1,dy=2,z=~-1,dz=2,tag=pbn:BlockMark] ~ ~ ~ execute @e[tag=pbn:TemporaryTag] ~ ~ ~ tp ~ ~ ~-0.000008

execute @s ~ ~ ~-0.000004 scoreboard players add @e[x=~-1,dx=2,y=~-1,dy=2,z=~-1,dz=2,tag=pbn:BlockMark] pbn:posz 4
execute @s ~ ~ ~-0.000004 execute @e[x=~-1,dx=2,y=~-1,dy=2,z=~-1,dz=2,tag=pbn:BlockMark] ~ ~ ~ execute @e[tag=pbn:TemporaryTag] ~ ~ ~ tp ~ ~ ~-0.000004

execute @s ~ ~ ~-0.000002 scoreboard players add @e[x=~-1,dx=2,y=~-1,dy=2,z=~-1,dz=2,tag=pbn:BlockMark] pbn:posz 2
execute @s ~ ~ ~-0.000002 execute @e[x=~-1,dx=2,y=~-1,dy=2,z=~-1,dz=2,tag=pbn:BlockMark] ~ ~ ~ execute @e[tag=pbn:TemporaryTag] ~ ~ ~ tp ~ ~ ~-0.000002

execute @s ~ ~ ~-0.000001 scoreboard players add @e[x=~-1,dx=2,y=~-1,dy=2,z=~-1,dz=2,tag=pbn:BlockMark] pbn:posz 1
execute @s ~ ~ ~-0.000001 execute @e[x=~-1,dx=2,y=~-1,dy=2,z=~-1,dz=2,tag=pbn:BlockMark] ~ ~ ~ execute @e[tag=pbn:TemporaryTag] ~ ~ ~ tp ~ ~ ~-0.000001
#求取Z轴小数部分



scoreboard players operation @s pbn:posx = @e[tag=pbn:BlockMark] pbn:posx
scoreboard players operation @s pbn:posy = @e[tag=pbn:BlockMark] pbn:posy
scoreboard players operation @s pbn:posz = @e[tag=pbn:BlockMark] pbn:posz
#同步分数

execute @s[scores={pbn:posx=2000000..}] ~ ~ ~ tp ~2.0 ~ ~
execute @s[scores={pbn:posx=2000000..}] ~ ~ ~ scoreboard players remove @s pbn:posx 2000000

execute @s[scores={pbn:posx=1000000..}] ~ ~ ~ tp ~1.0 ~ ~
execute @s[scores={pbn:posx=1000000..}] ~ ~ ~ scoreboard players remove @s pbn:posx 1000000
#对X轴进行修正处理



execute @s[scores={pbn:posy=2000000..}] ~ ~ ~ tp ~ ~2.0 ~
execute @s[scores={pbn:posy=2000000..}] ~ ~ ~ scoreboard players remove @s pbn:posy 2000000

execute @s[scores={pbn:posy=1000000..}] ~ ~ ~ tp ~ ~1.0 ~
execute @s[scores={pbn:posy=1000000..}] ~ ~ ~ scoreboard players remove @s pbn:posy 1000000
#对Y轴进行修正处理



execute @s[scores={pbn:posz=2000000..}] ~ ~ ~ tp ~ ~ ~2.0
execute @s[scores={pbn:posz=2000000..}] ~ ~ ~ scoreboard players remove @s pbn:posz 2000000

execute @s[scores={pbn:posz=1000000..}] ~ ~ ~ tp ~ ~ ~1.0
execute @s[scores={pbn:posz=1000000..}] ~ ~ ~ scoreboard players remove @s pbn:posz 1000000
#对Y轴进行修正处理



scoreboard players reset @e[tag=pbn:BlockMark]
execute @e[tag=pbn:BlockMark] ~ ~ ~ tp ~ -32767.0 ~
execute @e[tag=pbn:BlockMark] ~ ~ ~ kill @s
tag @s remove pbn:TemporaryTag
#善后





#获取小数部分