execute @a[tag=posz] ~~~scoreboard players reset * posz
execute @a[tag=posz] ~~~summon armor_stand posz
execute @a[tag=posz] ~~~summon armor_stand replace_player
//0
execute @e[name=replace_player] ~~~tag @s add posz
tag @a[tag=posz,tag=!posz_broow] add posz_broow
tag @a[tag=posz,tag=posz_broow] remove posz
//1
tag @e[tag=posz,tag=!test_posz_false] add test_posz_false
execute @e[tag=test_posz_false,tag=posz] ~~~execute @s[dz=0] ~~~tag @s remove test_posz_false
execute @e[tag=test_posz_false,tag=posz] ~~~tp~~-0.001~
//2
execute @e[tag=posz] ~~~execute @e[name=posz] ~~~tp ~~ 0.0
//3
execute @e[tag=posz] ~~~execute @s[z=-524288,dz=524287] ~~~tag @s add posz_small
execute @e[tag=posz,tag=posz_small] ~~~tp ~~~524288
//4
execute @e[name=posz] ~~~execute @e[z=~524288,dz=0,tag=posz,y=~-0.001] ~~~scoreboard players add @e[name=posz] posz 524288
execute @e[name=posz] ~~~execute @e[x=~524288,dz=0,tag=posz,y=~-0.001] ~~~execute @e[name=posz] ~~~tp~~~524288
execute @e[tag=posz] ~~~execute @s[z=0,dz=0] ~~~scoreboard players set @e[name=posz] posz 0
//5
execute @e[name=posz] ~~~execute @e[tag=posz,r=524288,rm=262144] ~~~execute @e[name=posz] ~~~execute @e[tag=posz,r=524287.999999,rm=262143.999999] ~~~scoreboard players add @e[name=posz] posz 262144
execute @e[name=posz] ~~~execute @e[tag=posz,r=524288,rm=262144] ~~~execute @e[name=posz] ~~~execute @e[tag=posz,r=524287.999999,rm=262143.999999] ~~~execute @e[name=posz] ~~~tp~~~262144
//6
execute @e[name=posz] ~~~execute @e[tag=posz,r=262144,rm=131072] ~~~execute @e[name=posz] ~~~execute @e[tag=posz,r=262143.999999,rm=131071.999999] ~~~scoreboard players add @e[name=posz] posz 131072
execute @e[name=posz] ~~~execute @e[tag=posz,r=262144,rm=131072] ~~~execute @e[name=posz] ~~~execute @e[tag=posz,r=262143.999999,rm=131071.999999] ~~~execute @e[name=posz] ~~~tp~~~131072
//7
execute @e[name=posz] ~~~execute @e[tag=posz,r=131072,rm=65536] ~~~execute @e[name=posz] ~~~execute @e[tag=posz,r=131071.999999,rm=65535.999999] ~~~scoreboard players add @e[name=posz] posz 65536
execute @e[name=posz] ~~~execute @e[tag=posz,r=131072,rm=65536] ~~~execute @e[name=posz] ~~~execute @e[tag=posz,r=131071.999999,rm=65535.999999] ~~~execute @e[name=posz] ~~~tp~~~65536
//8
execute @e[name=posz] ~~~execute @e[tag=posz,r=65536,rm=32768] ~~~execute @e[name=posz] ~~~execute @e[tag=posz,r=65535.999999,rm=32767.999999] ~~~scoreboard players add @e[name=posz] posz 32768
execute @e[name=posz] ~~~execute @e[tag=posz,r=65536,rm=32768] ~~~execute @e[name=posz] ~~~execute @e[tag=posz,r=65535.999999,rm=32767.999999] ~~~execute @e[name=posz] ~~~tp~~~32768
//9
execute @e[name=posz] ~~~execute @e[tag=posz,r=32768,rm=16384] ~~~execute @e[name=posz] ~~~execute @e[tag=posz,r=32767.999999,rm=16383.999999] ~~~scoreboard players add @e[name=posz] posz 16384
execute @e[name=posz] ~~~execute @e[tag=posz,r=32768,rm=16384] ~~~execute @e[name=posz] ~~~execute @e[tag=posz,r=32767.999999,rm=16383.999999] ~~~execute @e[name=posz] ~~~tp~~~16384
//10
execute @e[name=posz] ~~~execute @e[tag=posz,r=16384,rm=8192] ~~~execute @e[name=posz] ~~~execute @e[tag=posz,r=16383.999999,rm=8191.999999] ~~~scoreboard players add @e[name=posz] posz 8192
execute @e[name=posz] ~~~execute @e[tag=posz,r=16384,rm=8192] ~~~execute @e[name=posz] ~~~execute @e[tag=posz,r=16383.999999,rm=8191.999999] ~~~execute @e[name=posz] ~~~tp~~~8192
//11
execute @e[name=posz] ~~~execute @e[tag=posz,r=8192,rm=4096] ~~~execute @e[name=posz] ~~~execute @e[tag=posz,r=8191.999999,rm=4095.999999] ~~~scoreboard players add @e[name=posz] posz 4096
execute @e[name=posz] ~~~execute @e[tag=posz,r=8192,rm=4096] ~~~execute @e[name=posz] ~~~execute @e[tag=posz,r=8191.999999,rm=4095.999999] ~~~execute @e[name=posz] ~~~tp~~~4096
//12
execute @e[name=posz] ~~~execute @e[tag=posz,r=4096,rm=2048] ~~~execute @e[name=posz] ~~~execute @e[tag=posz,r=4095.999999,rm=2047.999999] ~~~scoreboard players add @e[name=posz] posz 2048
execute @e[name=posz] ~~~execute @e[tag=posz,r=4096,rm=2048] ~~~execute @e[name=posz] ~~~execute @e[tag=posz,r=4095.999999,rm=2047.999999] ~~~execute @e[name=posz] ~~~tp~~~2048
//13
execute @e[name=posz] ~~~execute @e[tag=posz,r=2048,rm=1024] ~~~execute @e[name=posz] ~~~execute @e[tag=posz,r=2047.999999,rm=1023.999999] ~~~scoreboard players add @e[name=posz] posz 1024
execute @e[name=posz] ~~~execute @e[tag=posz,r=2048,rm=1024] ~~~execute @e[name=posz] ~~~execute @e[tag=posz,r=2047.999999,rm=1023.999999] ~~~execute @e[name=posz] ~~~tp~~~1024
//14
execute @e[name=posz] ~~~execute @e[tag=posz,r=1024,rm=512] ~~~execute @e[name=posz] ~~~execute @e[tag=posz,r=1023.999999,rm=511.999999] ~~~scoreboard players add @e[name=posz] posz 512
execute @e[name=posz] ~~~execute @e[tag=posz,r=1024,rm=512] ~~~execute @e[name=posz] ~~~execute @e[tag=posz,r=1023.999999,rm=511.999999] ~~~execute @e[name=posz] ~~~tp~~~512
//15
execute @e[name=posz] ~~~execute @e[tag=posz,r=512,rm=256] ~~~execute @e[name=posz] ~~~execute @e[tag=posz,r=511.999999,rm=255.999999] ~~~scoreboard players add @e[name=posz] posz 256
execute @e[name=posz] ~~~execute @e[tag=posz,r=512,rm=256] ~~~execute @e[name=posz] ~~~execute @e[tag=posz,r=511.999999,rm=255.999999] ~~~execute @e[name=posz] ~~~tp~~~256
//16
execute @e[name=posz] ~~~execute @e[tag=posz,r=256,rm=128] ~~~execute @e[name=posz] ~~~execute @e[tag=posz,r=255.999999,rm=127.999999] ~~~scoreboard players add @e[name=posz] posz 128
execute @e[name=posz] ~~~execute @e[tag=posz,r=256,rm=128] ~~~execute @e[name=posz] ~~~execute @e[tag=posz,r=255.999999,rm=127.999999] ~~~execute @e[name=posz] ~~~tp~~~128
//17
execute @e[name=posz] ~~~execute @e[tag=posz,r=128,rm=64] ~~~execute @e[name=posz] ~~~execute @e[tag=posz,r=127.999999,rm=63.999999] ~~~scoreboard players add @e[name=posz] posz 64
execute @e[name=posz] ~~~execute @e[tag=posz,r=128,rm=64] ~~~execute @e[name=posz] ~~~execute @e[tag=posz,r=127.999999,rm=63.999999] ~~~execute @e[name=posz] ~~~tp~~~64
//18
execute @e[name=posz] ~~~execute @e[tag=posz,r=64,rm=32] ~~~execute @e[name=posz] ~~~execute @e[tag=posz,r=63.999999,rm=31.999999] ~~~scoreboard players add @e[name=posz] posz 32
execute @e[name=posz] ~~~execute @e[tag=posz,r=64,rm=32] ~~~execute @e[name=posz] ~~~execute @e[tag=posz,r=63.999999,rm=31.999999] ~~~execute @e[name=posz] ~~~tp~~~32
//19
execute @e[name=posz] ~~~execute @e[tag=posz,r=32,rm=16] ~~~execute @e[name=posz] ~~~execute @e[tag=posz,r=31.999999,rm=15.999999] ~~~scoreboard players add @e[name=posz] posz 16
execute @e[name=posz] ~~~execute @e[tag=posz,r=32,rm=16] ~~~execute @e[name=posz] ~~~execute @e[tag=posz,r=31.999999,rm=15.999999] ~~~execute @e[name=posz] ~~~tp~~~16
//20
execute @e[name=posz] ~~~execute @e[tag=posz,r=16,rm=8] ~~~execute @e[name=posz] ~~~execute @e[tag=posz,r=15.999999,rm=7.999999] ~~~scoreboard players add @e[name=posz] posz 8
execute @e[name=posz] ~~~execute @e[tag=posz,r=16,rm=8] ~~~execute @e[name=posz] ~~~execute @e[tag=posz,r=15.999999,rm=7.999999] ~~~execute @e[name=posz] ~~~tp~~~8
//21
execute @e[name=posz] ~~~execute @e[tag=posz,r=8,rm=4] ~~~execute @e[name=posz] ~~~execute @e[tag=posz,r=7.999999,rm=3.999999] ~~~scoreboard players add @e[name=posz] posz 4
execute @e[name=posz] ~~~execute @e[tag=posz,r=8,rm=4] ~~~execute @e[name=posz] ~~~execute @e[tag=posz,r=7.999999,rm=3.999999] ~~~execute @e[name=posz] ~~~tp~~~4
//22
execute @e[name=posz] ~~~execute @e[tag=posz,r=4,rm=2] ~~~execute @e[name=posz] ~~~execute @e[tag=posz,r=3.999999,rm=1.999999] ~~~scoreboard players add @e[name=posz] posz 2
execute @e[name=posz] ~~~execute @e[tag=posz,r=4,rm=2] ~~~execute @e[name=posz] ~~~execute @e[tag=posz,r=3.999999,rm=1.999999] ~~~execute @e[name=posz] ~~~tp~~~2
//23
execute @e[name=posz] ~~~execute @e[tag=posz,r=2,rm=1] ~~~execute @e[name=posz] ~~~execute @e[tag=posz,r=1.999999,rm=0.999999] ~~~scoreboard players add @e[name=posz] posz 1
execute @e[name=posz] ~~~execute @e[tag=posz,r=2,rm=1] ~~~execute @e[name=posz] ~~~execute @e[tag=posz,r=1.999999,rm=0.999999] ~~~execute @e[name=posz] ~~~tp~~~1
//24
execute @e[tag=posz,tag=posz_small] ~~~scoreboard players set posz posz -524288
execute @e[tag=posz,tag=posz_small] ~~~scoreboard players operation @e[name=posz] posz += posz posz
execute @e[tag=posz] ~~~scoreboard players operation @a[tag=posz_broow] posz_0 = @e[name=posz] posz
//25
tp @e[name=posz] 0 32767 0
kill @e[name=posz]
tp @e[name=replace_player] 0 32767 0
kill @e[name=replace_player]
//26
tag @a[tag=posz_broow] remove posz_broow
//27
execute @a[tag=wantpos,c=1] ~~~function random
//28