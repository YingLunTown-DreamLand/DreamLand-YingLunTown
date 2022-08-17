scoreboard objectives add pos_note:posx
scoreboard objectives add pos_note:posz
scoreboard objectives add pos_note:x dummy
scoreboard objectives add pos_note:z dummy
#添加计分板

execute @a[tag=pos_note:getpos] ~ ~ ~ tag @e[name="pos_note:getpos/mark_target",type=minecraft:armor_stand] add pos_note:duplicate_name
execute @a[tag=pos_note:getpos] ~ ~ ~ tag @e[name="pos_note:getpos/tp",type=minecraft:armor_stand] add pos_note:duplicate_name
execute @a[tag=pos_note:getpos] ~ ~ ~ summon minecraft:armor_stand "pos_note:getpos/mark_target" ~ 32767.0 ~
execute @a[tag=pos_note:getpos] ~ ~ ~ summon minecraft:armor_stand "pos_note:getpos/tp" ~ 32767.0 ~
execute @a[tag=pos_note:getpos] ~ ~ ~ tag @e[name="pos_note:getpos/mark_target",type=minecraft:armor_stand,tag=!pos_note:duplicate_name] add "pos_note:getpos/mark_target"
execute @a[tag=pos_note:getpos] ~ ~ ~ tag @e[name="pos_note:getpos/tp",type=minecraft:armor_stand,tag=!pos_note:duplicate_name] add "pos_note:getpos/tp"
execute @e[tag=pos_note:duplicate_name] ~ ~ ~ tag @s remove pos_note:duplicate_name
#生成辅助实体

execute @e[tag="pos_note:getpos/tp"] ~ ~ ~ scoreboard players add @s pos_note:posx 0
execute @e[tag="pos_note:getpos/tp"] ~ ~ ~ scoreboard players add @s pos_note:posz 0
#分数初始化

execute @e[tag="pos_note:getpos/mark_target"] ~ ~ ~ tag @s[x=-1,dx=-30000000] add "pos_note:getpos/x-"
execute @e[tag="pos_note:getpos/mark_target"] ~ ~ ~ tag @s[z=-1,dz=-30000000] add "pos_note:getpos/z-"
#判断玩家位置是否在负半轴

execute @e[tag="pos_note:getpos/x-"] ~ ~ ~ tp ~1048575.0 ~ ~
execute @e[tag="pos_note:getpos/z-"] ~ ~ ~ tp ~ ~ ~1048575.0
#若标记玩家位置的实体位于负半轴，则将其转移至正半轴上

