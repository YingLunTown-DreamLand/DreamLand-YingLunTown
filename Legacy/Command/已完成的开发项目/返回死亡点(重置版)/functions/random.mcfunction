kill @e[type=egg,r=1.4,c=1]
gamerule sendcommandfeedback false
tp 0 0 0
#start
scoreboard objectives add posx_s dummy
scoreboard objectives add posz_s dummy
#scoreboards_added
scoreboard players random @s random -524288 524288
scoreboard players operation @s posx_s = @s random
#score_set_and_operation_=
execute @s[scores={random=-524288..-1}] ~ ~ ~ tp -524288 ~ ~
execute @s[scores={random=-524288..-1}] ~ ~ ~ scoreboard players add @s random 524288
#prepare
execute @s[scores={random=524288..}] ~ ~ ~ tp ~524288 ~ ~
execute @s[scores={random=524288..}] ~ ~ ~ scoreboard players remove @s random 524288
execute @s[scores={random=262144..}] ~ ~ ~ tp ~262144 ~ ~
execute @s[scores={random=262144..}] ~ ~ ~ scoreboard players remove @s random 262144
execute @s[scores={random=131072..}] ~ ~ ~ tp ~131072 ~ ~
execute @s[scores={random=131072..}] ~ ~ ~ scoreboard players remove @s random 131072
execute @s[scores={random=65536..}] ~ ~ ~ tp ~65536 ~ ~
execute @s[scores={random=65536..}] ~ ~ ~ scoreboard players remove @s random 65536
execute @s[scores={random=32768..}] ~ ~ ~ tp ~32768 ~ ~
execute @s[scores={random=32768..}] ~ ~ ~ scoreboard players remove @s random 32768
execute @s[scores={random=16384..}] ~ ~ ~ tp ~16384 ~ ~
execute @s[scores={random=16384..}] ~ ~ ~ scoreboard players remove @s random 16384
execute @s[scores={random=8192..}] ~ ~ ~ tp ~8192 ~ ~
execute @s[scores={random=8192..}] ~ ~ ~ scoreboard players remove @s random 8192
execute @s[scores={random=4096..}] ~ ~ ~ tp ~4096 ~ ~
execute @s[scores={random=4096..}] ~ ~ ~ scoreboard players remove @s random 4096
execute @s[scores={random=2048..}] ~ ~ ~ tp ~2048 ~ ~
execute @s[scores={random=2048..}] ~ ~ ~ scoreboard players remove @s random 2048
execute @s[scores={random=1024..}] ~ ~ ~ tp ~1024 ~ ~
execute @s[scores={random=1024..}] ~ ~ ~ scoreboard players remove @s random 1024
execute @s[scores={random=512..}] ~ ~ ~ tp ~512 ~ ~
execute @s[scores={random=512..}] ~ ~ ~ scoreboard players remove @s random 512
execute @s[scores={random=256..}] ~ ~ ~ tp ~256 ~ ~
execute @s[scores={random=256..}] ~ ~ ~ scoreboard players remove @s random 256
execute @s[scores={random=128..}] ~ ~ ~ tp ~128 ~ ~
execute @s[scores={random=128..}] ~ ~ ~ scoreboard players remove @s random 128
execute @s[scores={random=64..}] ~ ~ ~ tp ~64 ~ ~
execute @s[scores={random=64..}] ~ ~ ~ scoreboard players remove @s random 64
execute @s[scores={random=32..}] ~ ~ ~ tp ~32 ~ ~
execute @s[scores={random=32..}] ~ ~ ~ scoreboard players remove @s random 32
execute @s[scores={random=16..}] ~ ~ ~ tp ~16 ~ ~
execute @s[scores={random=16..}] ~ ~ ~ scoreboard players remove @s random 16
execute @s[scores={random=8..}] ~ ~ ~ tp ~8 ~ ~
execute @s[scores={random=8..}] ~ ~ ~ scoreboard players remove @s random 8
execute @s[scores={random=4..}] ~ ~ ~ tp ~4 ~ ~
execute @s[scores={random=4..}] ~ ~ ~ scoreboard players remove @s random 4
execute @s[scores={random=2..}] ~ ~ ~ tp ~2 ~ ~
execute @s[scores={random=2..}] ~ ~ ~ scoreboard players remove @s random 2
execute @s[scores={random=1..}] ~ ~ ~ tp ~1 ~ ~
execute @s[scores={random=1..}] ~ ~ ~ scoreboard players remove @s random 1
#posx_return
scoreboard players random @s random -524288 524288
scoreboard players operation @s posz_s = @s random
#score_set_and_operation_=
execute @s[scores={random=-524288..-1}] ~ ~ ~ tp ~ ~ -524288
execute @s[scores={random=-524288..-1}] ~ ~ ~ scoreboard players add @s random 524288
#prepare
execute @s[scores={random=524288..}] ~ ~ ~ tp ~ ~ ~524288
execute @s[scores={random=524288..}] ~ ~ ~ scoreboard players remove @s random 524288
execute @s[scores={random=262144..}] ~ ~ ~ tp ~ ~ ~262144
execute @s[scores={random=262144..}] ~ ~ ~ scoreboard players remove @s random 262144
execute @s[scores={random=131072..}] ~ ~ ~ tp ~ ~ ~131072
execute @s[scores={random=131072..}] ~ ~ ~ scoreboard players remove @s random 131072
execute @s[scores={random=65536..}] ~ ~ ~ tp ~ ~ ~65536
execute @s[scores={random=65536..}] ~ ~ ~ scoreboard players remove @s random 65536
execute @s[scores={random=32768..}] ~ ~ ~ tp ~ ~ ~32768
execute @s[scores={random=32768..}] ~ ~ ~ scoreboard players remove @s random 32768
execute @s[scores={random=16384..}] ~ ~ ~ tp ~ ~ ~16384
execute @s[scores={random=16384..}] ~ ~ ~ scoreboard players remove @s random 16384
execute @s[scores={random=8192..}] ~ ~ ~ tp ~ ~ ~8192
execute @s[scores={random=8192..}] ~ ~ ~ scoreboard players remove @s random 8192
execute @s[scores={random=4096..}] ~ ~ ~ tp ~ ~ ~4096
execute @s[scores={random=4096..}] ~ ~ ~ scoreboard players remove @s random 4096
execute @s[scores={random=2048..}] ~ ~ ~ tp ~ ~ ~2048
execute @s[scores={random=2048..}] ~ ~ ~ scoreboard players remove @s random 2048
execute @s[scores={random=1024..}] ~ ~ ~ tp ~ ~ ~1024
execute @s[scores={random=1024..}] ~ ~ ~ scoreboard players remove @s random 1024
execute @s[scores={random=512..}] ~ ~ ~ tp ~ ~ ~512
execute @s[scores={random=512..}] ~ ~ ~ scoreboard players remove @s random 512
execute @s[scores={random=256..}] ~ ~ ~ tp ~ ~ ~256
execute @s[scores={random=256..}] ~ ~ ~ scoreboard players remove @s random 256
execute @s[scores={random=128..}] ~ ~ ~ tp ~ ~ ~128
execute @s[scores={random=128..}] ~ ~ ~ scoreboard players remove @s random 128
execute @s[scores={random=64..}] ~ ~ ~ tp ~ ~ ~64
execute @s[scores={random=64..}] ~ ~ ~ scoreboard players remove @s random 64
execute @s[scores={random=32..}] ~ ~ ~ tp ~ ~ ~32
execute @s[scores={random=32..}] ~ ~ ~ scoreboard players remove @s random 32
execute @s[scores={random=16..}] ~ ~ ~ tp ~ ~ ~16
execute @s[scores={random=16..}] ~ ~ ~ scoreboard players remove @s random 16
execute @s[scores={random=8..}] ~ ~ ~ tp ~ ~ ~8
execute @s[scores={random=8..}] ~ ~ ~ scoreboard players remove @s random 8
execute @s[scores={random=4..}] ~ ~ ~ tp ~ ~ ~4
execute @s[scores={random=4..}] ~ ~ ~ scoreboard players remove @s random 4
execute @s[scores={random=2..}] ~ ~ ~ tp ~ ~ ~2
execute @s[scores={random=2..}] ~ ~ ~ scoreboard players remove @s random 2
execute @s[scores={random=1..}] ~ ~ ~ tp ~ ~ ~1
execute @s[scores={random=1..}] ~ ~ ~ scoreboard players remove @s random 1
#posz_return
tellraw @s {"rawtext":[{"text":"§b已成功将您随机传送到 §f(§6"},{"score":{"objective":"posx_s","name":"@s"}},{"text":"§f,§6"},{"score":{"objective":"posz_s","name":"@s"}},{"text":"§f)"}]}
#told
tp ~ 32767 ~
scoreboard players set @s top_y 1
scoreboard objectives remove posx_s
scoreboard objectives remove posz_s
gamerule sendcommandfeedback true
#end