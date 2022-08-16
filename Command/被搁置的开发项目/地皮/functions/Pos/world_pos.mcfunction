execute @a[tag=uw:getpos,tag=!uw:getpos_allow] ~ ~ ~ summon minecraft:armor_stand uw:getpos_mark_for_master
execute @a[tag=uw:getpos,tag=!uw:getpos_allow] ~ ~ ~ tag @e[type=minecraft:armor_stand,name=uw:getpos_mark_for_master,r=0.1,c=1] add uw:getpos_mfm
execute @a[tag=uw:getpos,tag=!uw:getpos_allow] ~ ~ ~ summon minecraft:armor_stand uw:getpos_helper
execute @a[tag=uw:getpos,tag=!uw:getpos_allow] ~ ~ ~ tag @e[type=minecraft:armor_stand,name=uw:getpos_helper,r=0.1,c=1] add uw:getpos_helper
#summon_entity_and_tag_set

execute @e[tag=uw:getpos_mfm] ~ ~ ~ tag @s[x=-1,dx=-300000000] add uw:getpos_xremove
execute @e[tag=uw:getpos_mfm] ~ ~ ~ execute @s[x=-1,dx=-300000000] ~ ~ ~ tp ~1048575 ~ ~
#1
execute @e[tag=uw:getpos_mfm] ~ ~ ~ tag @s[x=-1,dx=-300000000] add uw:getpos_yremove
execute @e[tag=uw:getpos_mfm] ~ ~ ~ execute @s[x=-1,dx=-300000000] ~ ~ ~ tp ~ ~1048575 ~
#2
execute @e[tag=uw:getpos_mfm] ~ ~ ~ tag @s[x=-1,dx=-300000000] add uw:getpos_zremove
execute @e[tag=uw:getpos_mfm] ~ ~ ~ execute @s[x=-1,dx=-300000000] ~ ~ ~ tp ~ ~ ~1048575
#3
#be_sure_that_is_x-/y-/z-

execute @e[tag=uw:getpos_mfm] ~ ~ ~ scoreboard players add @s uw:posx 0
execute @e[tag=uw:getpos_mfm] ~ ~ ~ scoreboard players add @s uw:posy 0
execute @e[tag=uw:getpos_mfm] ~ ~ ~ scoreboard players add @s uw:posz 0
#score_reset

execute @e[tag=uw:getpos_helper] ~ ~ ~ tp 0.5 ~ ~
#teleport

