execute @a ~ ~32767.0 ~ summon minecraft:armor_stand cre:getpos
execute @a ~ ~32767.0 ~ tag @e[type=minecraft:armor_stand,name=cre:getpos,c=1,r=3] add cre:getpos
execute @e[tag=cre:getpos] ~ ~-32767.0 ~ tag @a[tag=!cre:getpos_InLoadedArea,c=1,r=3] add cre:getpos_InLoadedArea
#summon_entity/entities_and_tags_add

execute @a[c=1,tag=cre:getpos_InLoadedArea] ~ ~ ~ scoreboard players reset * cre:uid
execute @a[tag=cre:getpos_InLoadedArea] ~ ~ ~ scoreboard players set @s cre:uid -1
execute @a[tag=cre:getpos_InLoadedArea] ~ ~ ~ scoreboard players operation @s cre:uid -= @a[scores={cre:uid=-1}] cre:uid
execute @a[tag=cre:getpos_InLoadedArea] ~ ~ ~ scoreboard players add @s cre:uid 1
#get_ls_uid

execute @e[tag=cre:getpos] ~ ~ ~ scoreboard players set @s cre:uid 0
execute @a[tag=cre:getpos_InLoadedArea] ~ ~32767.0 ~ scoreboard players operation @e[tag=cre:getpos,scores={cre:uid=0},c=1,r=3] cre:uid = @s cre:uid
#score(s)_operation_=

execute @e[tag=cre:getpos] ~ ~ ~ tag @s[x=-1048575,dx=1048574] add cre:getpos_x
execute @e[tag=cre:getpos] ~ ~ ~ tag @s[y=32256,dy=510] add cre:getpos_y
execute @e[tag=cre:getpos] ~ ~ ~ tag @s[z=-1048575,dz=1048574] add cre:getpos_z
#tag_add

execute @e[tag=cre:getpos_x] ~ ~ ~ tp ~1048575.0 ~ ~
execute @e[tag=cre:getpos_y] ~ ~ ~ tp ~ ~511.0 ~
execute @e[tag=cre:getpos_z] ~ ~ ~ tp ~ ~ ~1048575.0
#fix_to_+
#prepare



execute @e[tag=cre:getpos] 0.0 ~ ~ scoreboard players add @s[rm=524288.0] cre:posx 524288
execute @e[tag=cre:getpos] 0.0 ~ ~ execute @s[rm=524288.0] ~ ~ ~ tp ~-524288.0 ~ ~

execute @e[tag=cre:getpos] 0.0 ~ ~ scoreboard players add @s[rm=262144.0] cre:posx 262144
execute @e[tag=cre:getpos] 0.0 ~ ~ execute @s[rm=262144.0] ~ ~ ~ tp ~-262144.0 ~ ~

execute @e[tag=cre:getpos] 0.0 ~ ~ scoreboard players add @s[rm=131072.0] cre:posx 131072
execute @e[tag=cre:getpos] 0.0 ~ ~ execute @s[rm=131072.0] ~ ~ ~ tp ~-131072.0 ~ ~

execute @e[tag=cre:getpos] 0.0 ~ ~ scoreboard players add @s[rm=65536.0] cre:posx 65536
execute @e[tag=cre:getpos] 0.0 ~ ~ execute @s[rm=65536.0] ~ ~ ~ tp ~-65536.0 ~ ~

execute @e[tag=cre:getpos] 0.0 ~ ~ scoreboard players add @s[rm=32768.0] cre:posx 32768
execute @e[tag=cre:getpos] 0.0 ~ ~ execute @s[rm=32768.0] ~ ~ ~ tp ~-32768.0 ~ ~

execute @e[tag=cre:getpos] 0.0 ~ ~ scoreboard players add @s[rm=16384.0] cre:posx 16384
execute @e[tag=cre:getpos] 0.0 ~ ~ execute @s[rm=16384.0] ~ ~ ~ tp ~-16384.0 ~ ~

execute @e[tag=cre:getpos] 0.0 ~ ~ scoreboard players add @s[rm=8192.0] cre:posx 8192
execute @e[tag=cre:getpos] 0.0 ~ ~ execute @s[rm=8192.0] ~ ~ ~ tp ~-8192.0 ~ ~

execute @e[tag=cre:getpos] 0.0 ~ ~ scoreboard players add @s[rm=4096.0] cre:posx 4096
execute @e[tag=cre:getpos] 0.0 ~ ~ execute @s[rm=4096.0] ~ ~ ~ tp ~-4096.0 ~ ~

