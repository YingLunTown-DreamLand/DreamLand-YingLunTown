scoreboard players add @s posy_0 10000000
//prepare
execute @s[scores={posy_0=256000000..}] ~~~tp~~256~
scoreboard players remove @s[scores={posy_0=256000000..}] posy_0 256000000
#1
execute @s[scores={posy_0=128000000..}] ~~~tp~~128~
scoreboard players remove @s[scores={posy_0=128000000..}] posy_0 128000000
#2
execute @s[scores={posy_0=64000000..}] ~~~tp~~64~
scoreboard players remove @s[scores={posy_0=64000000..}] posy_0 64000000
#3
execute @s[scores={posy_0=32000000..}] ~~~tp~~32~
scoreboard players remove @s[scores={posy_0=32000000..}] posy_0 32000000
#4
execute @s[scores={posy_0=16000000..}] ~~~tp~~16~
scoreboard players remove @s[scores={posy_0=16000000..}] posy_0 16000000
#5
execute @s[scores={posy_0=8000000..}] ~~~tp~~8~
scoreboard players remove @s[scores={posy_0=8000000..}] posy_0 8000000
#6
execute @s[scores={posy_0=4000000..}] ~~~tp~~4~
scoreboard players remove @s[scores={posy_0=4000000..}] posy_0 4000000
#7
execute @s[scores={posy_0=2000000..}] ~~~tp~~2~
scoreboard players remove @s[scores={posy_0=2000000..}] posy_0 2000000
#8
execute @s[scores={posy_0=1000000..}] ~~~tp~~1~
scoreboard players remove @s[scores={posy_0=1000000..}] posy_0 1000000
#9
//return_zs_posy
execute @s[scores={posy_0=524288..}] ~~~tp~~0.524288~
scoreboard players remove @s[scores={posy_0=524288..}] posy_0 524288
#1
execute @s[scores={posy_0=262144..}] ~~~tp~~0.262144~
scoreboard players remove @s[scores={posy_0=262144..}] posy_0 262144
#2
execute @s[scores={posy_0=131072..}] ~~~tp~~0.131072~
scoreboard players remove @s[scores={posy_0=131072..}] posy_0 131072
#3
execute @s[scores={posy_0=65536..}] ~~~tp~~0.065536~
scoreboard players remove @s[scores={posy_0=65536..}] posy_0 65536
#4
execute @s[scores={posy_0=32768..}] ~~~tp~~0.032768~
scoreboard players remove @s[scores={posy_0=32768..}] posy_0 32768
#5
execute @s[scores={posy_0=16384..}] ~~~tp~~0.016384~
scoreboard players remove @s[scores={posy_0=16384..}] posy_0 16384
#6
execute @s[scores={posy_0=8192..}] ~~~tp~~0.008192~
scoreboard players remove @s[scores={posy_0=8192..}] posy_0 8192
#7
execute @s[scores={posy_0=4096..}] ~~~tp~~0.004096~
scoreboard players remove @s[scores={posy_0=4096..}] posy_0 4096
#8
execute @s[scores={posy_0=2048..}] ~~~tp~~0.002048~
scoreboard players remove @s[scores={posy_0=2048..}] posy_0 2048
#9
execute @s[scores={posy_0=1024..}] ~~~tp~~0.001024~
scoreboard players remove @s[scores={posy_0=1024..}] posy_0 1024
#10
execute @s[scores={posy_0=512..}] ~~~tp~~0.000512~
scoreboard players remove @s[scores={posy_0=512..}] posy_0 512
#11
execute @s[scores={posy_0=256..}] ~~~tp~~0.000256~
scoreboard players remove @s[scores={posy_0=256..}] posy_0 256
#12
execute @s[scores={posy_0=128..}] ~~~tp~~0.000128~
scoreboard players remove @s[scores={posy_0=128..}] posy_0 128
#13
execute @s[scores={posy_0=64..}] ~~~tp~~0.000064~
scoreboard players remove @s[scores={posy_0=64..}] posy_0 64
#14
execute @s[scores={posy_0=32..}] ~~~tp~~0.000032~
scoreboard players remove @s[scores={posy_0=32..}] posy_0 32
#15
execute @s[scores={posy_0=16..}] ~~~tp~~0.000016~
scoreboard players remove @s[scores={posy_0=16..}] posy_0 16
#16
execute @s[scores={posy_0=8..}] ~~~tp~~0.000008~
scoreboard players remove @s[scores={posy_0=8..}] posy_0 8
#17
execute @s[scores={posy_0=4..}] ~~~tp~~0.000004~
scoreboard players remove @s[scores={posy_0=4..}] posy_0 4
#18
execute @s[scores={posy_0=2..}] ~~~tp~~0.000002~
scoreboard players remove @s[scores={posy_0=2..}] posy_0 2
#19
execute @s[scores={posy_0=1..}] ~~~tp~~0.000001~
scoreboard players remove @s[scores={posy_0=1..}] posy_0 1
#20
//return_xs_posy
tp ~ ~-10 ~
//return_more_posy
scoreboard players reset @s posy_0
//scores_reset