execute @e[tag=uw:getpos_helper] ~ ~ ~ scoreboard players add @e[tag=uw:getpos_mfm,rm=524288] uw:posx 524288
execute @e[tag=uw:getpos_mfm] ~ ~ ~ execute @e[tag=uw:getpos_helper,rm=524288] ~ ~ ~ tp ~524288 ~ ~
#1
execute @e[tag=uw:getpos_helper] ~ ~ ~ scoreboard players add @e[tag=uw:getpos_mfm,rm=262144] uw:posx 262144
execute @e[tag=uw:getpos_mfm] ~ ~ ~ execute @e[tag=uw:getpos_helper,rm=262144] ~ ~ ~ tp ~262144 ~ ~
#2
execute @e[tag=uw:getpos_helper] ~ ~ ~ scoreboard players add @e[tag=uw:getpos_mfm,rm=131072] uw:posx 131072
execute @e[tag=uw:getpos_mfm] ~ ~ ~ execute @e[tag=uw:getpos_helper,rm=131072] ~ ~ ~ tp ~131072 ~ ~
#3
execute @e[tag=uw:getpos_helper] ~ ~ ~ scoreboard players add @e[tag=uw:getpos_mfm,rm=65536] uw:posx 65536
execute @e[tag=uw:getpos_mfm] ~ ~ ~ execute @e[tag=uw:getpos_helper,rm=65536] ~ ~ ~ tp ~65536 ~ ~
#4
execute @e[tag=uw:getpos_helper] ~ ~ ~ scoreboard players add @e[tag=uw:getpos_mfm,rm=32768] uw:posx 32768
execute @e[tag=uw:getpos_mfm] ~ ~ ~ execute @e[tag=uw:getpos_helper,rm=32768] ~ ~ ~ tp ~32768 ~ ~
#5
execute @e[tag=uw:getpos_helper] ~ ~ ~ scoreboard players add @e[tag=uw:getpos_mfm,rm=16384] uw:posx 16384
execute @e[tag=uw:getpos_mfm] ~ ~ ~ execute @e[tag=uw:getpos_helper,rm=16384] ~ ~ ~ tp ~16384 ~ ~
#6
execute @e[tag=uw:getpos_helper] ~ ~ ~ scoreboard players add @e[tag=uw:getpos_mfm,rm=8192] uw:posx 8192
execute @e[tag=uw:getpos_mfm] ~ ~ ~ execute @e[tag=uw:getpos_helper,rm=8192] ~ ~ ~ tp ~8192 ~ ~
#7
execute @e[tag=uw:getpos_helper] ~ ~ ~ scoreboard players add @e[tag=uw:getpos_mfm,rm=4096] uw:posx 4096
execute @e[tag=uw:getpos_mfm] ~ ~ ~ execute @e[tag=uw:getpos_helper,rm=4096] ~ ~ ~ tp ~4096 ~ ~
#8
execute @e[tag=uw:getpos_helper] ~ ~ ~ scoreboard players add @e[tag=uw:getpos_mfm,rm=2048] uw:posx 2048
execute @e[tag=uw:getpos_mfm] ~ ~ ~ execute @e[tag=uw:getpos_helper,rm=2048] ~ ~ ~ tp ~2048 ~ ~
#9
execute @e[tag=uw:getpos_helper] ~ ~ ~ scoreboard players add @e[tag=uw:getpos_mfm,rm=1024] uw:posx 1024
execute @e[tag=uw:getpos_mfm] ~ ~ ~ execute @e[tag=uw:getpos_helper,rm=1024] ~ ~ ~ tp ~1024 ~ ~
#10
execute @e[tag=uw:getpos_helper] ~ ~ ~ scoreboard players add @e[tag=uw:getpos_mfm,rm=512] uw:posx 512
execute @e[tag=uw:getpos_mfm] ~ ~ ~ execute @e[tag=uw:getpos_helper,rm=512] ~ ~ ~ tp ~512 ~ ~
#11
execute @e[tag=uw:getpos_helper] ~ ~ ~ scoreboard players add @e[tag=uw:getpos_mfm,rm=256] uw:posx 256
execute @e[tag=uw:getpos_mfm] ~ ~ ~ execute @e[tag=uw:getpos_helper,rm=256] ~ ~ ~ tp ~256 ~ ~
#12
execute @e[tag=uw:getpos_helper] ~ ~ ~ scoreboard players add @e[tag=uw:getpos_mfm,rm=128] uw:posx 128
execute @e[tag=uw:getpos_mfm] ~ ~ ~ execute @e[tag=uw:getpos_helper,rm=128] ~ ~ ~ tp ~128 ~ ~
#13
execute @e[tag=uw:getpos_helper] ~ ~ ~ scoreboard players add @e[tag=uw:getpos_mfm,rm=64] uw:posx 64
execute @e[tag=uw:getpos_mfm] ~ ~ ~ execute @e[tag=uw:getpos_helper,rm=64] ~ ~ ~ tp ~64 ~ ~
#14
execute @e[tag=uw:getpos_helper] ~ ~ ~ scoreboard players add @e[tag=uw:getpos_mfm,rm=32] uw:posx 32
execute @e[tag=uw:getpos_mfm] ~ ~ ~ execute @e[tag=uw:getpos_helper,rm=32] ~ ~ ~ tp ~32 ~ ~
#15
execute @e[tag=uw:getpos_helper] ~ ~ ~ scoreboard players add @e[tag=uw:getpos_mfm,rm=16] uw:posx 16
execute @e[tag=uw:getpos_mfm] ~ ~ ~ execute @e[tag=uw:getpos_helper,rm=16] ~ ~ ~ tp ~16 ~ ~
#16
execute @e[tag=uw:getpos_helper] ~ ~ ~ scoreboard players add @e[tag=uw:getpos_mfm,rm=8] uw:posx 8
execute @e[tag=uw:getpos_mfm] ~ ~ ~ execute @e[tag=uw:getpos_helper,rm=8] ~ ~ ~ tp ~8 ~ ~
#17
execute @e[tag=uw:getpos_helper] ~ ~ ~ scoreboard players add @e[tag=uw:getpos_mfm,rm=4] uw:posx 4
execute @e[tag=uw:getpos_mfm] ~ ~ ~ execute @e[tag=uw:getpos_helper,rm=4] ~ ~ ~ tp ~4 ~ ~
#18
execute @e[tag=uw:getpos_helper] ~ ~ ~ scoreboard players add @e[tag=uw:getpos_mfm,rm=2] uw:posx 2
execute @e[tag=uw:getpos_mfm] ~ ~ ~ execute @e[tag=uw:getpos_helper,rm=2] ~ ~ ~ tp ~2 ~ ~
#19
execute @e[tag=uw:getpos_helper] ~ ~ ~ scoreboard players add @e[tag=uw:getpos_mfm,rm=1] uw:posx 1
execute @e[tag=uw:getpos_mfm] ~ ~ ~ execute @e[tag=uw:getpos_helper,rm=1] ~ ~ ~ tp ~1 ~ ~
#20
#posx

