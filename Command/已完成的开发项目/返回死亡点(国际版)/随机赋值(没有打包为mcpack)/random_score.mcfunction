scoreboard objectives add random dummy
scoreboard objectives add random_js dummy
#0
scoreboard players reset * random_js
scoreboard players add a random 0
scoreboard players add b random 0
scoreboard players set b random_js 0
scoreboard players operation c random = a random
scoreboard players operation c random -= b random
summon minecraft:armor_stand random:js
scoreboard players operation @e[name=random:js,c=1] random = c random
scoreboard players set fu random -1
execute @e[name=random:js,scores={random=..-1},c=1] ~ ~ ~ scoreboard players operation @s random *= fu random
#1
execute @e[name=random:js,scores={random=2147483647..},c=1] ~ ~ ~ scoreboard players random a random_js 0 2147483646
execute @e[name=random:js,scores={random=2147483647..},c=1] ~ ~ ~ scoreboard players operation b random_js += a random_js
execute @e[name=random:js,scores={random=2147483647..},c=1] ~ ~ ~ scoreboard players remove @s random 2147483647
#2-1
execute @e[name=random:js,scores={random=1073741824..},c=1] ~ ~ ~ scoreboard players random a random_js 0 1073741824
execute @e[name=random:js,scores={random=1073741824..},c=1] ~ ~ ~ scoreboard players operation b random_js += a random_js
execute @e[name=random:js,scores={random=1073741824..},c=1] ~ ~ ~ scoreboard players remove @s random 1073741824
#2-2
execute @e[name=random:js,scores={random=536870912..},c=1] ~ ~ ~ scoreboard players random a random_js 0 536870912
execute @e[name=random:js,scores={random=536870912..},c=1] ~ ~ ~ scoreboard players operation b random_js += a random_js
execute @e[name=random:js,scores={random=536870912..},c=1] ~ ~ ~ scoreboard players remove @s random 536870912
#2-3
execute @e[name=random:js,scores={random=268435456..},c=1] ~ ~ ~ scoreboard players random a random_js 0 268435456
execute @e[name=random:js,scores={random=268435456..},c=1] ~ ~ ~ scoreboard players operation b random_js += a random_js
execute @e[name=random:js,scores={random=268435456..},c=1] ~ ~ ~ scoreboard players remove @s random 268435456
#2-4
execute @e[name=random:js,scores={random=134217728..},c=1] ~ ~ ~ scoreboard players random a random_js 0 134217728
execute @e[name=random:js,scores={random=134217728..},c=1] ~ ~ ~ scoreboard players operation b random_js += a random_js
execute @e[name=random:js,scores={random=134217728..},c=1] ~ ~ ~ scoreboard players remove @s random 134217728
#2-5
execute @e[name=random:js,scores={random=67108864..},c=1] ~ ~ ~ scoreboard players random a random_js 0 67108864
execute @e[name=random:js,scores={random=67108864..},c=1] ~ ~ ~ scoreboard players operation b random_js += a random_js
execute @e[name=random:js,scores={random=67108864..},c=1] ~ ~ ~ scoreboard players remove @s random 67108864
#2-6
execute @e[name=random:js,scores={random=33554432..},c=1] ~ ~ ~ scoreboard players random a random_js 0 33554432
execute @e[name=random:js,scores={random=33554432..},c=1] ~ ~ ~ scoreboard players operation b random_js += a random_js
execute @e[name=random:js,scores={random=33554432..},c=1] ~ ~ ~ scoreboard players remove @s random 33554432
#2-7
execute @e[name=random:js,scores={random=16777216..},c=1] ~ ~ ~ scoreboard players random a random_js 0 16777216
execute @e[name=random:js,scores={random=16777216..},c=1] ~ ~ ~ scoreboard players operation b random_js += a random_js
execute @e[name=random:js,scores={random=16777216..},c=1] ~ ~ ~ scoreboard players remove @s random 16777216
#2-8
execute @e[name=random:js,scores={random=8388608..},c=1] ~ ~ ~ scoreboard players random a random_js 0 8388608
execute @e[name=random:js,scores={random=8388608..},c=1] ~ ~ ~ scoreboard players operation b random_js += a random_js
execute @e[name=random:js,scores={random=8388608..},c=1] ~ ~ ~ scoreboard players remove @s random 8388608
#2-9
execute @e[name=random:js,scores={random=4194304..},c=1] ~ ~ ~ scoreboard players random a random_js 0 4194304
execute @e[name=random:js,scores={random=4194304..},c=1] ~ ~ ~ scoreboard players operation b random_js += a random_js
execute @e[name=random:js,scores={random=4194304..},c=1] ~ ~ ~ scoreboard players remove @s random 4194304
#2-10
execute @e[name=random:js,scores={random=2097152..},c=1] ~ ~ ~ scoreboard players random a random_js 0 2097152
execute @e[name=random:js,scores={random=2097152..},c=1] ~ ~ ~ scoreboard players operation b random_js += a random_js
execute @e[name=random:js,scores={random=2097152..},c=1] ~ ~ ~ scoreboard players remove @s random 2097152
#2-11
execute @e[name=random:js,scores={random=1048576..},c=1] ~ ~ ~ scoreboard players random a random_js 0 1048576
execute @e[name=random:js,scores={random=1048576..},c=1] ~ ~ ~ scoreboard players operation b random_js += a random_js
execute @e[name=random:js,scores={random=1048576..},c=1] ~ ~ ~ scoreboard players remove @s random 1048576
#2-12
execute @e[name=random:js,scores={random=524288..},c=1] ~ ~ ~ scoreboard players random a random_js 0 524288
execute @e[name=random:js,scores={random=524288..},c=1] ~ ~ ~ scoreboard players operation b random_js += a random_js
execute @e[name=random:js,scores={random=524288..},c=1] ~ ~ ~ scoreboard players remove @s random 524288
#2-13
execute @e[name=random:js,scores={random=262144..},c=1] ~ ~ ~ scoreboard players random a random_js 0 262144
execute @e[name=random:js,scores={random=262144..},c=1] ~ ~ ~ scoreboard players operation b random_js += a random_js
execute @e[name=random:js,scores={random=262144..},c=1] ~ ~ ~ scoreboard players remove @s random 262144
#2-14
execute @e[name=random:js,scores={random=131072..},c=1] ~ ~ ~ scoreboard players random a random_js 0 131072
execute @e[name=random:js,scores={random=131072..},c=1] ~ ~ ~ scoreboard players operation b random_js += a random_js
execute @e[name=random:js,scores={random=131072..},c=1] ~ ~ ~ scoreboard players remove @s random 131072
#2-15
execute @e[name=random:js,scores={random=65536..},c=1] ~ ~ ~ scoreboard players random a random_js 0 65536
execute @e[name=random:js,scores={random=65536..},c=1] ~ ~ ~ scoreboard players operation b random_js += a random_js
execute @e[name=random:js,scores={random=65536..},c=1] ~ ~ ~ scoreboard players remove @s random 65536
#2-16
execute @e[name=random:js,scores={random=32768..},c=1] ~ ~ ~ scoreboard players random a random_js 0 32768
execute @e[name=random:js,scores={random=32768..},c=1] ~ ~ ~ scoreboard players operation b random_js += a random_js
execute @e[name=random:js,scores={random=32768..},c=1] ~ ~ ~ scoreboard players remove @s random 32768
#2-17
execute @e[name=random:js,scores={random=16384..},c=1] ~ ~ ~ scoreboard players random a random_js 0 16384
execute @e[name=random:js,scores={random=16384..},c=1] ~ ~ ~ scoreboard players operation b random_js += a random_js
execute @e[name=random:js,scores={random=16384..},c=1] ~ ~ ~ scoreboard players remove @s random 16384
#2-18
execute @e[name=random:js,scores={random=8192..},c=1] ~ ~ ~ scoreboard players random a random_js 0 8192
execute @e[name=random:js,scores={random=8192..},c=1] ~ ~ ~ scoreboard players operation b random_js += a random_js
execute @e[name=random:js,scores={random=8192..},c=1] ~ ~ ~ scoreboard players remove @s random 8192
#2-19
execute @e[name=random:js,scores={random=4096..},c=1] ~ ~ ~ scoreboard players random a random_js 0 4096
execute @e[name=random:js,scores={random=4096..},c=1] ~ ~ ~ scoreboard players operation b random_js += a random_js
execute @e[name=random:js,scores={random=4096..},c=1] ~ ~ ~ scoreboard players remove @s random 4096
#2-20
execute @e[name=random:js,scores={random=2048..},c=1] ~ ~ ~ scoreboard players random a random_js 0 2048
execute @e[name=random:js,scores={random=2048..},c=1] ~ ~ ~ scoreboard players operation b random_js += a random_js
execute @e[name=random:js,scores={random=2048..},c=1] ~ ~ ~ scoreboard players remove @s random 2048
#2-21
execute @e[name=random:js,scores={random=1024..},c=1] ~ ~ ~ scoreboard players random a random_js 0 1024
execute @e[name=random:js,scores={random=1024..},c=1] ~ ~ ~ scoreboard players operation b random_js += a random_js
execute @e[name=random:js,scores={random=1024..},c=1] ~ ~ ~ scoreboard players remove @s random 1024
#2-22
execute @e[name=random:js,scores={random=512..},c=1] ~ ~ ~ scoreboard players random a random_js 0 512
execute @e[name=random:js,scores={random=512..},c=1] ~ ~ ~ scoreboard players operation b random_js += a random_js
execute @e[name=random:js,scores={random=512..},c=1] ~ ~ ~ scoreboard players remove @s random 512
#2-23
execute @e[name=random:js,scores={random=256..},c=1] ~ ~ ~ scoreboard players random a random_js 0 256
execute @e[name=random:js,scores={random=256..},c=1] ~ ~ ~ scoreboard players operation b random_js += a random_js
execute @e[name=random:js,scores={random=256..},c=1] ~ ~ ~ scoreboard players remove @s random 256
#2-24
execute @e[name=random:js,scores={random=128..},c=1] ~ ~ ~ scoreboard players random a random_js 0 128
execute @e[name=random:js,scores={random=128..},c=1] ~ ~ ~ scoreboard players operation b random_js += a random_js
execute @e[name=random:js,scores={random=128..},c=1] ~ ~ ~ scoreboard players remove @s random 128
#2-25
execute @e[name=random:js,scores={random=64..},c=1] ~ ~ ~ scoreboard players random a random_js 0 64
execute @e[name=random:js,scores={random=64..},c=1] ~ ~ ~ scoreboard players operation b random_js += a random_js
execute @e[name=random:js,scores={random=64..},c=1] ~ ~ ~ scoreboard players remove @s random 64
#2-26
execute @e[name=random:js,scores={random=32..},c=1] ~ ~ ~ scoreboard players random a random_js 0 32
execute @e[name=random:js,scores={random=32..},c=1] ~ ~ ~ scoreboard players operation b random_js += a random_js
execute @e[name=random:js,scores={random=32..},c=1] ~ ~ ~ scoreboard players remove @s random 32
#2-27
execute @e[name=random:js,scores={random=16..},c=1] ~ ~ ~ scoreboard players random a random_js 0 16
execute @e[name=random:js,scores={random=16..},c=1] ~ ~ ~ scoreboard players operation b random_js += a random_js
execute @e[name=random:js,scores={random=16..},c=1] ~ ~ ~ scoreboard players remove @s random 16
#2-28
execute @e[name=random:js,scores={random=8..},c=1] ~ ~ ~ scoreboard players random a random_js 0 8
execute @e[name=random:js,scores={random=8..},c=1] ~ ~ ~ scoreboard players operation b random_js += a random_js
execute @e[name=random:js,scores={random=8..},c=1] ~ ~ ~ scoreboard players remove @s random 8
#2-29
execute @e[name=random:js,scores={random=4..},c=1] ~ ~ ~ scoreboard players random a random_js 0 4
execute @e[name=random:js,scores={random=4..},c=1] ~ ~ ~ scoreboard players operation b random_js += a random_js
execute @e[name=random:js,scores={random=4..},c=1] ~ ~ ~ scoreboard players remove @s random 4
#2-30
execute @e[name=random:js,scores={random=2..},c=1] ~ ~ ~ scoreboard players random a random_js 0 2
execute @e[name=random:js,scores={random=2..},c=1] ~ ~ ~ scoreboard players operation b random_js += a random_js
execute @e[name=random:js,scores={random=2..},c=1] ~ ~ ~ scoreboard players remove @s random 2
#2-31
execute @e[name=random:js,scores={random=1..},c=1] ~ ~ ~ scoreboard players random a random_js 0 1
execute @e[name=random:js,scores={random=1..},c=1] ~ ~ ~ scoreboard players operation b random_js += a random_js
execute @e[name=random:js,scores={random=1..},c=1] ~ ~ ~ scoreboard players remove @s random 1
#2-32
scoreboard players operation d random = a random
scoreboard players operation d random < b random
scoreboard players operation d random += b random_js
scoreboard players operation 取值结果 random_js = d random
scoreboard players operation 数1 random_js = a random
scoreboard players operation 数2 random_js = b random
scoreboard players reset * random
scoreboard players operation 数1 random = 数1 random_js
scoreboard players operation 数2 random = 数2 random_js
scoreboard players operation 取值结果 random = 取值结果 random_js
summon minecraft:armor_stand "WRITER SAYS"
execute @e[name="WRITER SAYS",c=1] ~ ~ ~ say DOWN!
execute @e[name="WRITER SAYS",c=1] ~ ~ ~ say Made By Happy2018new
kill @e[name="WRITER SAYS",c=1]
#3
kill @e[name=random:js,c=1]