kill @e[type=snowball,r=1.4,c=1]
gamerule sendcommandfeedback false
tp 0 0 0
#start
execute @s[scores={posx=-524288..-1}] ~ ~ ~ tp -524288 ~ ~
execute @s[scores={posx=-524288..-1}] ~ ~ ~ scoreboard players add @s posx 524288
#prepare
execute @s[scores={posx=524288..}] ~ ~ ~ tp ~524288 ~ ~
execute @s[scores={posx=524288..}] ~ ~ ~ scoreboard players remove @s posx 524288
execute @s[scores={posx=262144..}] ~ ~ ~ tp ~262144 ~ ~
execute @s[scores={posx=262144..}] ~ ~ ~ scoreboard players remove @s posx 262144
execute @s[scores={posx=131072..}] ~ ~ ~ tp ~131072 ~ ~
execute @s[scores={posx=131072..}] ~ ~ ~ scoreboard players remove @s posx 131072
execute @s[scores={posx=65536..}] ~ ~ ~ tp ~65536 ~ ~
execute @s[scores={posx=65536..}] ~ ~ ~ scoreboard players remove @s posx 65536
execute @s[scores={posx=32768..}] ~ ~ ~ tp ~32768 ~ ~
execute @s[scores={posx=32768..}] ~ ~ ~ scoreboard players remove @s posx 32768
execute @s[scores={posx=16384..}] ~ ~ ~ tp ~16384 ~ ~
execute @s[scores={posx=16384..}] ~ ~ ~ scoreboard players remove @s posx 16384
execute @s[scores={posx=8192..}] ~ ~ ~ tp ~8192 ~ ~
execute @s[scores={posx=8192..}] ~ ~ ~ scoreboard players remove @s posx 8192
execute @s[scores={posx=4096..}] ~ ~ ~ tp ~4096 ~ ~
execute @s[scores={posx=4096..}] ~ ~ ~ scoreboard players remove @s posx 4096
execute @s[scores={posx=2048..}] ~ ~ ~ tp ~2048 ~ ~
execute @s[scores={posx=2048..}] ~ ~ ~ scoreboard players remove @s posx 2048
execute @s[scores={posx=1024..}] ~ ~ ~ tp ~1024 ~ ~
execute @s[scores={posx=1024..}] ~ ~ ~ scoreboard players remove @s posx 1024
execute @s[scores={posx=512..}] ~ ~ ~ tp ~512 ~ ~
execute @s[scores={posx=512..}] ~ ~ ~ scoreboard players remove @s posx 512
execute @s[scores={posx=256..}] ~ ~ ~ tp ~256 ~ ~
execute @s[scores={posx=256..}] ~ ~ ~ scoreboard players remove @s posx 256
execute @s[scores={posx=128..}] ~ ~ ~ tp ~128 ~ ~
execute @s[scores={posx=128..}] ~ ~ ~ scoreboard players remove @s posx 128
execute @s[scores={posx=64..}] ~ ~ ~ tp ~64 ~ ~
execute @s[scores={posx=64..}] ~ ~ ~ scoreboard players remove @s posx 64
execute @s[scores={posx=32..}] ~ ~ ~ tp ~32 ~ ~
execute @s[scores={posx=32..}] ~ ~ ~ scoreboard players remove @s posx 32
execute @s[scores={posx=16..}] ~ ~ ~ tp ~16 ~ ~
execute @s[scores={posx=16..}] ~ ~ ~ scoreboard players remove @s posx 16
execute @s[scores={posx=8..}] ~ ~ ~ tp ~8 ~ ~
execute @s[scores={posx=8..}] ~ ~ ~ scoreboard players remove @s posx 8
execute @s[scores={posx=4..}] ~ ~ ~ tp ~4 ~ ~
execute @s[scores={posx=4..}] ~ ~ ~ scoreboard players remove @s posx 4
execute @s[scores={posx=2..}] ~ ~ ~ tp ~2 ~ ~
execute @s[scores={posx=2..}] ~ ~ ~ scoreboard players remove @s posx 2
execute @s[scores={posx=1..}] ~ ~ ~ tp ~1 ~ ~
execute @s[scores={posx=1..}] ~ ~ ~ scoreboard players remove @s posx 1
#posx_return