execute @e[tag="pos_note:getpos/mark_target"] ~ ~ ~ scoreboard players add @e[tag="pos_note:getpos/tp",rm=524288] pos_note:posx 524288
execute @e[tag="pos_note:getpos/mark_target"] ~ ~ ~ execute @e[tag="pos_note:getpos/tp",rm=524288] ~ ~ ~ tp ~524288.0 ~ ~
#1
execute @e[tag="pos_note:getpos/mark_target"] ~ ~ ~ scoreboard players add @e[tag="pos_note:getpos/tp",rm=262144] pos_note:posx 262144
execute @e[tag="pos_note:getpos/mark_target"] ~ ~ ~ execute @e[tag="pos_note:getpos/tp",rm=262144] ~ ~ ~ tp ~262144.0 ~ ~
#2
execute @e[tag="pos_note:getpos/mark_target"] ~ ~ ~ scoreboard players add @e[tag="pos_note:getpos/tp",rm=131072] pos_note:posx 131072
execute @e[tag="pos_note:getpos/mark_target"] ~ ~ ~ execute @e[tag="pos_note:getpos/tp",rm=131072] ~ ~ ~ tp ~131072.0 ~ ~
#3
execute @e[tag="pos_note:getpos/mark_target"] ~ ~ ~ scoreboard players add @e[tag="pos_note:getpos/tp",rm=65536] pos_note:posx 65536
execute @e[tag="pos_note:getpos/mark_target"] ~ ~ ~ execute @e[tag="pos_note:getpos/tp",rm=65536] ~ ~ ~ tp ~65536.0 ~ ~
#4
execute @e[tag="pos_note:getpos/mark_target"] ~ ~ ~ scoreboard players add @e[tag="pos_note:getpos/tp",rm=32768] pos_note:posx 32768
execute @e[tag="pos_note:getpos/mark_target"] ~ ~ ~ execute @e[tag="pos_note:getpos/tp",rm=32768] ~ ~ ~ tp ~32768.0 ~ ~
#5
execute @e[tag="pos_note:getpos/mark_target"] ~ ~ ~ scoreboard players add @e[tag="pos_note:getpos/tp",rm=16384] pos_note:posx 16384
execute @e[tag="pos_note:getpos/mark_target"] ~ ~ ~ execute @e[tag="pos_note:getpos/tp",rm=16384] ~ ~ ~ tp ~16384.0 ~ ~
#6
execute @e[tag="pos_note:getpos/mark_target"] ~ ~ ~ scoreboard players add @e[tag="pos_note:getpos/tp",rm=8192] pos_note:posx 8192
execute @e[tag="pos_note:getpos/mark_target"] ~ ~ ~ execute @e[tag="pos_note:getpos/tp",rm=8192] ~ ~ ~ tp ~8192.0 ~ ~
#7
execute @e[tag="pos_note:getpos/mark_target"] ~ ~ ~ scoreboard players add @e[tag="pos_note:getpos/tp",rm=4096] pos_note:posx 4096
execute @e[tag="pos_note:getpos/mark_target"] ~ ~ ~ execute @e[tag="pos_note:getpos/tp",rm=4096] ~ ~ ~ tp ~4096.0 ~ ~
#8
execute @e[tag="pos_note:getpos/mark_target"] ~ ~ ~ scoreboard players add @e[tag="pos_note:getpos/tp",rm=2048] pos_note:posx 2048
execute @e[tag="pos_note:getpos/mark_target"] ~ ~ ~ execute @e[tag="pos_note:getpos/tp",rm=2048] ~ ~ ~ tp ~2048.0 ~ ~
#9
execute @e[tag="pos_note:getpos/mark_target"] ~ ~ ~ scoreboard players add @e[tag="pos_note:getpos/tp",rm=1024] pos_note:posx 1024
execute @e[tag="pos_note:getpos/mark_target"] ~ ~ ~ execute @e[tag="pos_note:getpos/tp",rm=1024] ~ ~ ~ tp ~1024.0 ~ ~
#10
execute @e[tag="pos_note:getpos/mark_target"] ~ ~ ~ scoreboard players add @e[tag="pos_note:getpos/tp",rm=512] pos_note:posx 512
execute @e[tag="pos_note:getpos/mark_target"] ~ ~ ~ execute @e[tag="pos_note:getpos/tp",rm=512] ~ ~ ~ tp ~512.0 ~ ~
#11
execute @e[tag="pos_note:getpos/mark_target"] ~ ~ ~ scoreboard players add @e[tag="pos_note:getpos/tp",rm=256] pos_note:posx 256
execute @e[tag="pos_note:getpos/mark_target"] ~ ~ ~ execute @e[tag="pos_note:getpos/tp",rm=256] ~ ~ ~ tp ~256.0 ~ ~
#12
execute @e[tag="pos_note:getpos/mark_target"] ~ ~ ~ scoreboard players add @e[tag="pos_note:getpos/tp",rm=128] pos_note:posx 128
execute @e[tag="pos_note:getpos/mark_target"] ~ ~ ~ execute @e[tag="pos_note:getpos/tp",rm=128] ~ ~ ~ tp ~128.0 ~ ~
#13
execute @e[tag="pos_note:getpos/mark_target"] ~ ~ ~ scoreboard players add @e[tag="pos_note:getpos/tp",rm=64] pos_note:posx 64
execute @e[tag="pos_note:getpos/mark_target"] ~ ~ ~ execute @e[tag="pos_note:getpos/tp",rm=64] ~ ~ ~ tp ~64.0 ~ ~
#14
execute @e[tag="pos_note:getpos/mark_target"] ~ ~ ~ scoreboard players add @e[tag="pos_note:getpos/tp",rm=32] pos_note:posx 32
execute @e[tag="pos_note:getpos/mark_target"] ~ ~ ~ execute @e[tag="pos_note:getpos/tp",rm=32] ~ ~ ~ tp ~32.0 ~ ~
#15
execute @e[tag="pos_note:getpos/mark_target"] ~ ~ ~ scoreboard players add @e[tag="pos_note:getpos/tp",rm=16] pos_note:posx 16
execute @e[tag="pos_note:getpos/mark_target"] ~ ~ ~ execute @e[tag="pos_note:getpos/tp",rm=16] ~ ~ ~ tp ~16.0 ~ ~
#16
execute @e[tag="pos_note:getpos/mark_target"] ~ ~ ~ scoreboard players add @e[tag="pos_note:getpos/tp",rm=8] pos_note:posx 8
execute @e[tag="pos_note:getpos/mark_target"] ~ ~ ~ execute @e[tag="pos_note:getpos/tp",rm=8] ~ ~ ~ tp ~8.0 ~ ~
#17
execute @e[tag="pos_note:getpos/mark_target"] ~ ~ ~ scoreboard players add @e[tag="pos_note:getpos/tp",rm=4] pos_note:posx 4
execute @e[tag="pos_note:getpos/mark_target"] ~ ~ ~ execute @e[tag="pos_note:getpos/tp",rm=4] ~ ~ ~ tp ~4.0 ~ ~
#18
execute @e[tag="pos_note:getpos/mark_target"] ~ ~ ~ scoreboard players add @e[tag="pos_note:getpos/tp",rm=2] pos_note:posx 2
execute @e[tag="pos_note:getpos/mark_target"] ~ ~ ~ execute @e[tag="pos_note:getpos/tp",rm=2] ~ ~ ~ tp ~2.0 ~ ~
#19
execute @e[tag="pos_note:getpos/mark_target"] ~ ~ ~ scoreboard players add @e[tag="pos_note:getpos/tp",rm=1] pos_note:posx 1
execute @e[tag="pos_note:getpos/mark_target"] ~ ~ ~ execute @e[tag="pos_note:getpos/tp",rm=1] ~ ~ ~ tp ~1.0 ~ ~
#20
#posx