execute @e[tag=uw:getpos_helper] ~ ~ ~ tp @e[tag=uw:getpos_mfm]
execute @e[tag=uw:getpos_helper] ~ ~ ~ tp ~ 0.5 ~
#teleport

execute @e[tag=uw:getpos_helper] ~ ~ ~ scoreboard players add @e[tag=uw:getpos_mfm,rm=524288] uw:posy 524288
execute @e[tag=uw:getpos_mfm] ~ ~ ~ execute @e[tag=uw:getpos_helper,rm=524288] ~ ~ ~ tp ~ ~524288 ~
#1
execute @e[tag=uw:getpos_helper] ~ ~ ~ scoreboard players add @e[tag=uw:getpos_mfm,rm=262144] uw:posy 262144
execute @e[tag=uw:getpos_mfm] ~ ~ ~ execute @e[tag=uw:getpos_helper,rm=262144] ~ ~ ~ tp ~ ~262144 ~
#2
execute @e[tag=uw:getpos_helper] ~ ~ ~ scoreboard players add @e[tag=uw:getpos_mfm,rm=131072] uw:posy 131072
execute @e[tag=uw:getpos_mfm] ~ ~ ~ execute @e[tag=uw:getpos_helper,rm=131072] ~ ~ ~ tp ~ ~131072 ~
#3
execute @e[tag=uw:getpos_helper] ~ ~ ~ scoreboard players add @e[tag=uw:getpos_mfm,rm=65536] uw:posy 65536
execute @e[tag=uw:getpos_mfm] ~ ~ ~ execute @e[tag=uw:getpos_helper,rm=65536] ~ ~ ~ tp ~ ~65536 ~
#4
execute @e[tag=uw:getpos_helper] ~ ~ ~ scoreboard players add @e[tag=uw:getpos_mfm,rm=32768] uw:posy 32768
execute @e[tag=uw:getpos_mfm] ~ ~ ~ execute @e[tag=uw:getpos_helper,rm=32768] ~ ~ ~ tp ~ ~32768 ~
#5
execute @e[tag=uw:getpos_helper] ~ ~ ~ scoreboard players add @e[tag=uw:getpos_mfm,rm=16384] uw:posy 16384
execute @e[tag=uw:getpos_mfm] ~ ~ ~ execute @e[tag=uw:getpos_helper,rm=16384] ~ ~ ~ tp ~ ~16384 ~
#6
execute @e[tag=uw:getpos_helper] ~ ~ ~ scoreboard players add @e[tag=uw:getpos_mfm,rm=8192] uw:posy 8192
execute @e[tag=uw:getpos_mfm] ~ ~ ~ execute @e[tag=uw:getpos_helper,rm=8192] ~ ~ ~ tp ~ ~8192 ~
#7
execute @e[tag=uw:getpos_helper] ~ ~ ~ scoreboard players add @e[tag=uw:getpos_mfm,rm=4096] uw:posy 4096
execute @e[tag=uw:getpos_mfm] ~ ~ ~ execute @e[tag=uw:getpos_helper,rm=4096] ~ ~ ~ tp ~ ~4096 ~
#8
execute @e[tag=uw:getpos_helper] ~ ~ ~ scoreboard players add @e[tag=uw:getpos_mfm,rm=2048] uw:posy 2048
execute @e[tag=uw:getpos_mfm] ~ ~ ~ execute @e[tag=uw:getpos_helper,rm=2048] ~ ~ ~ tp ~ ~2048 ~
#9
execute @e[tag=uw:getpos_helper] ~ ~ ~ scoreboard players add @e[tag=uw:getpos_mfm,rm=1024] uw:posy 1024
execute @e[tag=uw:getpos_mfm] ~ ~ ~ execute @e[tag=uw:getpos_helper,rm=1024] ~ ~ ~ tp ~ ~1024 ~
#10
execute @e[tag=uw:getpos_helper] ~ ~ ~ scoreboard players add @e[tag=uw:getpos_mfm,rm=512] uw:posy 512
execute @e[tag=uw:getpos_mfm] ~ ~ ~ execute @e[tag=uw:getpos_helper,rm=512] ~ ~ ~ tp ~ ~512 ~
#11
execute @e[tag=uw:getpos_helper] ~ ~ ~ scoreboard players add @e[tag=uw:getpos_mfm,rm=256] uw:posy 256
execute @e[tag=uw:getpos_mfm] ~ ~ ~ execute @e[tag=uw:getpos_helper,rm=256] ~ ~ ~ tp ~ ~256 ~
#12
execute @e[tag=uw:getpos_helper] ~ ~ ~ scoreboard players add @e[tag=uw:getpos_mfm,rm=128] uw:posy 128
execute @e[tag=uw:getpos_mfm] ~ ~ ~ execute @e[tag=uw:getpos_helper,rm=128] ~ ~ ~ tp ~ ~128 ~
#13
execute @e[tag=uw:getpos_helper] ~ ~ ~ scoreboard players add @e[tag=uw:getpos_mfm,rm=64] uw:posy 64
execute @e[tag=uw:getpos_mfm] ~ ~ ~ execute @e[tag=uw:getpos_helper,rm=64] ~ ~ ~ tp ~ ~64 ~
#14
execute @e[tag=uw:getpos_helper] ~ ~ ~ scoreboard players add @e[tag=uw:getpos_mfm,rm=32] uw:posy 32
execute @e[tag=uw:getpos_mfm] ~ ~ ~ execute @e[tag=uw:getpos_helper,rm=32] ~ ~ ~ tp ~ ~32 ~
#15
execute @e[tag=uw:getpos_helper] ~ ~ ~ scoreboard players add @e[tag=uw:getpos_mfm,rm=16] uw:posy 16
execute @e[tag=uw:getpos_mfm] ~ ~ ~ execute @e[tag=uw:getpos_helper,rm=16] ~ ~ ~ tp ~ ~16 ~
#16
execute @e[tag=uw:getpos_helper] ~ ~ ~ scoreboard players add @e[tag=uw:getpos_mfm,rm=8] uw:posy 8
execute @e[tag=uw:getpos_mfm] ~ ~ ~ execute @e[tag=uw:getpos_helper,rm=8] ~ ~ ~ tp ~ ~8 ~
#17
execute @e[tag=uw:getpos_helper] ~ ~ ~ scoreboard players add @e[tag=uw:getpos_mfm,rm=4] uw:posy 4
execute @e[tag=uw:getpos_mfm] ~ ~ ~ execute @e[tag=uw:getpos_helper,rm=4] ~ ~ ~ tp ~ ~4 ~
#18
execute @e[tag=uw:getpos_helper] ~ ~ ~ scoreboard players add @e[tag=uw:getpos_mfm,rm=2] uw:posy 2
execute @e[tag=uw:getpos_mfm] ~ ~ ~ execute @e[tag=uw:getpos_helper,rm=2] ~ ~ ~ tp ~ ~2 ~
#19
execute @e[tag=uw:getpos_helper] ~ ~ ~ scoreboard players add @e[tag=uw:getpos_mfm,rm=1] uw:posy 1
execute @e[tag=uw:getpos_mfm] ~ ~ ~ execute @e[tag=uw:getpos_helper,rm=1] ~ ~ ~ tp ~ ~1 ~
#20
#posy