execute @s[scores={posz=-524288..-1}] ~ ~ ~ tp ~ ~ -524288
execute @s[scores={posz=-524288..-1}] ~ ~ ~ scoreboard players add @s posz 524288
#prepare
execute @s[scores={posz=524288..}] ~ ~ ~ tp ~ ~ ~524288
execute @s[scores={posz=524288..}] ~ ~ ~ scoreboard players remove @s posz 524288
execute @s[scores={posz=262144..}] ~ ~ ~ tp ~ ~ ~262144
execute @s[scores={posz=262144..}] ~ ~ ~ scoreboard players remove @s posz 262144
execute @s[scores={posz=131072..}] ~ ~ ~ tp ~ ~ ~131072
execute @s[scores={posz=131072..}] ~ ~ ~ scoreboard players remove @s posz 131072
execute @s[scores={posz=65536..}] ~ ~ ~ tp ~ ~ ~65536
execute @s[scores={posz=65536..}] ~ ~ ~ scoreboard players remove @s posz 65536
execute @s[scores={posz=32768..}] ~ ~ ~ tp ~ ~ ~32768
execute @s[scores={posz=32768..}] ~ ~ ~ scoreboard players remove @s posz 32768
execute @s[scores={posz=16384..}] ~ ~ ~ tp ~ ~ ~16384
execute @s[scores={posz=16384..}] ~ ~ ~ scoreboard players remove @s posz 16384
execute @s[scores={posz=8192..}] ~ ~ ~ tp ~ ~ ~8192
execute @s[scores={posz=8192..}] ~ ~ ~ scoreboard players remove @s posz 8192
execute @s[scores={posz=4096..}] ~ ~ ~ tp ~ ~ ~4096
execute @s[scores={posz=4096..}] ~ ~ ~ scoreboard players remove @s posz 4096
execute @s[scores={posz=2048..}] ~ ~ ~ tp ~ ~ ~2048
execute @s[scores={posz=2048..}] ~ ~ ~ scoreboard players remove @s posz 2048
execute @s[scores={posz=1024..}] ~ ~ ~ tp ~ ~ ~1024
execute @s[scores={posz=1024..}] ~ ~ ~ scoreboard players remove @s posz 1024
execute @s[scores={posz=512..}] ~ ~ ~ tp ~ ~ ~512
execute @s[scores={posz=512..}] ~ ~ ~ scoreboard players remove @s posz 512
execute @s[scores={posz=256..}] ~ ~ ~ tp ~ ~ ~256
execute @s[scores={posz=256..}] ~ ~ ~ scoreboard players remove @s posz 256
execute @s[scores={posz=128..}] ~ ~ ~ tp ~ ~ ~128
execute @s[scores={posz=128..}] ~ ~ ~ scoreboard players remove @s posz 128
execute @s[scores={posz=64..}] ~ ~ ~ tp ~ ~ ~64
execute @s[scores={posz=64..}] ~ ~ ~ scoreboard players remove @s posz 64
execute @s[scores={posz=32..}] ~ ~ ~ tp ~ ~ ~32
execute @s[scores={posz=32..}] ~ ~ ~ scoreboard players remove @s posz 32
execute @s[scores={posz=16..}] ~ ~ ~ tp ~ ~ ~16
execute @s[scores={posz=16..}] ~ ~ ~ scoreboard players remove @s posz 16
execute @s[scores={posz=8..}] ~ ~ ~ tp ~ ~ ~8
execute @s[scores={posz=8..}] ~ ~ ~ scoreboard players remove @s posz 8
execute @s[scores={posz=4..}] ~ ~ ~ tp ~ ~ ~4
execute @s[scores={posz=4..}] ~ ~ ~ scoreboard players remove @s posz 4
execute @s[scores={posz=2..}] ~ ~ ~ tp ~ ~ ~2
execute @s[scores={posz=2..}] ~ ~ ~ scoreboard players remove @s posz 2
execute @s[scores={posz=1..}] ~ ~ ~ tp ~ ~ ~1
execute @s[scores={posz=1..}] ~ ~ ~ scoreboard players remove @s posz 1
#posz_return







tellraw @s {"rawtext":[{"text":"§b已成功将您随机传送到 §f(§6"},{"score":{"objective":"posx_s","name":"@s"}},{"text":"§f,§6"},{"score":{"objective":"posz_s","name":"@s"}},{"text":"§f)"}]}
#told
tp ~ 32767 ~
scoreboard players set @s top_y 1
scoreboard objectives remove posx_s
scoreboard objectives remove posz_s
gamerule sendcommandfeedback true
#end