execute @e[tag="pos_note:getpos/mark_target"] ~ ~ ~ scoreboard players add @e[tag="pos_note:getpos/tp",rm=524288] pos_note:posz 524288
execute @e[tag="pos_note:getpos/mark_target"] ~ ~ ~ execute @e[tag="pos_note:getpos/tp",rm=524288] ~ ~ ~ tp ~ ~ ~524288.0
#1
execute @e[tag="pos_note:getpos/mark_target"] ~ ~ ~ scoreboard players add @e[tag="pos_note:getpos/tp",rm=262144] pos_note:posz 262144
execute @e[tag="pos_note:getpos/mark_target"] ~ ~ ~ execute @e[tag="pos_note:getpos/tp",rm=262144] ~ ~ ~ tp ~ ~ ~262144.0
#2
execute @e[tag="pos_note:getpos/mark_target"] ~ ~ ~ scoreboard players add @e[tag="pos_note:getpos/tp",rm=131072] pos_note:posz 131072
execute @e[tag="pos_note:getpos/mark_target"] ~ ~ ~ execute @e[tag="pos_note:getpos/tp",rm=131072] ~ ~ ~ tp ~ ~ ~131072.0
#3
execute @e[tag="pos_note:getpos/mark_target"] ~ ~ ~ scoreboard players add @e[tag="pos_note:getpos/tp",rm=65536] pos_note:posz 65536
execute @e[tag="pos_note:getpos/mark_target"] ~ ~ ~ execute @e[tag="pos_note:getpos/tp",rm=65536] ~ ~ ~ tp ~ ~ ~65536.0
#4
execute @e[tag="pos_note:getpos/mark_target"] ~ ~ ~ scoreboard players add @e[tag="pos_note:getpos/tp",rm=32768] pos_note:posz 32768
execute @e[tag="pos_note:getpos/mark_target"] ~ ~ ~ execute @e[tag="pos_note:getpos/tp",rm=32768] ~ ~ ~ tp ~ ~ ~32768.0
#5
execute @e[tag="pos_note:getpos/mark_target"] ~ ~ ~ scoreboard players add @e[tag="pos_note:getpos/tp",rm=16384] pos_note:posz 16384
execute @e[tag="pos_note:getpos/mark_target"] ~ ~ ~ execute @e[tag="pos_note:getpos/tp",rm=16384] ~ ~ ~ tp ~ ~ ~16384.0
#6
execute @e[tag="pos_note:getpos/mark_target"] ~ ~ ~ scoreboard players add @e[tag="pos_note:getpos/tp",rm=8192] pos_note:posz 8192
execute @e[tag="pos_note:getpos/mark_target"] ~ ~ ~ execute @e[tag="pos_note:getpos/tp",rm=8192] ~ ~ ~ tp ~ ~ ~8192.0
#7
execute @e[tag="pos_note:getpos/mark_target"] ~ ~ ~ scoreboard players add @e[tag="pos_note:getpos/tp",rm=4096] pos_note:posz 4096
execute @e[tag="pos_note:getpos/mark_target"] ~ ~ ~ execute @e[tag="pos_note:getpos/tp",rm=4096] ~ ~ ~ tp ~ ~ ~4096.0
#8
execute @e[tag="pos_note:getpos/mark_target"] ~ ~ ~ scoreboard players add @e[tag="pos_note:getpos/tp",rm=2048] pos_note:posz 2048
execute @e[tag="pos_note:getpos/mark_target"] ~ ~ ~ execute @e[tag="pos_note:getpos/tp",rm=2048] ~ ~ ~ tp ~ ~ ~2048.0
#9
execute @e[tag="pos_note:getpos/mark_target"] ~ ~ ~ scoreboard players add @e[tag="pos_note:getpos/tp",rm=1024] pos_note:posz 1024
execute @e[tag="pos_note:getpos/mark_target"] ~ ~ ~ execute @e[tag="pos_note:getpos/tp",rm=1024] ~ ~ ~ tp ~ ~ ~1024.0
#10
execute @e[tag="pos_note:getpos/mark_target"] ~ ~ ~ scoreboard players add @e[tag="pos_note:getpos/tp",rm=512] pos_note:posz 512
execute @e[tag="pos_note:getpos/mark_target"] ~ ~ ~ execute @e[tag="pos_note:getpos/tp",rm=512] ~ ~ ~ tp ~ ~ ~512.0
#11
execute @e[tag="pos_note:getpos/mark_target"] ~ ~ ~ scoreboard players add @e[tag="pos_note:getpos/tp",rm=256] pos_note:posz 256
execute @e[tag="pos_note:getpos/mark_target"] ~ ~ ~ execute @e[tag="pos_note:getpos/tp",rm=256] ~ ~ ~ tp ~ ~ ~256.0
#12
execute @e[tag="pos_note:getpos/mark_target"] ~ ~ ~ scoreboard players add @e[tag="pos_note:getpos/tp",rm=128] pos_note:posz 128
execute @e[tag="pos_note:getpos/mark_target"] ~ ~ ~ execute @e[tag="pos_note:getpos/tp",rm=128] ~ ~ ~ tp ~ ~ ~128.0
#13
execute @e[tag="pos_note:getpos/mark_target"] ~ ~ ~ scoreboard players add @e[tag="pos_note:getpos/tp",rm=64] pos_note:posz 64
execute @e[tag="pos_note:getpos/mark_target"] ~ ~ ~ execute @e[tag="pos_note:getpos/tp",rm=64] ~ ~ ~ tp ~ ~ ~64.0
#14
execute @e[tag="pos_note:getpos/mark_target"] ~ ~ ~ scoreboard players add @e[tag="pos_note:getpos/tp",rm=32] pos_note:posz 32
execute @e[tag="pos_note:getpos/mark_target"] ~ ~ ~ execute @e[tag="pos_note:getpos/tp",rm=32] ~ ~ ~ tp ~ ~ ~32.0
#15
execute @e[tag="pos_note:getpos/mark_target"] ~ ~ ~ scoreboard players add @e[tag="pos_note:getpos/tp",rm=16] pos_note:posz 16
execute @e[tag="pos_note:getpos/mark_target"] ~ ~ ~ execute @e[tag="pos_note:getpos/tp",rm=16] ~ ~ ~ tp ~ ~ ~16.0
#16
execute @e[tag="pos_note:getpos/mark_target"] ~ ~ ~ scoreboard players add @e[tag="pos_note:getpos/tp",rm=8] pos_note:posz 8
execute @e[tag="pos_note:getpos/mark_target"] ~ ~ ~ execute @e[tag="pos_note:getpos/tp",rm=8] ~ ~ ~ tp ~ ~ ~8.0
#17
execute @e[tag="pos_note:getpos/mark_target"] ~ ~ ~ scoreboard players add @e[tag="pos_note:getpos/tp",rm=4] pos_note:posz 4
execute @e[tag="pos_note:getpos/mark_target"] ~ ~ ~ execute @e[tag="pos_note:getpos/tp",rm=4] ~ ~ ~ tp ~ ~ ~4.0
#18
execute @e[tag="pos_note:getpos/mark_target"] ~ ~ ~ scoreboard players add @e[tag="pos_note:getpos/tp",rm=2] pos_note:posz 2
execute @e[tag="pos_note:getpos/mark_target"] ~ ~ ~ execute @e[tag="pos_note:getpos/tp",rm=2] ~ ~ ~ tp ~ ~ ~2.0
#19
execute @e[tag="pos_note:getpos/mark_target"] ~ ~ ~ scoreboard players add @e[tag="pos_note:getpos/tp",rm=1] pos_note:posz 1
execute @e[tag="pos_note:getpos/mark_target"] ~ ~ ~ execute @e[tag="pos_note:getpos/tp",rm=1] ~ ~ ~ tp ~ ~ ~1.0
#20
#posz

