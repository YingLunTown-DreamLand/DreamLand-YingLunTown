gamerule sendcommandfeedback false
execute @a[tag=back] ~~~tp 0 0 0
execute @a[tag=back,scores={posx_0=-524288}] ~~~tp -524288~~
execute @a[tag=back,scores={posx_0=-524287..-1}] ~~~tp -524288~~
execute @a[tag=back,scores={posx_0=-524287..-1}] ~~~scoreboard players set posx posjs 524288
execute @a[tag=back,scores={posx_0=-524287..-1}] ~~~scoreboard players operation @s posx_0 += posx posjs
execute @a[tag=back,scores={posy_0=-256}] ~~~tp ~ -256~
execute @a[tag=back,scores={posy_0=-256..-1}] ~~~tp ~ -256~
execute @a[tag=back,scores={posy_0=-256..-1}] ~~~scoreboard players set posy posjs 256
execute @a[tag=back,scores={posy_0=-256..-1}] ~~~scoreboard players operation @s posy_0 += posy posjs
execute @a[tag=back,scores={posz_0=-524288}] ~~~tp ~~ -524288
execute @a[tag=back,scores={posz_0=-524287..-1}] ~~~tp ~~ -524288
execute @a[tag=back,scores={posz_0=-524287..-1}] ~~~scoreboard players set posz posjs 524288
execute @a[tag=back,scores={posz_0=-524287..-1}] ~~~scoreboard players operation @s posz_0 += posz posjs
#start
execute @a[tag=back,scores={posx_0=0}] ~~~tp 0~~
execute @a[tag=back,scores={posx_0=524288}] ~~~tp~524288~~
execute @a[tag=back,scores={posx_0=524288}] ~~~scoreboard players remove @s posx_0 524288
execute @a[tag=back,scores={posx_0=262144..524287}] ~~~tp~262144~~
execute @a[tag=back,scores={posx_0=262144..524287}] ~~~scoreboard players remove @s posx_0 262144
execute @a[tag=back,scores={posx_0=131072..262143}] ~~~tp~131072~~
execute @a[tag=back,scores={posx_0=131072..262143}] ~~~scoreboard players remove @s posx_0 131072
execute @a[tag=back,scores={posx_0=65536..131071}] ~~~tp~65536~~
execute @a[tag=back,scores={posx_0=65536..131071}] ~~~scoreboard players remove @s posx_0 65536
execute @a[tag=back,scores={posx_0=32768..65535}] ~~~tp~32768~~
execute @a[tag=back,scores={posx_0=32768..65535}] ~~~scoreboard players remove @s posx_0 32768
execute @a[tag=back,scores={posx_0=16384..32767}] ~~~tp~16384~~
execute @a[tag=back,scores={posx_0=16384..32767}] ~~~scoreboard players remove @s posx_0 16384
execute @a[tag=back,scores={posx_0=8192..16383}] ~~~tp~8192~~
execute @a[tag=back,scores={posx_0=8192..16383}] ~~~scoreboard players remove @s posx_0 8192
execute @a[tag=back,scores={posx_0=4096..8191}] ~~~tp~4096~~
execute @a[tag=back,scores={posx_0=4096..8191}] ~~~scoreboard players remove @s posx_0 4096
execute @a[tag=back,scores={posx_0=2048..4095}] ~~~tp~2048~~
execute @a[tag=back,scores={posx_0=2048..4095}] ~~~scoreboard players remove @s posx_0 2048
execute @a[tag=back,scores={posx_0=1024..2047}] ~~~tp~1024~~
execute @a[tag=back,scores={posx_0=1024..2047}] ~~~scoreboard players remove @s posx_0 1024
execute @a[tag=back,scores={posx_0=512..1023}] ~~~tp~512~~
execute @a[tag=back,scores={posx_0=512..1023}] ~~~scoreboard players remove @s posx_0 512
execute @a[tag=back,scores={posx_0=256..511}] ~~~tp~256~~
execute @a[tag=back,scores={posx_0=256..511}] ~~~scoreboard players remove @s posx_0 256
execute @a[tag=back,scores={posx_0=128..255}] ~~~tp~128~~
execute @a[tag=back,scores={posx_0=128..255}] ~~~scoreboard players remove @s posx_0 128
execute @a[tag=back,scores={posx_0=64..127}] ~~~tp~64~~
execute @a[tag=back,scores={posx_0=64..127}] ~~~scoreboard players remove @s posx_0 64
execute @a[tag=back,scores={posx_0=32..63}] ~~~tp~32~~
execute @a[tag=back,scores={posx_0=32..63}] ~~~scoreboard players remove @s posx_0 32
execute @a[tag=back,scores={posx_0=16..31}] ~~~tp~16~~
execute @a[tag=back,scores={posx_0=16..31}] ~~~scoreboard players remove @s posx_0 16
execute @a[tag=back,scores={posx_0=8..15}] ~~~tp~8~~
execute @a[tag=back,scores={posx_0=8..15}] ~~~scoreboard players remove @s posx_0 8
execute @a[tag=back,scores={posx_0=4..7}] ~~~tp~4~~
execute @a[tag=back,scores={posx_0=4..7}] ~~~scoreboard players remove @s posx_0 4
execute @a[tag=back,scores={posx_0=2..3}] ~~~tp~2~~
execute @a[tag=back,scores={posx_0=2..3}] ~~~scoreboard players remove @s posx_0 2
execute @a[tag=back,scores={posx_0=1}] ~~~tp~1~~
#posx
execute @a[tag=back,scores={posz_0=0}] ~~~tp ~~ 0
execute @a[tag=back,scores={posz_0=524288}] ~~~tp~~~524288
execute @a[tag=back,scores={posz_0=524288}] ~~~scoreboard players remove @s posz_0 524288
execute @a[tag=back,scores={posz_0=262144..524287}] ~~~tp~~~262144
execute @a[tag=back,scores={posz_0=262144..524287}] ~~~scoreboard players remove @s posz_0 262144
execute @a[tag=back,scores={posz_0=131072..262143}] ~~~tp~~~131072
execute @a[tag=back,scores={posz_0=131072..262143}] ~~~scoreboard players remove @s posz_0 131072
execute @a[tag=back,scores={posz_0=65536..131071}] ~~~tp~~~65536
execute @a[tag=back,scores={posz_0=65536..131071}] ~~~scoreboard players remove @s posz_0 65536
execute @a[tag=back,scores={posz_0=32768..65535}] ~~~tp~~~32768
execute @a[tag=back,scores={posz_0=32768..65535}] ~~~scoreboard players remove @s posz_0 32768
execute @a[tag=back,scores={posz_0=16384..32767}] ~~~tp~~~16384
execute @a[tag=back,scores={posz_0=16384..32767}] ~~~scoreboard players remove @s posz_0 16384
execute @a[tag=back,scores={posz_0=8192..16383}] ~~~tp~~~8192
execute @a[tag=back,scores={posz_0=8192..16383}] ~~~scoreboard players remove @s posz_0 8192
execute @a[tag=back,scores={posz_0=4096..8191}] ~~~tp~~~4096
execute @a[tag=back,scores={posz_0=4096..8191}] ~~~scoreboard players remove @s posz_0 4096
execute @a[tag=back,scores={posz_0=2048..4095}] ~~~tp~~~2048
execute @a[tag=back,scores={posz_0=2048..4095}] ~~~scoreboard players remove @s posz_0 2048
execute @a[tag=back,scores={posz_0=1024..2047}] ~~~tp~~~1024
execute @a[tag=back,scores={posz_0=1024..2047}] ~~~scoreboard players remove @s posz_0 1024
execute @a[tag=back,scores={posz_0=512..1023}] ~~~tp~~~512
execute @a[tag=back,scores={posz_0=512..1023}] ~~~scoreboard players remove @s posz_0 512
execute @a[tag=back,scores={posz_0=256..511}] ~~~tp~~~256
execute @a[tag=back,scores={posz_0=256..511}] ~~~scoreboard players remove @s posz_0 256
execute @a[tag=back,scores={posz_0=128..255}] ~~~tp~~~128
execute @a[tag=back,scores={posz_0=128..255}] ~~~scoreboard players remove @s posz_0 128
execute @a[tag=back,scores={posz_0=64..127}] ~~~tp~~~64
execute @a[tag=back,scores={posz_0=64..127}] ~~~scoreboard players remove @s posz_0 64
execute @a[tag=back,scores={posz_0=32..63}] ~~~tp~~~32
execute @a[tag=back,scores={posz_0=32..63}] ~~~scoreboard players remove @s posz_0 32
execute @a[tag=back,scores={posz_0=16..31}] ~~~tp~~~16
execute @a[tag=back,scores={posz_0=16..31}] ~~~scoreboard players remove @s posz_0 16
execute @a[tag=back,scores={posz_0=8..15}] ~~~tp~~~8
execute @a[tag=back,scores={posz_0=8..15}] ~~~scoreboard players remove @s posz_0 8
execute @a[tag=back,scores={posz_0=4..7}] ~~~tp~~~4
execute @a[tag=back,scores={posz_0=4..7}] ~~~scoreboard players remove @s posz_0 4
execute @a[tag=back,scores={posz_0=2..3}] ~~~tp~~~2
execute @a[tag=back,scores={posz_0=2..3}] ~~~scoreboard players remove @s posz_0 2
execute @a[tag=back,scores={posz_0=1}] ~~~tp~~~1
#posz
execute @a[tag=back,scores={posy_0=0}] ~~~tp ~ 0~
execute @a[tag=back,scores={posy_0=256}] ~~~tp~~256
execute @a[tag=back,scores={posy_0=256}] ~~~scoreboard players remove @s posy_0 256
execute @a[tag=back,scores={posy_0=128..255}] ~~~tp~~128~
execute @a[tag=back,scores={posy_0=128..255}] ~~~scoreboard players remove @s posy_0 128
execute @a[tag=back,scores={posy_0=64..127}] ~~~tp~~64~
execute @a[tag=back,scores={posy_0=64..127}] ~~~scoreboard players remove @s posy_0 64
execute @a[tag=back,scores={posy_0=32..63}] ~~~tp~~32~
execute @a[tag=back,scores={posy_0=32..63}] ~~~scoreboard players remove @s posy_0 32
execute @a[tag=back,scores={posy_0=16..31}] ~~~tp~~16~
execute @a[tag=back,scores={posy_0=16..31}] ~~~scoreboard players remove @s posy_0 16
execute @a[tag=back,scores={posy_0=8..15}] ~~~tp~~8~
execute @a[tag=back,scores={posy_0=8..15}] ~~~scoreboard players remove @s posy_0 8
execute @a[tag=back,scores={posy_0=4..7}] ~~~tp~~4~
execute @a[tag=back,scores={posy_0=4..7}] ~~~scoreboard players remove @s posy_0 4
execute @a[tag=back,scores={posy_0=2..3}] ~~~tp~~2~
execute @a[tag=back,scores={posy_0=2..3}] ~~~scoreboard players remove @s posy_0 2
execute @a[tag=back,scores={posy_0=1}] ~~~tp~~1~
#posy
execute @a[tag=back] ~~~scoreboard players reset @s posx_0
execute @a[tag=back] ~~~scoreboard players reset @s posy_0
execute @a[tag=back] ~~~scoreboard players reset @s posz_0
tellraw @a[tag=back,tag=!random_pos] {"rawtext":[{"text":"§a已成功返回死亡点§f！"}]}
execute @a[tag=back] ~~~tag @s add timejs
tag @a[tag=back] remove back
#END
gamerule sendcommandfeedback true
#END_0
scoreboard players add @a[tag=timejs] timejs 0
scoreboard players add @a[tag=timejs,scores={timejs=0..6}] timejs 1
execute @a[scores={timejs=7..},tag=!非自然的] ~~~playsound random.levelup
tag @a[tag=timejs,scores={timejs=7..},tag=非自然的] remove 非自然的
tag @a[tag=timejs,scores={timejs=7..}] remove timejs
scoreboard players reset @a[scores={timejs=7..}] timejs
#timejs