execute @e[tag=cre:getpos] 0.0 ~ ~ scoreboard players add @s[rm=2048.0] cre:posx 2048
execute @e[tag=cre:getpos] 0.0 ~ ~ execute @s[rm=2048.0] ~ ~ ~ tp ~-2048.0 ~ ~

execute @e[tag=cre:getpos] 0.0 ~ ~ scoreboard players add @s[rm=1024.0] cre:posx 1024
execute @e[tag=cre:getpos] 0.0 ~ ~ execute @s[rm=1024.0] ~ ~ ~ tp ~-1024.0 ~ ~

execute @e[tag=cre:getpos] 0.0 ~ ~ scoreboard players add @s[rm=512.0] cre:posx 512
execute @e[tag=cre:getpos] 0.0 ~ ~ execute @s[rm=512.0] ~ ~ ~ tp ~-512.0 ~ ~

execute @e[tag=cre:getpos] 0.0 ~ ~ scoreboard players add @s[rm=256.0] cre:posx 256
execute @e[tag=cre:getpos] 0.0 ~ ~ execute @s[rm=256.0] ~ ~ ~ tp ~-256.0 ~ ~

execute @e[tag=cre:getpos] 0.0 ~ ~ scoreboard players add @s[rm=128.0] cre:posx 128
execute @e[tag=cre:getpos] 0.0 ~ ~ execute @s[rm=128.0] ~ ~ ~ tp ~-128.0 ~ ~

execute @e[tag=cre:getpos] 0.0 ~ ~ scoreboard players add @s[rm=64.0] cre:posx 64
execute @e[tag=cre:getpos] 0.0 ~ ~ execute @s[rm=64.0] ~ ~ ~ tp ~-64.0 ~ ~

execute @e[tag=cre:getpos] 0.0 ~ ~ scoreboard players add @s[rm=32.0] cre:posx 32
execute @e[tag=cre:getpos] 0.0 ~ ~ execute @s[rm=32.0] ~ ~ ~ tp ~-32.0 ~ ~

execute @e[tag=cre:getpos] 0.0 ~ ~ scoreboard players add @s[rm=16.0] cre:posx 16
execute @e[tag=cre:getpos] 0.0 ~ ~ execute @s[rm=16.0] ~ ~ ~ tp ~-16.0 ~ ~

execute @e[tag=cre:getpos] 0.0 ~ ~ scoreboard players add @s[rm=8.0] cre:posx 8
execute @e[tag=cre:getpos] 0.0 ~ ~ execute @s[rm=8.0] ~ ~ ~ tp ~-8.0 ~ ~

execute @e[tag=cre:getpos] 0.0 ~ ~ scoreboard players add @s[rm=4.0] cre:posx 4
execute @e[tag=cre:getpos] 0.0 ~ ~ execute @s[rm=4.0] ~ ~ ~ tp ~-4.0 ~ ~

execute @e[tag=cre:getpos] 0.0 ~ ~ scoreboard players add @s[rm=2.0] cre:posx 2
execute @e[tag=cre:getpos] 0.0 ~ ~ execute @s[rm=2.0] ~ ~ ~ tp ~-2.0 ~ ~

execute @e[tag=cre:getpos] 0.0 ~ ~ scoreboard players add @s[rm=1.0] cre:posx 1
execute @e[tag=cre:getpos] 0.0 ~ ~ execute @s[rm=1.0] ~ ~ ~ tp ~-1.0 ~ ~
#x



execute @e[tag=cre:getpos] ~ ~ 0.0 scoreboard players add @s[rm=524288.0] cre:posz 524288
execute @e[tag=cre:getpos] ~ ~ 0.0 execute @s[rm=524288.0] ~ ~ ~ tp ~ ~ ~-524288.0

execute @e[tag=cre:getpos] ~ ~ 0.0 scoreboard players add @s[rm=262144.0] cre:posz 262144
execute @e[tag=cre:getpos] ~ ~ 0.0 execute @s[rm=262144.0] ~ ~ ~ tp ~ ~ ~-262144.0

execute @e[tag=cre:getpos] ~ ~ 0.0 scoreboard players add @s[rm=131072.0] cre:posz 131072
execute @e[tag=cre:getpos] ~ ~ 0.0 execute @s[rm=131072.0] ~ ~ ~ tp ~ ~ ~-131072.0

execute @e[tag=cre:getpos] ~ ~ 0.0 scoreboard players add @s[rm=65536.0] cre:posz 65536
execute @e[tag=cre:getpos] ~ ~ 0.0 execute @s[rm=65536.0] ~ ~ ~ tp ~ ~ ~-65536.0