execute @e[tag="pos_note:getpos/x-"] ~ ~ ~ scoreboard players remove @e[tag="pos_note:getpos/tp"] pos_note:posx 1048575
execute @e[tag="pos_note:getpos/z-"] ~ ~ ~ scoreboard players remove @e[tag="pos_note:getpos/tp"] pos_note:posz 1048575
#与第20到21行命令关联
#计算出未转移到正半轴时的情况

execute @e[tag="pos_note:getpos/tp"] ~ ~ ~ scoreboard players operation @a[tag=pos_note:getpos] pos_note:posx = @s pos_note:posx
execute @e[tag="pos_note:getpos/tp"] ~ ~ ~ scoreboard players operation @a[tag=pos_note:getpos] pos_note:posz = @s pos_note:posz
#将计算出的坐标数据分数赋值到玩家上

execute @e[tag="pos_note:getpos/mark_target"] ~ ~ ~ scoreboard players reset @s
execute @e[tag="pos_note:getpos/tp"] ~ ~ ~ scoreboard players reset @s
execute @e[tag="pos_note:getpos/mark_target"] ~ ~ ~ tp ~ -32767.0 ~
execute @e[tag="pos_note:getpos/tp"] ~ ~ ~ tp ~ -32767.0 ~
execute @e[tag="pos_note:getpos/mark_target"] ~ ~ ~ kill @s
execute @e[tag="pos_note:getpos/tp"] ~ ~ ~ kill @s
#善后