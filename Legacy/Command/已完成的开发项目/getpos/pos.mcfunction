scoreboard objectives add posx dummy
scoreboard objectives add posy dummy
scoreboard objectives add posz dummy
scoreboard objectives add pos dummy
scoreboard objectives add pos_save dummy
#scoreboards_add
execute @e[tag=getpos] ~ ~ ~ summon minecraft:armor_stand getpos:entity_mark ~ ~ ~
execute @e[tag=getpos] ~ ~ ~ tag @e[type=minecraft:armor_stand,name=getpos:entity_mark,r=3] add getpos:entity_mark
execute @e[tag=getpos] ~ ~ ~ summon minecraft:armor_stand getpos:entity_teleport ~ ~ ~
execute @e[tag=getpos] ~ ~ ~ tag @e[type=minecraft:armor_stand,name=getpos:entity_teleport,r=3] add getpos:entity_teleport
execute @e[tag=getpos,c=1] ~ ~ ~ tag @s add getpos:summon_entity_target
execute @e[tag=getpos:summon_entity_target] ~ ~ ~ summon minecraft:armor_stand getpos:entity_target ~ ~ ~
execute @e[tag=getpos:summon_entity_target] ~ ~ ~ tag @e[type=minecraft:armor_stand,name=getpos:entity_target,r=3] add getpos:entity_target
execute @e[tag=getpos,c=1] ~ ~ ~ tag @e[tag=getpos:summon_entity_target] remove getpos:summon_entity_target
#prepare_1
execute @e[tag=getpos,c=1] ~ ~ ~ execute @e[tag=getpos:entity_teleport] ~ ~ ~ scoreboard players set @s pos 0
execute @e[tag=getpos,c=1] ~ ~ ~ execute @e[tag=getpos:entity_target] ~ ~ ~ tp 0.0 0.0 0.0
execute @e[tag=getpos,c=1] ~ ~ ~ execute @e[tag=getpos:entity_teleport] ~ ~ ~ tag @s[x=-1,dx=-524287] add pos_fu
execute @e[tag=getpos,c=1] ~ ~ ~ execute @e[tag=getpos:entity_teleport] ~ ~ ~ execute @s[x=-1,dx=-524287] ~ ~ ~ tp ~524288 ~ ~
execute @e[tag=getpos,c=1] ~ ~ ~ execute @e[tag=getpos:entity_teleport] ~ ~ ~ tp ~ 0.0 0.0
execute @e[tag=getpos,c=1] ~ ~ ~ execute @e[tag=getpos:entity_teleport] ~ ~ ~ tp ~ ~ ~ facing @e[tag=getpos:entity_target]
#prepare_2
execute @e[tag=getpos:entity_target] ~ ~ ~ scoreboard players add @e[tag=getpos:entity_teleport,rm=16777216] pos 16777216
execute @e[tag=getpos:entity_target] ~ ~ ~ execute @e[tag=getpos:entity_teleport,rm=16777216] ~ ~ ~ tp ^ ^ ^16777216
#1
execute @e[tag=getpos:entity_target] ~ ~ ~ scoreboard players add @e[tag=getpos:entity_teleport,rm=8388608] pos 8388608
execute @e[tag=getpos:entity_target] ~ ~ ~ execute @e[tag=getpos:entity_teleport,rm=8388608] ~ ~ ~ tp ^ ^ ^8388608
#2
execute @e[tag=getpos:entity_target] ~ ~ ~ scoreboard players add @e[tag=getpos:entity_teleport,rm=4194304] pos 4194304
execute @e[tag=getpos:entity_target] ~ ~ ~ execute @e[tag=getpos:entity_teleport,rm=4194304] ~ ~ ~ tp ^ ^ ^4194304
#3
execute @e[tag=getpos:entity_target] ~ ~ ~ scoreboard players add @e[tag=getpos:entity_teleport,rm=2097152] pos 2097152
execute @e[tag=getpos:entity_target] ~ ~ ~ execute @e[tag=getpos:entity_teleport,rm=2097152] ~ ~ ~ tp ^ ^ ^2097152
#4
execute @e[tag=getpos:entity_target] ~ ~ ~ scoreboard players add @e[tag=getpos:entity_teleport,rm=1048576] pos 1048576
execute @e[tag=getpos:entity_target] ~ ~ ~ execute @e[tag=getpos:entity_teleport,rm=1048576] ~ ~ ~ tp ^ ^ ^1048576
#5
execute @e[tag=getpos:entity_target] ~ ~ ~ scoreboard players add @e[tag=getpos:entity_teleport,rm=524288] pos 524288
execute @e[tag=getpos:entity_target] ~ ~ ~ execute @e[tag=getpos:entity_teleport,rm=524288] ~ ~ ~ tp ^ ^ ^524288
#6
execute @e[tag=getpos:entity_target] ~ ~ ~ scoreboard players add @e[tag=getpos:entity_teleport,rm=262144] pos 262144
execute @e[tag=getpos:entity_target] ~ ~ ~ execute @e[tag=getpos:entity_teleport,rm=262144] ~ ~ ~ tp ^ ^ ^262144
#7
execute @e[tag=getpos:entity_target] ~ ~ ~ scoreboard players add @e[tag=getpos:entity_teleport,rm=131072] pos 131072
execute @e[tag=getpos:entity_target] ~ ~ ~ execute @e[tag=getpos:entity_teleport,rm=131072] ~ ~ ~ tp ^ ^ ^131072
#8
execute @e[tag=getpos:entity_target] ~ ~ ~ scoreboard players add @e[tag=getpos:entity_teleport,rm=65536] pos 65536
execute @e[tag=getpos:entity_target] ~ ~ ~ execute @e[tag=getpos:entity_teleport,rm=65536] ~ ~ ~ tp ^ ^ ^65536
#9
execute @e[tag=getpos:entity_target] ~ ~ ~ scoreboard players add @e[tag=getpos:entity_teleport,rm=32768] pos 32768
execute @e[tag=getpos:entity_target] ~ ~ ~ execute @e[tag=getpos:entity_teleport,rm=32768] ~ ~ ~ tp ^ ^ ^32768
#10
execute @e[tag=getpos:entity_target] ~ ~ ~ scoreboard players add @e[tag=getpos:entity_teleport,rm=16384] pos 16384
execute @e[tag=getpos:entity_target] ~ ~ ~ execute @e[tag=getpos:entity_teleport,rm=16384] ~ ~ ~ tp ^ ^ ^16384
#11
execute @e[tag=getpos:entity_target] ~ ~ ~ scoreboard players add @e[tag=getpos:entity_teleport,rm=8192] pos 8192
execute @e[tag=getpos:entity_target] ~ ~ ~ execute @e[tag=getpos:entity_teleport,rm=8192] ~ ~ ~ tp ^ ^ ^8192
#12
execute @e[tag=getpos:entity_target] ~ ~ ~ scoreboard players add @e[tag=getpos:entity_teleport,rm=4096] pos 4096
execute @e[tag=getpos:entity_target] ~ ~ ~ execute @e[tag=getpos:entity_teleport,rm=4096] ~ ~ ~ tp ^ ^ ^4096
#13
execute @e[tag=getpos:entity_target] ~ ~ ~ scoreboard players add @e[tag=getpos:entity_teleport,rm=2048] pos 2048
execute @e[tag=getpos:entity_target] ~ ~ ~ execute @e[tag=getpos:entity_teleport,rm=2048] ~ ~ ~ tp ^ ^ ^2048
#14
execute @e[tag=getpos:entity_target] ~ ~ ~ scoreboard players add @e[tag=getpos:entity_teleport,rm=1024] pos 1024
execute @e[tag=getpos:entity_target] ~ ~ ~ execute @e[tag=getpos:entity_teleport,rm=1024] ~ ~ ~ tp ^ ^ ^1024
#15
execute @e[tag=getpos:entity_target] ~ ~ ~ scoreboard players add @e[tag=getpos:entity_teleport,rm=512] pos 512
execute @e[tag=getpos:entity_target] ~ ~ ~ execute @e[tag=getpos:entity_teleport,rm=512] ~ ~ ~ tp ^ ^ ^512
#16
execute @e[tag=getpos:entity_target] ~ ~ ~ scoreboard players add @e[tag=getpos:entity_teleport,rm=256] pos 256
execute @e[tag=getpos:entity_target] ~ ~ ~ execute @e[tag=getpos:entity_teleport,rm=256] ~ ~ ~ tp ^ ^ ^256
#17
execute @e[tag=getpos:entity_target] ~ ~ ~ scoreboard players add @e[tag=getpos:entity_teleport,rm=128] pos 128
execute @e[tag=getpos:entity_target] ~ ~ ~ execute @e[tag=getpos:entity_teleport,rm=128] ~ ~ ~ tp ^ ^ ^128
#18
execute @e[tag=getpos:entity_target] ~ ~ ~ scoreboard players add @e[tag=getpos:entity_teleport,rm=64] pos 64
execute @e[tag=getpos:entity_target] ~ ~ ~ execute @e[tag=getpos:entity_teleport,rm=64] ~ ~ ~ tp ^ ^ ^64
#19
execute @e[tag=getpos:entity_target] ~ ~ ~ scoreboard players add @e[tag=getpos:entity_teleport,rm=32] pos 32
execute @e[tag=getpos:entity_target] ~ ~ ~ execute @e[tag=getpos:entity_teleport,rm=32] ~ ~ ~ tp ^ ^ ^32
#20
execute @e[tag=getpos:entity_target] ~ ~ ~ scoreboard players add @e[tag=getpos:entity_teleport,rm=16] pos 16
execute @e[tag=getpos:entity_target] ~ ~ ~ execute @e[tag=getpos:entity_teleport,rm=16] ~ ~ ~ tp ^ ^ ^16
#21
execute @e[tag=getpos:entity_target] ~ ~ ~ scoreboard players add @e[tag=getpos:entity_teleport,rm=8] pos 8
execute @e[tag=getpos:entity_target] ~ ~ ~ execute @e[tag=getpos:entity_teleport,rm=8] ~ ~ ~ tp ^ ^ ^8
#22
execute @e[tag=getpos:entity_target] ~ ~ ~ scoreboard players add @e[tag=getpos:entity_teleport,rm=4] pos 4
execute @e[tag=getpos:entity_target] ~ ~ ~ execute @e[tag=getpos:entity_teleport,rm=4] ~ ~ ~ tp ^ ^ ^4
#23
execute @e[tag=getpos:entity_target] ~ ~ ~ scoreboard players add @e[tag=getpos:entity_teleport,rm=2] pos 2
execute @e[tag=getpos:entity_target] ~ ~ ~ execute @e[tag=getpos:entity_teleport,rm=2] ~ ~ ~ tp ^ ^ ^2
#24
execute @e[tag=getpos:entity_target] ~ ~ ~ scoreboard players add @e[tag=getpos:entity_teleport,rm=1] pos 1
execute @e[tag=getpos:entity_target] ~ ~ ~ execute @e[tag=getpos:entity_teleport,rm=1] ~ ~ ~ tp ^ ^ ^1
#25
execute @e[tag=getpos:entity_teleport] ~ ~ ~ scoreboard players operation @s pos_save = @s pos
execute @e[tag=getpos:entity_teleport,tag=pos_fu] ~ ~ ~ scoreboard players remove @s pos_save 524288
execute @e[tag=getpos:entity_teleport] ~ ~ ~ tp ~ ~ ~ ~180.0
#26
execute @e[tag=getpos:entity_teleport,scores={pos=16777216..}] ~ ~ ~ tp ^ ^ ^16777216
execute @e[tag=getpos:entity_teleport,scores={pos=16777216..}] ~ ~ ~ scoreboard players remove @s pos 16777216
#27
execute @e[tag=getpos:entity_teleport,scores={pos=8388608..}] ~ ~ ~ tp ^ ^ ^8388608
execute @e[tag=getpos:entity_teleport,scores={pos=8388608..}] ~ ~ ~ scoreboard players remove @s pos 8388608
#28
execute @e[tag=getpos:entity_teleport,scores={pos=4194304..}] ~ ~ ~ tp ^ ^ ^4194304
execute @e[tag=getpos:entity_teleport,scores={pos=4194304..}] ~ ~ ~ scoreboard players remove @s pos 4194304
#29
execute @e[tag=getpos:entity_teleport,scores={pos=2097152..}] ~ ~ ~ tp ^ ^ ^2097152
execute @e[tag=getpos:entity_teleport,scores={pos=2097152..}] ~ ~ ~ scoreboard players remove @s pos 2097152
#30
execute @e[tag=getpos:entity_teleport,scores={pos=1048576..}] ~ ~ ~ tp ^ ^ ^1048576
execute @e[tag=getpos:entity_teleport,scores={pos=1048576..}] ~ ~ ~ scoreboard players remove @s pos 1048576
#31
execute @e[tag=getpos:entity_teleport,scores={pos=524288..}] ~ ~ ~ tp ^ ^ ^524288
execute @e[tag=getpos:entity_teleport,scores={pos=524288..}] ~ ~ ~ scoreboard players remove @s pos 524288
#32
execute @e[tag=getpos:entity_teleport,scores={pos=262144..}] ~ ~ ~ tp ^ ^ ^262144
execute @e[tag=getpos:entity_teleport,scores={pos=262144..}] ~ ~ ~ scoreboard players remove @s pos 262144
#33
execute @e[tag=getpos:entity_teleport,scores={pos=131072..}] ~ ~ ~ tp ^ ^ ^131072
execute @e[tag=getpos:entity_teleport,scores={pos=131072..}] ~ ~ ~ scoreboard players remove @s pos 131072
#34
execute @e[tag=getpos:entity_teleport,scores={pos=65536..}] ~ ~ ~ tp ^ ^ ^65536
execute @e[tag=getpos:entity_teleport,scores={pos=65536..}] ~ ~ ~ scoreboard players remove @s pos 65536
#35
execute @e[tag=getpos:entity_teleport,scores={pos=32768..}] ~ ~ ~ tp ^ ^ ^32768
execute @e[tag=getpos:entity_teleport,scores={pos=32768..}] ~ ~ ~ scoreboard players remove @s pos 32768
#36
execute @e[tag=getpos:entity_teleport,scores={pos=16384..}] ~ ~ ~ tp ^ ^ ^16384
execute @e[tag=getpos:entity_teleport,scores={pos=16384..}] ~ ~ ~ scoreboard players remove @s pos 16384
#37
execute @e[tag=getpos:entity_teleport,scores={pos=8192..}] ~ ~ ~ tp ^ ^ ^8192
execute @e[tag=getpos:entity_teleport,scores={pos=8192..}] ~ ~ ~ scoreboard players remove @s pos 8192
#38
execute @e[tag=getpos:entity_teleport,scores={pos=4096..}] ~ ~ ~ tp ^ ^ ^4096
execute @e[tag=getpos:entity_teleport,scores={pos=4096..}] ~ ~ ~ scoreboard players remove @s pos 4096
#39
execute @e[tag=getpos:entity_teleport,scores={pos=2048..}] ~ ~ ~ tp ^ ^ ^2048
execute @e[tag=getpos:entity_teleport,scores={pos=2048..}] ~ ~ ~ scoreboard players remove @s pos 2048
#40
execute @e[tag=getpos:entity_teleport,scores={pos=1024..}] ~ ~ ~ tp ^ ^ ^1024
execute @e[tag=getpos:entity_teleport,scores={pos=1024..}] ~ ~ ~ scoreboard players remove @s pos 1024
#41
execute @e[tag=getpos:entity_teleport,scores={pos=512..}] ~ ~ ~ tp ^ ^ ^512
execute @e[tag=getpos:entity_teleport,scores={pos=512..}] ~ ~ ~ scoreboard players remove @s pos 512
#42
execute @e[tag=getpos:entity_teleport,scores={pos=256..}] ~ ~ ~ tp ^ ^ ^256
execute @e[tag=getpos:entity_teleport,scores={pos=256..}] ~ ~ ~ scoreboard players remove @s pos 256
#43
execute @e[tag=getpos:entity_teleport,scores={pos=128..}] ~ ~ ~ tp ^ ^ ^128
execute @e[tag=getpos:entity_teleport,scores={pos=128..}] ~ ~ ~ scoreboard players remove @s pos 128
#44
execute @e[tag=getpos:entity_teleport,scores={pos=64..}] ~ ~ ~ tp ^ ^ ^64
execute @e[tag=getpos:entity_teleport,scores={pos=64..}] ~ ~ ~ scoreboard players remove @s pos 64
#45
execute @e[tag=getpos:entity_teleport,scores={pos=32..}] ~ ~ ~ tp ^ ^ ^32
execute @e[tag=getpos:entity_teleport,scores={pos=32..}] ~ ~ ~ scoreboard players remove @s pos 32
#46
execute @e[tag=getpos:entity_teleport,scores={pos=16..}] ~ ~ ~ tp ^ ^ ^16
execute @e[tag=getpos:entity_teleport,scores={pos=16..}] ~ ~ ~ scoreboard players remove @s pos 16
#47
execute @e[tag=getpos:entity_teleport,scores={pos=8..}] ~ ~ ~ tp ^ ^ ^8
execute @e[tag=getpos:entity_teleport,scores={pos=8..}] ~ ~ ~ scoreboard players remove @s pos 8
#48
execute @e[tag=getpos:entity_teleport,scores={pos=4..}] ~ ~ ~ tp ^ ^ ^4
execute @e[tag=getpos:entity_teleport,scores={pos=4..}] ~ ~ ~ scoreboard players remove @s pos 4
#49
execute @e[tag=getpos:entity_teleport,scores={pos=2..}] ~ ~ ~ tp ^ ^ ^2
execute @e[tag=getpos:entity_teleport,scores={pos=2..}] ~ ~ ~ scoreboard players remove @s pos 2
#50
execute @e[tag=getpos:entity_teleport,scores={pos=1..}] ~ ~ ~ tp ^ ^ ^1
execute @e[tag=getpos:entity_teleport,scores={pos=1..}] ~ ~ ~ scoreboard players remove @s pos 1
#51
execute @e[tag=getpos:entity_teleport,tag=pos_fu] ~ ~ ~ tp ^ ^ ^-524288
execute @e[tag=getpos:entity_teleport] ~ ~ ~ tp ~ 0.0 0.0
execute @e[tag=getpos:entity_mark] ~ ~ ~ execute @s ~ 0.0 0.0 scoreboard players operation @s posx = @e[tag=getpos:entity_teleport,c=1] pos_save
execute @e[tag=getpos:entity_teleport,tag=pos_fu] ~ ~ ~ tag @s remove pos_fu
#52
execute @e[tag=getpos,c=1] ~ ~ ~ execute @e[tag=getpos:entity_teleport] ~ ~ ~ scoreboard players set @s pos 0
execute @e[tag=getpos,c=1] ~ ~ ~ execute @e[tag=getpos:entity_mark] ~ 0.0 0.0 tp @e[tag=getpos:entity_teleport,c=1] @s
execute @e[tag=getpos,c=1] ~ ~ ~ execute @e[tag=getpos:entity_teleport] ~ ~ ~ tp 0.0 ~ 0.0
execute @e[tag=getpos,c=1] ~ ~ ~ execute @e[tag=getpos:entity_teleport] ~ ~ ~ tag @s[y=-1,dy=-524287] add pos_fu
execute @e[tag=getpos,c=1] ~ ~ ~ execute @e[tag=getpos:entity_teleport] ~ ~ ~ execute @s[y=-1,dy=-524287] ~ ~ ~ tp ~ ~524288 ~
#prepare_3
execute @e[tag=getpos:entity_target] ~ ~ ~ scoreboard players add @e[tag=getpos:entity_teleport,rm=16777216] pos 16777216
execute @e[tag=getpos:entity_target] ~ ~ ~ execute @e[tag=getpos:entity_teleport,rm=16777216] ~ ~ ~ tp ~ ~-16777216 ~
#1
execute @e[tag=getpos:entity_target] ~ ~ ~ scoreboard players add @e[tag=getpos:entity_teleport,rm=8388608] pos 8388608
execute @e[tag=getpos:entity_target] ~ ~ ~ execute @e[tag=getpos:entity_teleport,rm=8388608] ~ ~ ~ tp ~ ~-8388608 ~
#2
execute @e[tag=getpos:entity_target] ~ ~ ~ scoreboard players add @e[tag=getpos:entity_teleport,rm=4194304] pos 4194304
execute @e[tag=getpos:entity_target] ~ ~ ~ execute @e[tag=getpos:entity_teleport,rm=4194304] ~ ~ ~ tp ~ ~-4194304 ~
#3
execute @e[tag=getpos:entity_target] ~ ~ ~ scoreboard players add @e[tag=getpos:entity_teleport,rm=2097152] pos 2097152
execute @e[tag=getpos:entity_target] ~ ~ ~ execute @e[tag=getpos:entity_teleport,rm=2097152] ~ ~ ~ tp ~ ~-2097152 ~
#4
execute @e[tag=getpos:entity_target] ~ ~ ~ scoreboard players add @e[tag=getpos:entity_teleport,rm=1048576] pos 1048576
execute @e[tag=getpos:entity_target] ~ ~ ~ execute @e[tag=getpos:entity_teleport,rm=1048576] ~ ~ ~ tp ~ ~-1048576 ~
#5
execute @e[tag=getpos:entity_target] ~ ~ ~ scoreboard players add @e[tag=getpos:entity_teleport,rm=524288] pos 524288
execute @e[tag=getpos:entity_target] ~ ~ ~ execute @e[tag=getpos:entity_teleport,rm=524288] ~ ~ ~ tp ~ ~-524288 ~
#6
execute @e[tag=getpos:entity_target] ~ ~ ~ scoreboard players add @e[tag=getpos:entity_teleport,rm=262144] pos 262144
execute @e[tag=getpos:entity_target] ~ ~ ~ execute @e[tag=getpos:entity_teleport,rm=262144] ~ ~ ~ tp ~ ~-262144 ~
#7
execute @e[tag=getpos:entity_target] ~ ~ ~ scoreboard players add @e[tag=getpos:entity_teleport,rm=131072] pos 131072
execute @e[tag=getpos:entity_target] ~ ~ ~ execute @e[tag=getpos:entity_teleport,rm=131072] ~ ~ ~ tp ~ ~-131072 ~
#8
execute @e[tag=getpos:entity_target] ~ ~ ~ scoreboard players add @e[tag=getpos:entity_teleport,rm=65536] pos 65536
execute @e[tag=getpos:entity_target] ~ ~ ~ execute @e[tag=getpos:entity_teleport,rm=65536] ~ ~ ~ tp ~ ~-65536 ~
#9
execute @e[tag=getpos:entity_target] ~ ~ ~ scoreboard players add @e[tag=getpos:entity_teleport,rm=32768] pos 32768
execute @e[tag=getpos:entity_target] ~ ~ ~ execute @e[tag=getpos:entity_teleport,rm=32768] ~ ~ ~ tp ~ ~-32768 ~
#10
execute @e[tag=getpos:entity_target] ~ ~ ~ scoreboard players add @e[tag=getpos:entity_teleport,rm=16384] pos 16384
execute @e[tag=getpos:entity_target] ~ ~ ~ execute @e[tag=getpos:entity_teleport,rm=16384] ~ ~ ~ tp ~ ~-16384 ~
#11
execute @e[tag=getpos:entity_target] ~ ~ ~ scoreboard players add @e[tag=getpos:entity_teleport,rm=8192] pos 8192
execute @e[tag=getpos:entity_target] ~ ~ ~ execute @e[tag=getpos:entity_teleport,rm=8192] ~ ~ ~ tp ~ ~-8192 ~
#12
execute @e[tag=getpos:entity_target] ~ ~ ~ scoreboard players add @e[tag=getpos:entity_teleport,rm=4096] pos 4096
execute @e[tag=getpos:entity_target] ~ ~ ~ execute @e[tag=getpos:entity_teleport,rm=4096] ~ ~ ~ tp ~ ~-4096 ~
#13
execute @e[tag=getpos:entity_target] ~ ~ ~ scoreboard players add @e[tag=getpos:entity_teleport,rm=2048] pos 2048
execute @e[tag=getpos:entity_target] ~ ~ ~ execute @e[tag=getpos:entity_teleport,rm=2048] ~ ~ ~ tp ~ ~-2048 ~
#14
execute @e[tag=getpos:entity_target] ~ ~ ~ scoreboard players add @e[tag=getpos:entity_teleport,rm=1024] pos 1024
execute @e[tag=getpos:entity_target] ~ ~ ~ execute @e[tag=getpos:entity_teleport,rm=1024] ~ ~ ~ tp ~ ~-1024 ~
#15
execute @e[tag=getpos:entity_target] ~ ~ ~ scoreboard players add @e[tag=getpos:entity_teleport,rm=512] pos 512
execute @e[tag=getpos:entity_target] ~ ~ ~ execute @e[tag=getpos:entity_teleport,rm=512] ~ ~ ~ tp ~ ~-512 ~
#16
execute @e[tag=getpos:entity_target] ~ ~ ~ scoreboard players add @e[tag=getpos:entity_teleport,rm=256] pos 256
execute @e[tag=getpos:entity_target] ~ ~ ~ execute @e[tag=getpos:entity_teleport,rm=256] ~ ~ ~ tp ~ ~-256 ~
#17
execute @e[tag=getpos:entity_target] ~ ~ ~ scoreboard players add @e[tag=getpos:entity_teleport,rm=128] pos 128
execute @e[tag=getpos:entity_target] ~ ~ ~ execute @e[tag=getpos:entity_teleport,rm=128] ~ ~ ~ tp ~ ~-128 ~
#18
execute @e[tag=getpos:entity_target] ~ ~ ~ scoreboard players add @e[tag=getpos:entity_teleport,rm=64] pos 64
execute @e[tag=getpos:entity_target] ~ ~ ~ execute @e[tag=getpos:entity_teleport,rm=64] ~ ~ ~ tp ~ ~-64 ~
#19
execute @e[tag=getpos:entity_target] ~ ~ ~ scoreboard players add @e[tag=getpos:entity_teleport,rm=32] pos 32
execute @e[tag=getpos:entity_target] ~ ~ ~ execute @e[tag=getpos:entity_teleport,rm=32] ~ ~ ~ tp ~ ~-32 ~
#20
execute @e[tag=getpos:entity_target] ~ ~ ~ scoreboard players add @e[tag=getpos:entity_teleport,rm=16] pos 16
execute @e[tag=getpos:entity_target] ~ ~ ~ execute @e[tag=getpos:entity_teleport,rm=16] ~ ~ ~ tp ~ ~-16 ~
#21
execute @e[tag=getpos:entity_target] ~ ~ ~ scoreboard players add @e[tag=getpos:entity_teleport,rm=8] pos 8
execute @e[tag=getpos:entity_target] ~ ~ ~ execute @e[tag=getpos:entity_teleport,rm=8] ~ ~ ~ tp ~ ~-8 ~
#22
execute @e[tag=getpos:entity_target] ~ ~ ~ scoreboard players add @e[tag=getpos:entity_teleport,rm=4] pos 4
execute @e[tag=getpos:entity_target] ~ ~ ~ execute @e[tag=getpos:entity_teleport,rm=4] ~ ~ ~ tp ~ ~-4 ~
#23
execute @e[tag=getpos:entity_target] ~ ~ ~ scoreboard players add @e[tag=getpos:entity_teleport,rm=2] pos 2
execute @e[tag=getpos:entity_target] ~ ~ ~ execute @e[tag=getpos:entity_teleport,rm=2] ~ ~ ~ tp ~ ~-2 ~
#24
execute @e[tag=getpos:entity_target] ~ ~ ~ scoreboard players add @e[tag=getpos:entity_teleport,rm=1] pos 1
execute @e[tag=getpos:entity_target] ~ ~ ~ execute @e[tag=getpos:entity_teleport,rm=1] ~ ~ ~ tp ~ ~-1 ~
#25
execute @e[tag=getpos:entity_teleport] ~ ~ ~ scoreboard players operation @s pos_save = @s pos
execute @e[tag=getpos:entity_teleport,tag=pos_fu] ~ ~ ~ scoreboard players remove @s pos_save 524288
#26
execute @e[tag=getpos:entity_teleport,scores={pos=16777216..}] ~ ~ ~ tp ~ ~16777216 ~
execute @e[tag=getpos:entity_teleport,scores={pos=16777216..}] ~ ~ ~ scoreboard players remove @s pos 16777216
#27
execute @e[tag=getpos:entity_teleport,scores={pos=8388608..}] ~ ~ ~ tp ~ ~8388608 ~
execute @e[tag=getpos:entity_teleport,scores={pos=8388608..}] ~ ~ ~ scoreboard players remove @s pos 8388608
#28
execute @e[tag=getpos:entity_teleport,scores={pos=4194304..}] ~ ~ ~ tp ~ ~4194304 ~
execute @e[tag=getpos:entity_teleport,scores={pos=4194304..}] ~ ~ ~ scoreboard players remove @s pos 4194304
#29
execute @e[tag=getpos:entity_teleport,scores={pos=2097152..}] ~ ~ ~ tp ~ ~2097152 ~
execute @e[tag=getpos:entity_teleport,scores={pos=2097152..}] ~ ~ ~ scoreboard players remove @s pos 2097152
#30
execute @e[tag=getpos:entity_teleport,scores={pos=1048576..}] ~ ~ ~ tp ~ ~1048576 ~
execute @e[tag=getpos:entity_teleport,scores={pos=1048576..}] ~ ~ ~ scoreboard players remove @s pos 1048576
#31
execute @e[tag=getpos:entity_teleport,scores={pos=524288..}] ~ ~ ~ tp ~ ~524288 ~
execute @e[tag=getpos:entity_teleport,scores={pos=524288..}] ~ ~ ~ scoreboard players remove @s pos 524288
#32
execute @e[tag=getpos:entity_teleport,scores={pos=262144..}] ~ ~ ~ tp ~ ~262144 ~
execute @e[tag=getpos:entity_teleport,scores={pos=262144..}] ~ ~ ~ scoreboard players remove @s pos 262144
#33
execute @e[tag=getpos:entity_teleport,scores={pos=131072..}] ~ ~ ~ tp ~ ~131072 ~
execute @e[tag=getpos:entity_teleport,scores={pos=131072..}] ~ ~ ~ scoreboard players remove @s pos 131072
#34
execute @e[tag=getpos:entity_teleport,scores={pos=65536..}] ~ ~ ~ tp ~ ~65536 ~
execute @e[tag=getpos:entity_teleport,scores={pos=65536..}] ~ ~ ~ scoreboard players remove @s pos 65536
#35
execute @e[tag=getpos:entity_teleport,scores={pos=32768..}] ~ ~ ~ tp ~ ~32768 ~
execute @e[tag=getpos:entity_teleport,scores={pos=32768..}] ~ ~ ~ scoreboard players remove @s pos 32768
#36
execute @e[tag=getpos:entity_teleport,scores={pos=16384..}] ~ ~ ~ tp ~ ~16384 ~
execute @e[tag=getpos:entity_teleport,scores={pos=16384..}] ~ ~ ~ scoreboard players remove @s pos 16384
#37
execute @e[tag=getpos:entity_teleport,scores={pos=8192..}] ~ ~ ~ tp ~ ~8192 ~
execute @e[tag=getpos:entity_teleport,scores={pos=8192..}] ~ ~ ~ scoreboard players remove @s pos 8192
#38
execute @e[tag=getpos:entity_teleport,scores={pos=4096..}] ~ ~ ~ tp ~ ~4096 ~
execute @e[tag=getpos:entity_teleport,scores={pos=4096..}] ~ ~ ~ scoreboard players remove @s pos 4096
#39
execute @e[tag=getpos:entity_teleport,scores={pos=2048..}] ~ ~ ~ tp ~ ~2048 ~
execute @e[tag=getpos:entity_teleport,scores={pos=2048..}] ~ ~ ~ scoreboard players remove @s pos 2048
#40
execute @e[tag=getpos:entity_teleport,scores={pos=1024..}] ~ ~ ~ tp ~ ~1024 ~
execute @e[tag=getpos:entity_teleport,scores={pos=1024..}] ~ ~ ~ scoreboard players remove @s pos 1024
#41
execute @e[tag=getpos:entity_teleport,scores={pos=512..}] ~ ~ ~ tp ~ ~512 ~
execute @e[tag=getpos:entity_teleport,scores={pos=512..}] ~ ~ ~ scoreboard players remove @s pos 512
#42
execute @e[tag=getpos:entity_teleport,scores={pos=256..}] ~ ~ ~ tp ~ ~256 ~
execute @e[tag=getpos:entity_teleport,scores={pos=256..}] ~ ~ ~ scoreboard players remove @s pos 256
#43
execute @e[tag=getpos:entity_teleport,scores={pos=128..}] ~ ~ ~ tp ~ ~128 ~
execute @e[tag=getpos:entity_teleport,scores={pos=128..}] ~ ~ ~ scoreboard players remove @s pos 128
#44
execute @e[tag=getpos:entity_teleport,scores={pos=64..}] ~ ~ ~ tp ~ ~64 ~
execute @e[tag=getpos:entity_teleport,scores={pos=64..}] ~ ~ ~ scoreboard players remove @s pos 64
#45
execute @e[tag=getpos:entity_teleport,scores={pos=32..}] ~ ~ ~ tp ~ ~32 ~
execute @e[tag=getpos:entity_teleport,scores={pos=32..}] ~ ~ ~ scoreboard players remove @s pos 32
#46
execute @e[tag=getpos:entity_teleport,scores={pos=16..}] ~ ~ ~ tp ~ ~16 ~
execute @e[tag=getpos:entity_teleport,scores={pos=16..}] ~ ~ ~ scoreboard players remove @s pos 16
#47
execute @e[tag=getpos:entity_teleport,scores={pos=8..}] ~ ~ ~ tp ~ ~8 ~
execute @e[tag=getpos:entity_teleport,scores={pos=8..}] ~ ~ ~ scoreboard players remove @s pos 8
#48
execute @e[tag=getpos:entity_teleport,scores={pos=4..}] ~ ~ ~ tp ~ ~4 ~
execute @e[tag=getpos:entity_teleport,scores={pos=4..}] ~ ~ ~ scoreboard players remove @s pos 4
#49
execute @e[tag=getpos:entity_teleport,scores={pos=2..}] ~ ~ ~ tp ~ ~2 ~
execute @e[tag=getpos:entity_teleport,scores={pos=2..}] ~ ~ ~ scoreboard players remove @s pos 2
#50
execute @e[tag=getpos:entity_teleport,scores={pos=1..}] ~ ~ ~ tp ~ ~1 ~
execute @e[tag=getpos:entity_teleport,scores={pos=1..}] ~ ~ ~ scoreboard players remove @s pos 1
#51
execute @e[tag=getpos:entity_teleport,tag=pos_fu] ~ ~ ~ tp ~ ~-524288 ~
execute @e[tag=getpos:entity_teleport] ~ ~ ~ tp 0.0 ~ 0.0
execute @e[tag=getpos:entity_mark] ~ ~ ~ execute @s 0.0 ~ 0.0 scoreboard players operation @s posy = @e[tag=getpos:entity_teleport,c=1] pos_save
execute @e[tag=getpos:entity_teleport,tag=pos_fu] ~ ~ ~ tag @s remove pos_fu
#52
execute @e[tag=getpos,c=1] ~ ~ ~ execute @e[tag=getpos:entity_teleport] ~ ~ ~ scoreboard players set @s pos 0
execute @e[tag=getpos,c=1] ~ ~ ~ execute @e[tag=getpos:entity_mark] 0.0 ~ 0.0 tp @e[tag=getpos:entity_teleport,c=1] @s
execute @e[tag=getpos,c=1] ~ ~ ~ execute @e[tag=getpos:entity_teleport] ~ ~ ~ tp 0.0 0.0 ~
execute @e[tag=getpos,c=1] ~ ~ ~ execute @e[tag=getpos:entity_teleport] ~ ~ ~ tag @s[z=-1,dz=-524287] add pos_fu
execute @e[tag=getpos,c=1] ~ ~ ~ execute @e[tag=getpos:entity_teleport] ~ ~ ~ execute @s[z=-1,dz=-524287] ~ ~ ~ tp ~ ~ ~524288
execute @e[tag=getpos,c=1] ~ ~ ~ execute @e[tag=getpos:entity_teleport] ~ ~ ~ tp ~ ~ ~ facing @e[tag=getpos:entity_target]
#prepare_4
execute @e[tag=getpos:entity_target] ~ ~ ~ scoreboard players add @e[tag=getpos:entity_teleport,rm=16777216] pos 16777216
execute @e[tag=getpos:entity_target] ~ ~ ~ execute @e[tag=getpos:entity_teleport,rm=16777216] ~ ~ ~ tp ^ ^ ^16777216
#1
execute @e[tag=getpos:entity_target] ~ ~ ~ scoreboard players add @e[tag=getpos:entity_teleport,rm=8388608] pos 8388608
execute @e[tag=getpos:entity_target] ~ ~ ~ execute @e[tag=getpos:entity_teleport,rm=8388608] ~ ~ ~ tp ^ ^ ^8388608
#2
execute @e[tag=getpos:entity_target] ~ ~ ~ scoreboard players add @e[tag=getpos:entity_teleport,rm=4194304] pos 4194304
execute @e[tag=getpos:entity_target] ~ ~ ~ execute @e[tag=getpos:entity_teleport,rm=4194304] ~ ~ ~ tp ^ ^ ^4194304
#3
execute @e[tag=getpos:entity_target] ~ ~ ~ scoreboard players add @e[tag=getpos:entity_teleport,rm=2097152] pos 2097152
execute @e[tag=getpos:entity_target] ~ ~ ~ execute @e[tag=getpos:entity_teleport,rm=2097152] ~ ~ ~ tp ^ ^ ^2097152
#4
execute @e[tag=getpos:entity_target] ~ ~ ~ scoreboard players add @e[tag=getpos:entity_teleport,rm=1048576] pos 1048576
execute @e[tag=getpos:entity_target] ~ ~ ~ execute @e[tag=getpos:entity_teleport,rm=1048576] ~ ~ ~ tp ^ ^ ^1048576
#5
execute @e[tag=getpos:entity_target] ~ ~ ~ scoreboard players add @e[tag=getpos:entity_teleport,rm=524288] pos 524288
execute @e[tag=getpos:entity_target] ~ ~ ~ execute @e[tag=getpos:entity_teleport,rm=524288] ~ ~ ~ tp ^ ^ ^524288
#6
execute @e[tag=getpos:entity_target] ~ ~ ~ scoreboard players add @e[tag=getpos:entity_teleport,rm=262144] pos 262144
execute @e[tag=getpos:entity_target] ~ ~ ~ execute @e[tag=getpos:entity_teleport,rm=262144] ~ ~ ~ tp ^ ^ ^262144
#7
execute @e[tag=getpos:entity_target] ~ ~ ~ scoreboard players add @e[tag=getpos:entity_teleport,rm=131072] pos 131072
execute @e[tag=getpos:entity_target] ~ ~ ~ execute @e[tag=getpos:entity_teleport,rm=131072] ~ ~ ~ tp ^ ^ ^131072
#8
execute @e[tag=getpos:entity_target] ~ ~ ~ scoreboard players add @e[tag=getpos:entity_teleport,rm=65536] pos 65536
execute @e[tag=getpos:entity_target] ~ ~ ~ execute @e[tag=getpos:entity_teleport,rm=65536] ~ ~ ~ tp ^ ^ ^65536
#9
execute @e[tag=getpos:entity_target] ~ ~ ~ scoreboard players add @e[tag=getpos:entity_teleport,rm=32768] pos 32768
execute @e[tag=getpos:entity_target] ~ ~ ~ execute @e[tag=getpos:entity_teleport,rm=32768] ~ ~ ~ tp ^ ^ ^32768
#10
execute @e[tag=getpos:entity_target] ~ ~ ~ scoreboard players add @e[tag=getpos:entity_teleport,rm=16384] pos 16384
execute @e[tag=getpos:entity_target] ~ ~ ~ execute @e[tag=getpos:entity_teleport,rm=16384] ~ ~ ~ tp ^ ^ ^16384
#11
execute @e[tag=getpos:entity_target] ~ ~ ~ scoreboard players add @e[tag=getpos:entity_teleport,rm=8192] pos 8192
execute @e[tag=getpos:entity_target] ~ ~ ~ execute @e[tag=getpos:entity_teleport,rm=8192] ~ ~ ~ tp ^ ^ ^8192
#12
execute @e[tag=getpos:entity_target] ~ ~ ~ scoreboard players add @e[tag=getpos:entity_teleport,rm=4096] pos 4096
execute @e[tag=getpos:entity_target] ~ ~ ~ execute @e[tag=getpos:entity_teleport,rm=4096] ~ ~ ~ tp ^ ^ ^4096
#13
execute @e[tag=getpos:entity_target] ~ ~ ~ scoreboard players add @e[tag=getpos:entity_teleport,rm=2048] pos 2048
execute @e[tag=getpos:entity_target] ~ ~ ~ execute @e[tag=getpos:entity_teleport,rm=2048] ~ ~ ~ tp ^ ^ ^2048
#14
execute @e[tag=getpos:entity_target] ~ ~ ~ scoreboard players add @e[tag=getpos:entity_teleport,rm=1024] pos 1024
execute @e[tag=getpos:entity_target] ~ ~ ~ execute @e[tag=getpos:entity_teleport,rm=1024] ~ ~ ~ tp ^ ^ ^1024
#15
execute @e[tag=getpos:entity_target] ~ ~ ~ scoreboard players add @e[tag=getpos:entity_teleport,rm=512] pos 512
execute @e[tag=getpos:entity_target] ~ ~ ~ execute @e[tag=getpos:entity_teleport,rm=512] ~ ~ ~ tp ^ ^ ^512
#16
execute @e[tag=getpos:entity_target] ~ ~ ~ scoreboard players add @e[tag=getpos:entity_teleport,rm=256] pos 256
execute @e[tag=getpos:entity_target] ~ ~ ~ execute @e[tag=getpos:entity_teleport,rm=256] ~ ~ ~ tp ^ ^ ^256
#17
execute @e[tag=getpos:entity_target] ~ ~ ~ scoreboard players add @e[tag=getpos:entity_teleport,rm=128] pos 128
execute @e[tag=getpos:entity_target] ~ ~ ~ execute @e[tag=getpos:entity_teleport,rm=128] ~ ~ ~ tp ^ ^ ^128
#18
execute @e[tag=getpos:entity_target] ~ ~ ~ scoreboard players add @e[tag=getpos:entity_teleport,rm=64] pos 64
execute @e[tag=getpos:entity_target] ~ ~ ~ execute @e[tag=getpos:entity_teleport,rm=64] ~ ~ ~ tp ^ ^ ^64
#19
execute @e[tag=getpos:entity_target] ~ ~ ~ scoreboard players add @e[tag=getpos:entity_teleport,rm=32] pos 32
execute @e[tag=getpos:entity_target] ~ ~ ~ execute @e[tag=getpos:entity_teleport,rm=32] ~ ~ ~ tp ^ ^ ^32
#20
execute @e[tag=getpos:entity_target] ~ ~ ~ scoreboard players add @e[tag=getpos:entity_teleport,rm=16] pos 16
execute @e[tag=getpos:entity_target] ~ ~ ~ execute @e[tag=getpos:entity_teleport,rm=16] ~ ~ ~ tp ^ ^ ^16
#21
execute @e[tag=getpos:entity_target] ~ ~ ~ scoreboard players add @e[tag=getpos:entity_teleport,rm=8] pos 8
execute @e[tag=getpos:entity_target] ~ ~ ~ execute @e[tag=getpos:entity_teleport,rm=8] ~ ~ ~ tp ^ ^ ^8
#22
execute @e[tag=getpos:entity_target] ~ ~ ~ scoreboard players add @e[tag=getpos:entity_teleport,rm=4] pos 4
execute @e[tag=getpos:entity_target] ~ ~ ~ execute @e[tag=getpos:entity_teleport,rm=4] ~ ~ ~ tp ^ ^ ^4
#23
execute @e[tag=getpos:entity_target] ~ ~ ~ scoreboard players add @e[tag=getpos:entity_teleport,rm=2] pos 2
execute @e[tag=getpos:entity_target] ~ ~ ~ execute @e[tag=getpos:entity_teleport,rm=2] ~ ~ ~ tp ^ ^ ^2
#24
execute @e[tag=getpos:entity_target] ~ ~ ~ scoreboard players add @e[tag=getpos:entity_teleport,rm=1] pos 1
execute @e[tag=getpos:entity_target] ~ ~ ~ execute @e[tag=getpos:entity_teleport,rm=1] ~ ~ ~ tp ^ ^ ^1
#25
execute @e[tag=getpos:entity_teleport] ~ ~ ~ scoreboard players operation @s pos_save = @s pos
execute @e[tag=getpos:entity_teleport,tag=pos_fu] ~ ~ ~ scoreboard players remove @s pos_save 524288
execute @e[tag=getpos:entity_teleport] ~ ~ ~ tp ~ ~ ~ ~180.0
#26
execute @e[tag=getpos:entity_teleport,scores={pos=16777216..}] ~ ~ ~ tp ^ ^ ^16777216
execute @e[tag=getpos:entity_teleport,scores={pos=16777216..}] ~ ~ ~ scoreboard players remove @s pos 16777216
#27
execute @e[tag=getpos:entity_teleport,scores={pos=8388608..}] ~ ~ ~ tp ^ ^ ^8388608
execute @e[tag=getpos:entity_teleport,scores={pos=8388608..}] ~ ~ ~ scoreboard players remove @s pos 8388608
#28
execute @e[tag=getpos:entity_teleport,scores={pos=4194304..}] ~ ~ ~ tp ^ ^ ^4194304
execute @e[tag=getpos:entity_teleport,scores={pos=4194304..}] ~ ~ ~ scoreboard players remove @s pos 4194304
#29
execute @e[tag=getpos:entity_teleport,scores={pos=2097152..}] ~ ~ ~ tp ^ ^ ^2097152
execute @e[tag=getpos:entity_teleport,scores={pos=2097152..}] ~ ~ ~ scoreboard players remove @s pos 2097152
#30
execute @e[tag=getpos:entity_teleport,scores={pos=1048576..}] ~ ~ ~ tp ^ ^ ^1048576
execute @e[tag=getpos:entity_teleport,scores={pos=1048576..}] ~ ~ ~ scoreboard players remove @s pos 1048576
#31
execute @e[tag=getpos:entity_teleport,scores={pos=524288..}] ~ ~ ~ tp ^ ^ ^524288
execute @e[tag=getpos:entity_teleport,scores={pos=524288..}] ~ ~ ~ scoreboard players remove @s pos 524288
#32
execute @e[tag=getpos:entity_teleport,scores={pos=262144..}] ~ ~ ~ tp ^ ^ ^262144
execute @e[tag=getpos:entity_teleport,scores={pos=262144..}] ~ ~ ~ scoreboard players remove @s pos 262144
#33
execute @e[tag=getpos:entity_teleport,scores={pos=131072..}] ~ ~ ~ tp ^ ^ ^131072
execute @e[tag=getpos:entity_teleport,scores={pos=131072..}] ~ ~ ~ scoreboard players remove @s pos 131072
#34
execute @e[tag=getpos:entity_teleport,scores={pos=65536..}] ~ ~ ~ tp ^ ^ ^65536
execute @e[tag=getpos:entity_teleport,scores={pos=65536..}] ~ ~ ~ scoreboard players remove @s pos 65536
#35
execute @e[tag=getpos:entity_teleport,scores={pos=32768..}] ~ ~ ~ tp ^ ^ ^32768
execute @e[tag=getpos:entity_teleport,scores={pos=32768..}] ~ ~ ~ scoreboard players remove @s pos 32768
#36
execute @e[tag=getpos:entity_teleport,scores={pos=16384..}] ~ ~ ~ tp ^ ^ ^16384
execute @e[tag=getpos:entity_teleport,scores={pos=16384..}] ~ ~ ~ scoreboard players remove @s pos 16384
#37
execute @e[tag=getpos:entity_teleport,scores={pos=8192..}] ~ ~ ~ tp ^ ^ ^8192
execute @e[tag=getpos:entity_teleport,scores={pos=8192..}] ~ ~ ~ scoreboard players remove @s pos 8192
#38
execute @e[tag=getpos:entity_teleport,scores={pos=4096..}] ~ ~ ~ tp ^ ^ ^4096
execute @e[tag=getpos:entity_teleport,scores={pos=4096..}] ~ ~ ~ scoreboard players remove @s pos 4096
#39
execute @e[tag=getpos:entity_teleport,scores={pos=2048..}] ~ ~ ~ tp ^ ^ ^2048
execute @e[tag=getpos:entity_teleport,scores={pos=2048..}] ~ ~ ~ scoreboard players remove @s pos 2048
#40
execute @e[tag=getpos:entity_teleport,scores={pos=1024..}] ~ ~ ~ tp ^ ^ ^1024
execute @e[tag=getpos:entity_teleport,scores={pos=1024..}] ~ ~ ~ scoreboard players remove @s pos 1024
#41
execute @e[tag=getpos:entity_teleport,scores={pos=512..}] ~ ~ ~ tp ^ ^ ^512
execute @e[tag=getpos:entity_teleport,scores={pos=512..}] ~ ~ ~ scoreboard players remove @s pos 512
#42
execute @e[tag=getpos:entity_teleport,scores={pos=256..}] ~ ~ ~ tp ^ ^ ^256
execute @e[tag=getpos:entity_teleport,scores={pos=256..}] ~ ~ ~ scoreboard players remove @s pos 256
#43
execute @e[tag=getpos:entity_teleport,scores={pos=128..}] ~ ~ ~ tp ^ ^ ^128
execute @e[tag=getpos:entity_teleport,scores={pos=128..}] ~ ~ ~ scoreboard players remove @s pos 128
#44
execute @e[tag=getpos:entity_teleport,scores={pos=64..}] ~ ~ ~ tp ^ ^ ^64
execute @e[tag=getpos:entity_teleport,scores={pos=64..}] ~ ~ ~ scoreboard players remove @s pos 64
#45
execute @e[tag=getpos:entity_teleport,scores={pos=32..}] ~ ~ ~ tp ^ ^ ^32
execute @e[tag=getpos:entity_teleport,scores={pos=32..}] ~ ~ ~ scoreboard players remove @s pos 32
#46
execute @e[tag=getpos:entity_teleport,scores={pos=16..}] ~ ~ ~ tp ^ ^ ^16
execute @e[tag=getpos:entity_teleport,scores={pos=16..}] ~ ~ ~ scoreboard players remove @s pos 16
#47
execute @e[tag=getpos:entity_teleport,scores={pos=8..}] ~ ~ ~ tp ^ ^ ^8
execute @e[tag=getpos:entity_teleport,scores={pos=8..}] ~ ~ ~ scoreboard players remove @s pos 8
#48
execute @e[tag=getpos:entity_teleport,scores={pos=4..}] ~ ~ ~ tp ^ ^ ^4
execute @e[tag=getpos:entity_teleport,scores={pos=4..}] ~ ~ ~ scoreboard players remove @s pos 4
#49
execute @e[tag=getpos:entity_teleport,scores={pos=2..}] ~ ~ ~ tp ^ ^ ^2
execute @e[tag=getpos:entity_teleport,scores={pos=2..}] ~ ~ ~ scoreboard players remove @s pos 2
#50
execute @e[tag=getpos:entity_teleport,scores={pos=1..}] ~ ~ ~ tp ^ ^ ^1
execute @e[tag=getpos:entity_teleport,scores={pos=1..}] ~ ~ ~ scoreboard players remove @s pos 1
#51
execute @e[tag=getpos:entity_teleport,tag=pos_fu] ~ ~ ~ tp ^ ^ ^-524288
execute @e[tag=getpos:entity_teleport] ~ ~ ~ tp 0.0 0.0 ~
execute @e[tag=getpos:entity_mark] ~ ~ ~ execute @s 0.0 0.0 ~ scoreboard players operation @s posz = @e[tag=getpos:entity_teleport,c=1] pos_save
execute @e[tag=getpos:entity_teleport,tag=pos_fu] ~ ~ ~ tag @s remove pos_fu
#52
execute @e[tag=getpos] ~ ~ ~ scoreboard players set @s posx -200000000
execute @e[tag=getpos] ~ ~ ~ scoreboard players set @s posy -200000000
execute @e[tag=getpos] ~ ~ ~ scoreboard players set @s posz -200000000
execute @e[tag=getpos,c=1] ~ ~ ~ execute @e[tag=getpos:entity_mark] ~ ~ ~ scoreboard players operation @e[tag=getpos,c=1,scores={posx=-200000000}] posx = @s posx
execute @e[tag=getpos,c=1] ~ ~ ~ execute @e[tag=getpos:entity_mark] ~ ~ ~ scoreboard players operation @e[tag=getpos,c=1,scores={posy=-200000000}] posy = @s posy
execute @e[tag=getpos,c=1] ~ ~ ~ execute @e[tag=getpos:entity_mark] ~ ~ ~ scoreboard players operation @e[tag=getpos,c=1,scores={posz=-200000000}] posz = @s posz
#end_1
execute @e[tag=getpos:entity_teleport] ~ ~ ~ scoreboard players reset @s
execute @e[tag=getpos:entity_teleport] ~ ~ ~ tp 0.0 32767.0 0.0
execute @e[tag=getpos:entity_teleport] ~ ~ ~ kill @s
execute @e[tag=getpos:entity_mark] ~ ~ ~ scoreboard players reset @s
execute @e[tag=getpos:entity_mark] ~ ~ ~ tp 0.0 32767.0 0.0
execute @e[tag=getpos:entity_mark] ~ ~ ~ kill @s
execute @e[tag=getpos:entity_target] ~ ~ ~ tp 0.0 32767.0 0.0
execute @e[tag=getpos:entity_target] ~ ~ ~ kill @s
#end_2
execute @e[tag=getpos] ~ ~ ~ tag @s remove getpos
#end_3