execute @e[tag=cre:getpos] ~ ~ 0.0 scoreboard players add @s[rm=32768.0] cre:posz 32768
execute @e[tag=cre:getpos] ~ ~ 0.0 execute @s[rm=32768.0] ~ ~ ~ tp ~ ~ ~-32768.0

execute @e[tag=cre:getpos] ~ ~ 0.0 scoreboard players add @s[rm=16384.0] cre:posz 16384
execute @e[tag=cre:getpos] ~ ~ 0.0 execute @s[rm=16384.0] ~ ~ ~ tp ~ ~ ~-16384.0

execute @e[tag=cre:getpos] ~ ~ 0.0 scoreboard players add @s[rm=8192.0] cre:posz 8192
execute @e[tag=cre:getpos] ~ ~ 0.0 execute @s[rm=8192.0] ~ ~ ~ tp ~ ~ ~-8192.0

execute @e[tag=cre:getpos] ~ ~ 0.0 scoreboard players add @s[rm=4096.0] cre:posz 4096
execute @e[tag=cre:getpos] ~ ~ 0.0 execute @s[rm=4096.0] ~ ~ ~ tp ~ ~ ~-4096.0

execute @e[tag=cre:getpos] ~ ~ 0.0 scoreboard players add @s[rm=2048.0] cre:posz 2048
execute @e[tag=cre:getpos] ~ ~ 0.0 execute @s[rm=2048.0] ~ ~ ~ tp ~ ~ ~-2048.0

execute @e[tag=cre:getpos] ~ ~ 0.0 scoreboard players add @s[rm=1024.0] cre:posz 1024
execute @e[tag=cre:getpos] ~ ~ 0.0 execute @s[rm=1024.0] ~ ~ ~ tp ~ ~ ~-1024.0

execute @e[tag=cre:getpos] ~ ~ 0.0 scoreboard players add @s[rm=512.0] cre:posz 512
execute @e[tag=cre:getpos] ~ ~ 0.0 execute @s[rm=512.0] ~ ~ ~ tp ~ ~ ~-512.0

execute @e[tag=cre:getpos] ~ ~ 0.0 scoreboard players add @s[rm=256.0] cre:posz 256
execute @e[tag=cre:getpos] ~ ~ 0.0 execute @s[rm=256.0] ~ ~ ~ tp ~ ~ ~-256.0

execute @e[tag=cre:getpos] ~ ~ 0.0 scoreboard players add @s[rm=128.0] cre:posz 128
execute @e[tag=cre:getpos] ~ ~ 0.0 execute @s[rm=128.0] ~ ~ ~ tp ~ ~ ~-128.0

execute @e[tag=cre:getpos] ~ ~ 0.0 scoreboard players add @s[rm=64.0] cre:posz 64
execute @e[tag=cre:getpos] ~ ~ 0.0 execute @s[rm=64.0] ~ ~ ~ tp ~ ~ ~-64.0

execute @e[tag=cre:getpos] ~ ~ 0.0 scoreboard players add @s[rm=32.0] cre:posz 32
execute @e[tag=cre:getpos] ~ ~ 0.0 execute @s[rm=32.0] ~ ~ ~ tp ~ ~ ~-32.0

execute @e[tag=cre:getpos] ~ ~ 0.0 scoreboard players add @s[rm=16.0] cre:posz 16
execute @e[tag=cre:getpos] ~ ~ 0.0 execute @s[rm=16.0] ~ ~ ~ tp ~ ~ ~-16.0

execute @e[tag=cre:getpos] ~ ~ 0.0 scoreboard players add @s[rm=8.0] cre:posz 8
execute @e[tag=cre:getpos] ~ ~ 0.0 execute @s[rm=8.0] ~ ~ ~ tp ~ ~ ~-8.0

execute @e[tag=cre:getpos] ~ ~ 0.0 scoreboard players add @s[rm=4.0] cre:posz 4
execute @e[tag=cre:getpos] ~ ~ 0.0 execute @s[rm=4.0] ~ ~ ~ tp ~ ~ ~-4.0

execute @e[tag=cre:getpos] ~ ~ 0.0 scoreboard players add @s[rm=2.0] cre:posz 2
execute @e[tag=cre:getpos] ~ ~ 0.0 execute @s[rm=2.0] ~ ~ ~ tp ~ ~ ~-2.0