execute @e[tag=uw:getpos_helper] ~ ~ ~ tp @e[tag=uw:getpos_mfm]
execute @e[tag=uw:getpos_helper] ~ ~ ~ tp ~ ~ 0.5
#teleport

execute @e[tag=uw:getpos_helper] ~ ~ ~ scoreboard players add @e[tag=uw:getpos_mfm,rm=524288] uw:posz 524288
execute @e[tag=uw:getpos_mfm] ~ ~ ~ execute @e[tag=uw:getpos_helper,rm=524288] ~ ~ ~ tp ~ ~ ~524288
#1
execute @e[tag=uw:getpos_helper] ~ ~ ~ scoreboard players add @e[tag=uw:getpos_mfm,rm=262144] uw:posz 262144
execute @e[tag=uw:getpos_mfm] ~ ~ ~ execute @e[tag=uw:getpos_helper,rm=262144] ~ ~ ~ tp ~ ~ ~262144
#2
execute @e[tag=uw:getpos_helper] ~ ~ ~ scoreboard players add @e[tag=uw:getpos_mfm,rm=131072] uw:posz 131072
execute @e[tag=uw:getpos_mfm] ~ ~ ~ execute @e[tag=uw:getpos_helper,rm=131072] ~ ~ ~ tp ~ ~ ~131072
#3
execute @e[tag=uw:getpos_helper] ~ ~ ~ scoreboard players add @e[tag=uw:getpos_mfm,rm=65536] uw:posz 65536
execute @e[tag=uw:getpos_mfm] ~ ~ ~ execute @e[tag=uw:getpos_helper,rm=65536] ~ ~ ~ tp ~ ~ ~65536
#4
execute @e[tag=uw:getpos_helper] ~ ~ ~ scoreboard players add @e[tag=uw:getpos_mfm,rm=32768] uw:posz 32768
execute @e[tag=uw:getpos_mfm] ~ ~ ~ execute @e[tag=uw:getpos_helper,rm=32768] ~ ~ ~ tp ~ ~ ~32768
#5
execute @e[tag=uw:getpos_helper] ~ ~ ~ scoreboard players add @e[tag=uw:getpos_mfm,rm=16384] uw:posz 16384
execute @e[tag=uw:getpos_mfm] ~ ~ ~ execute @e[tag=uw:getpos_helper,rm=16384] ~ ~ ~ tp ~ ~ ~16384
#6
execute @e[tag=uw:getpos_helper] ~ ~ ~ scoreboard players add @e[tag=uw:getpos_mfm,rm=8192] uw:posz 8192
execute @e[tag=uw:getpos_mfm] ~ ~ ~ execute @e[tag=uw:getpos_helper,rm=8192] ~ ~ ~ tp ~ ~ ~8192
#7
execute @e[tag=uw:getpos_helper] ~ ~ ~ scoreboard players add @e[tag=uw:getpos_mfm,rm=4096] uw:posz 4096
execute @e[tag=uw:getpos_mfm] ~ ~ ~ execute @e[tag=uw:getpos_helper,rm=4096] ~ ~ ~ tp ~ ~ ~4096
#8
execute @e[tag=uw:getpos_helper] ~ ~ ~ scoreboard players add @e[tag=uw:getpos_mfm,rm=2048] uw:posz 2048
execute @e[tag=uw:getpos_mfm] ~ ~ ~ execute @e[tag=uw:getpos_helper,rm=2048] ~ ~ ~ tp ~ ~ ~2048
#9
execute @e[tag=uw:getpos_helper] ~ ~ ~ scoreboard players add @e[tag=uw:getpos_mfm,rm=1024] uw:posz 1024
execute @e[tag=uw:getpos_mfm] ~ ~ ~ execute @e[tag=uw:getpos_helper,rm=1024] ~ ~ ~ tp ~ ~ ~1024
#10
execute @e[tag=uw:getpos_helper] ~ ~ ~ scoreboard players add @e[tag=uw:getpos_mfm,rm=512] uw:posz 512
execute @e[tag=uw:getpos_mfm] ~ ~ ~ execute @e[tag=uw:getpos_helper,rm=512] ~ ~ ~ tp ~ ~ ~512
#11
execute @e[tag=uw:getpos_helper] ~ ~ ~ scoreboard players add @e[tag=uw:getpos_mfm,rm=256] uw:posz 256
execute @e[tag=uw:getpos_mfm] ~ ~ ~ execute @e[tag=uw:getpos_helper,rm=256] ~ ~ ~ tp ~ ~ ~256
#12
execute @e[tag=uw:getpos_helper] ~ ~ ~ scoreboard players add @e[tag=uw:getpos_mfm,rm=128] uw:posz 128
execute @e[tag=uw:getpos_mfm] ~ ~ ~ execute @e[tag=uw:getpos_helper,rm=128] ~ ~ ~ tp ~ ~ ~128
#13
execute @e[tag=uw:getpos_helper] ~ ~ ~ scoreboard players add @e[tag=uw:getpos_mfm,rm=64] uw:posz 64
execute @e[tag=uw:getpos_mfm] ~ ~ ~ execute @e[tag=uw:getpos_helper,rm=64] ~ ~ ~ tp ~ ~ ~64
#14
execute @e[tag=uw:getpos_helper] ~ ~ ~ scoreboard players add @e[tag=uw:getpos_mfm,rm=32] uw:posz 32
execute @e[tag=uw:getpos_mfm] ~ ~ ~ execute @e[tag=uw:getpos_helper,rm=32] ~ ~ ~ tp ~ ~ ~32
#15
execute @e[tag=uw:getpos_helper] ~ ~ ~ scoreboard players add @e[tag=uw:getpos_mfm,rm=16] uw:posz 16
execute @e[tag=uw:getpos_mfm] ~ ~ ~ execute @e[tag=uw:getpos_helper,rm=16] ~ ~ ~ tp ~ ~ ~16
#16
execute @e[tag=uw:getpos_helper] ~ ~ ~ scoreboard players add @e[tag=uw:getpos_mfm,rm=8] uw:posz 8
execute @e[tag=uw:getpos_mfm] ~ ~ ~ execute @e[tag=uw:getpos_helper,rm=8] ~ ~ ~ tp ~ ~ ~8
#17
execute @e[tag=uw:getpos_helper] ~ ~ ~ scoreboard players add @e[tag=uw:getpos_mfm,rm=4] uw:posz 4
execute @e[tag=uw:getpos_mfm] ~ ~ ~ execute @e[tag=uw:getpos_helper,rm=4] ~ ~ ~ tp ~ ~ ~4
#18
execute @e[tag=uw:getpos_helper] ~ ~ ~ scoreboard players add @e[tag=uw:getpos_mfm,rm=2] uw:posz 2
execute @e[tag=uw:getpos_mfm] ~ ~ ~ execute @e[tag=uw:getpos_helper,rm=2] ~ ~ ~ tp ~ ~ ~2
#19
execute @e[tag=uw:getpos_helper] ~ ~ ~ scoreboard players add @e[tag=uw:getpos_mfm,rm=1] uw:posz 1
execute @e[tag=uw:getpos_mfm] ~ ~ ~ execute @e[tag=uw:getpos_helper,rm=1] ~ ~ ~ tp ~ ~ ~1
#20
#posz
execute @e[tag=uw:getpos_mfm,tag=uw:getpos_xremove] ~ ~ ~ scoreboard players remove @s uw:posx 1048575
execute @e[tag=uw:getpos_mfm,tag=uw:getpos_yremove] ~ ~ ~ scoreboard players remove @s uw:posy 1048575
execute @e[tag=uw:getpos_mfm,tag=uw:getpos_zremove] ~ ~ ~ scoreboard players remove @s uw:posz 1048575
#getpos

execute @e[tag=uw:getpos_mfm] ~ ~ ~ scoreboard players operation @a[tag=uw:getpos,tag=!uw:getpos_allow] uw:posx = @s uw:posx
execute @e[tag=uw:getpos_mfm] ~ ~ ~ scoreboard players operation @a[tag=uw:getpos,tag=!uw:getpos_allow] uw:posy = @s uw:posy
execute @e[tag=uw:getpos_mfm] ~ ~ ~ scoreboard players operation @a[tag=uw:getpos,tag=!uw:getpos_allow] uw:posz = @s uw:posz
#score_operation_=

execute @e[tag=uw:getpos_helper] ~ ~ ~ tp @e[tag=uw:getpos_mfm]
execute @e[tag=uw:getpos_helper] ~ ~ ~ tp ~ -32767.0 ~
execute @e[tag=uw:getpos_helper] ~ ~ ~ kill @s
execute @e[tag=uw:getpos_mfm] ~ ~ ~ scoreboard players reset @s
execute @e[tag=uw:getpos_mfm] ~ ~ ~ tp ~ -32767.0 ~
execute @e[tag=uw:getpos_mfm] ~ ~ ~ kill @s
#clean_entity