execute @e[tag=cre:getpos] ~ ~ 0.0 scoreboard players add @s[rm=1.0] cre:posz 1
execute @e[tag=cre:getpos] ~ ~ 0.0 execute @s[rm=1.0] ~ ~ ~ tp ~ ~ ~-1.0
#z



execute @e[tag=cre:getpos] ~ 32767.0 ~ scoreboard players add @s[rm=256.0] cre:posy 256
execute @e[tag=cre:getpos] ~ 32767.0 ~ execute @s[rm=256.0] ~ ~ ~ tp ~ ~-256.0 ~

execute @e[tag=cre:getpos] ~ 32767.0 ~ scoreboard players add @s[rm=128.0] cre:posy 128
execute @e[tag=cre:getpos] ~ 32767.0 ~ execute @s[rm=128.0] ~ ~ ~ tp ~ ~-128.0 ~

execute @e[tag=cre:getpos] ~ 32767.0 ~ scoreboard players add @s[rm=64.0] cre:posy 64
execute @e[tag=cre:getpos] ~ 32767.0 ~ execute @s[rm=64.0] ~ ~ ~ tp ~ ~-64.0 ~

execute @e[tag=cre:getpos] ~ 32767.0 ~ scoreboard players add @s[rm=32.0] cre:posy 32
execute @e[tag=cre:getpos] ~ 32767.0 ~ execute @s[rm=32.0] ~ ~ ~ tp ~ ~-32.0 ~

execute @e[tag=cre:getpos] ~ 32767.0 ~ scoreboard players add @s[rm=16.0] cre:posy 16
execute @e[tag=cre:getpos] ~ 32767.0 ~ execute @s[rm=16.0] ~ ~ ~ tp ~ ~-16.0 ~

execute @e[tag=cre:getpos] ~ 32767.0 ~ scoreboard players add @s[rm=8.0] cre:posy 8
execute @e[tag=cre:getpos] ~ 32767.0 ~ execute @s[rm=8.0] ~ ~ ~ tp ~ ~-8.0 ~

execute @e[tag=cre:getpos] ~ 32767.0 ~ scoreboard players add @s[rm=4.0] cre:posy 4
execute @e[tag=cre:getpos] ~ 32767.0 ~ execute @s[rm=4.0] ~ ~ ~ tp ~ ~-4.0 ~

execute @e[tag=cre:getpos] ~ 32767.0 ~ scoreboard players add @s[rm=2.0] cre:posy 2
execute @e[tag=cre:getpos] ~ 32767.0 ~ execute @s[rm=2.0] ~ ~ ~ tp ~ ~-2.0 ~

execute @e[tag=cre:getpos] ~ 32767.0 ~ scoreboard players add @s[rm=1.0] cre:posy 1
execute @e[tag=cre:getpos] ~ 32767.0 ~ execute @s[rm=1.0] ~ ~ ~ tp ~ ~-1.0 ~
#y
#getpos


execute @e[tag=cre:getpos_x] ~ ~ ~ scoreboard players remove @s cre:posx 1048575
execute @e[tag=cre:getpos_y] ~ ~ ~ scoreboard players remove @s cre:posy 511
execute @e[tag=cre:getpos_z] ~ ~ ~ scoreboard players remove @s cre:posz 1048575
#get_right_score(s)

scoreboard players reset * cre:math
 #Need to Translate(Translate.mcfunction)
execute @e[tag=cre:getpos] ~ ~ ~ function BeSureMaster
#BeSureMaster

scoreboard players set @a[tag=cre:getpos_InLoadedArea] cre:posx 0
scoreboard players set @a[tag=cre:getpos_InLoadedArea] cre:posy 0
scoreboard players set @a[tag=cre:getpos_InLoadedArea] cre:posz 0
#scores_set_to_0
execute @e[tag=cre:getpos] ~ ~ ~ scoreboard players operation @a[c=1,r=3,scores={cre:posx=0}] cre:posx = @s cre:posx
execute @e[tag=cre:getpos] ~ ~ ~ scoreboard players operation @a[c=1,r=3,scores={cre:posy=0}] cre:posy = @s cre:posy
execute @e[tag=cre:getpos] ~ ~ ~ scoreboard players operation @a[c=1,r=3,scores={cre:posz=0}] cre:posz = @s cre:posz
#scores_operation_=

execute @a[c=1] ~ ~ ~ tp @e[tag=cre:getpos] ~ -32767.0 ~
execute @e[tag=cre:getpos] ~ ~ ~ kill @s
#kill_entity(entities)