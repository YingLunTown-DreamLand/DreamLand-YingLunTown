execute @a[tag=posx] ~~~scoreboard players reset * posx
execute @a[tag=posx] ~~~summon armor_stand posx
execute @a[tag=posx] ~~~summon armor_stand replace_player
//0
execute @e[name=replace_player] ~~~tag @s add posx
tag @a[tag=posx,tag=!posx_broow] add posx_broow
tag @a[tag=posx,tag=posx_broow] remove posx
//1
tag @e[tag=posx,tag=!test_posx_false] add test_posx_false
execute @e[tag=test_posx_false,tag=posx] ~~~execute @s[dx=0] ~~~tag @s remove test_posx_false
execute @e[tag=test_posx_false,tag=posx] ~~~tp~~-0.001~
//2
execute @e[tag=posx] ~~~execute @e[name=posx] ~~~tp 0.0~~
//3
execute @e[tag=posx] ~~~execute @s[x=-524288,dx=524287] ~~~tag @s add posx_small
execute @e[tag=posx,tag=posx_small] ~~~tp ~524288~~
//4
execute @e[name=posx] ~~~execute @e[x=~524288,dx=0,tag=posx,y=~-0.001] ~~~scoreboard players add @e[name=posx] posx 524288
execute @e[name=posx] ~~~execute @e[x=~524288,dx=0,tag=posx,y=~-0.001] ~~~execute @e[name=posx] ~~~tp~524288~~
execute @e[tag=posx] ~~~execute @s[x=0,dx=0] ~~~scoreboard players set @e[name=posx] posx 0
//5
execute @e[name=posx] ~~~execute @e[tag=posx,r=524288,rm=262144] ~~~execute @e[name=posx] ~~~execute @e[tag=posx,r=524287.999999,rm=262143.999999] ~~~scoreboard players add @e[name=posx] posx 262144
execute @e[name=posx] ~~~execute @e[tag=posx,r=524288,rm=262144] ~~~execute @e[name=posx] ~~~execute @e[tag=posx,r=524287.999999,rm=262143.999999] ~~~execute @e[name=posx] ~~~tp~262144~~
//6
execute @e[name=posx] ~~~execute @e[tag=posx,r=262144,rm=131072] ~~~execute @e[name=posx] ~~~execute @e[tag=posx,r=262143.999999,rm=131071.999999] ~~~scoreboard players add @e[name=posx] posx 131072
execute @e[name=posx] ~~~execute @e[tag=posx,r=262144,rm=131072] ~~~execute @e[name=posx] ~~~execute @e[tag=posx,r=262143.999999,rm=131071.999999] ~~~execute @e[name=posx] ~~~tp~131072~~
//7
execute @e[name=posx] ~~~execute @e[tag=posx,r=131072,rm=65536] ~~~execute @e[name=posx] ~~~execute @e[tag=posx,r=131071.999999,rm=65535.999999] ~~~scoreboard players add @e[name=posx] posx 65536
execute @e[name=posx] ~~~execute @e[tag=posx,r=131072,rm=65536] ~~~execute @e[name=posx] ~~~execute @e[tag=posx,r=131071.999999,rm=65535.999999] ~~~execute @e[name=posx] ~~~tp~65536~~
//8
execute @e[name=posx] ~~~execute @e[tag=posx,r=65536,rm=32768] ~~~execute @e[name=posx] ~~~execute @e[tag=posx,r=65535.999999,rm=32767.999999] ~~~scoreboard players add @e[name=posx] posx 32768
execute @e[name=posx] ~~~execute @e[tag=posx,r=65536,rm=32768] ~~~execute @e[name=posx] ~~~execute @e[tag=posx,r=65535.999999,rm=32767.999999] ~~~execute @e[name=posx] ~~~tp~32768~~
//9
execute @e[name=posx] ~~~execute @e[tag=posx,r=32768,rm=16384] ~~~execute @e[name=posx] ~~~execute @e[tag=posx,r=32767.999999,rm=16383.999999] ~~~scoreboard players add @e[name=posx] posx 16384
execute @e[name=posx] ~~~execute @e[tag=posx,r=32768,rm=16384] ~~~execute @e[name=posx] ~~~execute @e[tag=posx,r=32767.999999,rm=16383.999999] ~~~execute @e[name=posx] ~~~tp~16384~~
//10
execute @e[name=posx] ~~~execute @e[tag=posx,r=16384,rm=8192] ~~~execute @e[name=posx] ~~~execute @e[tag=posx,r=16383.999999,rm=8191.999999] ~~~scoreboard players add @e[name=posx] posx 8192
execute @e[name=posx] ~~~execute @e[tag=posx,r=16384,rm=8192] ~~~execute @e[name=posx] ~~~execute @e[tag=posx,r=16383.999999,rm=8191.999999] ~~~execute @e[name=posx] ~~~tp~8192~~
//11
execute @e[name=posx] ~~~execute @e[tag=posx,r=8192,rm=4096] ~~~execute @e[name=posx] ~~~execute @e[tag=posx,r=8191.999999,rm=4095.999999] ~~~scoreboard players add @e[name=posx] posx 4096
execute @e[name=posx] ~~~execute @e[tag=posx,r=8192,rm=4096] ~~~execute @e[name=posx] ~~~execute @e[tag=posx,r=8191.999999,rm=4095.999999] ~~~execute @e[name=posx] ~~~tp~4096~~
//12
execute @e[name=posx] ~~~execute @e[tag=posx,r=4096,rm=2048] ~~~execute @e[name=posx] ~~~execute @e[tag=posx,r=4095.999999,rm=2047.999999] ~~~scoreboard players add @e[name=posx] posx 2048
execute @e[name=posx] ~~~execute @e[tag=posx,r=4096,rm=2048] ~~~execute @e[name=posx] ~~~execute @e[tag=posx,r=4095.999999,rm=2047.999999] ~~~execute @e[name=posx] ~~~tp~2048~~
//13
execute @e[name=posx] ~~~execute @e[tag=posx,r=2048,rm=1024] ~~~execute @e[name=posx] ~~~execute @e[tag=posx,r=2047.999999,rm=1023.999999] ~~~scoreboard players add @e[name=posx] posx 1024
execute @e[name=posx] ~~~execute @e[tag=posx,r=2048,rm=1024] ~~~execute @e[name=posx] ~~~execute @e[tag=posx,r=2047.999999,rm=1023.999999] ~~~execute @e[name=posx] ~~~tp~1024~~
//14
execute @e[name=posx] ~~~execute @e[tag=posx,r=1024,rm=512] ~~~execute @e[name=posx] ~~~execute @e[tag=posx,r=1023.999999,rm=511.999999] ~~~scoreboard players add @e[name=posx] posx 512
execute @e[name=posx] ~~~execute @e[tag=posx,r=1024,rm=512] ~~~execute @e[name=posx] ~~~execute @e[tag=posx,r=1023.999999,rm=511.999999] ~~~execute @e[name=posx] ~~~tp~512~~
//15
execute @e[name=posx] ~~~execute @e[tag=posx,r=512,rm=256] ~~~execute @e[name=posx] ~~~execute @e[tag=posx,r=511.999999,rm=255.999999] ~~~scoreboard players add @e[name=posx] posx 256
execute @e[name=posx] ~~~execute @e[tag=posx,r=512,rm=256] ~~~execute @e[name=posx] ~~~execute @e[tag=posx,r=511.999999,rm=255.999999] ~~~execute @e[name=posx] ~~~tp~256~~
//16
execute @e[name=posx] ~~~execute @e[tag=posx,r=256,rm=128] ~~~execute @e[name=posx] ~~~execute @e[tag=posx,r=255.999999,rm=127.999999] ~~~scoreboard players add @e[name=posx] posx 128
execute @e[name=posx] ~~~execute @e[tag=posx,r=256,rm=128] ~~~execute @e[name=posx] ~~~execute @e[tag=posx,r=255.999999,rm=127.999999] ~~~execute @e[name=posx] ~~~tp~128~~
//17
execute @e[name=posx] ~~~execute @e[tag=posx,r=128,rm=64] ~~~execute @e[name=posx] ~~~execute @e[tag=posx,r=127.999999,rm=63.999999] ~~~scoreboard players add @e[name=posx] posx 64
execute @e[name=posx] ~~~execute @e[tag=posx,r=128,rm=64] ~~~execute @e[name=posx] ~~~execute @e[tag=posx,r=127.999999,rm=63.999999] ~~~execute @e[name=posx] ~~~tp~64~~
//18
execute @e[name=posx] ~~~execute @e[tag=posx,r=64,rm=32] ~~~execute @e[name=posx] ~~~execute @e[tag=posx,r=63.999999,rm=31.999999] ~~~scoreboard players add @e[name=posx] posx 32
execute @e[name=posx] ~~~execute @e[tag=posx,r=64,rm=32] ~~~execute @e[name=posx] ~~~execute @e[tag=posx,r=63.999999,rm=31.999999] ~~~execute @e[name=posx] ~~~tp~32~~
//19
execute @e[name=posx] ~~~execute @e[tag=posx,r=32,rm=16] ~~~execute @e[name=posx] ~~~execute @e[tag=posx,r=31.999999,rm=15.999999] ~~~scoreboard players add @e[name=posx] posx 16
execute @e[name=posx] ~~~execute @e[tag=posx,r=32,rm=16] ~~~execute @e[name=posx] ~~~execute @e[tag=posx,r=31.999999,rm=15.999999] ~~~execute @e[name=posx] ~~~tp~16~~
//20
execute @e[name=posx] ~~~execute @e[tag=posx,r=16,rm=8] ~~~execute @e[name=posx] ~~~execute @e[tag=posx,r=15.999999,rm=7.999999] ~~~scoreboard players add @e[name=posx] posx 8
execute @e[name=posx] ~~~execute @e[tag=posx,r=16,rm=8] ~~~execute @e[name=posx] ~~~execute @e[tag=posx,r=15.999999,rm=7.999999] ~~~execute @e[name=posx] ~~~tp~8~~
//21
execute @e[name=posx] ~~~execute @e[tag=posx,r=8,rm=4] ~~~execute @e[name=posx] ~~~execute @e[tag=posx,r=7.999999,rm=3.999999] ~~~scoreboard players add @e[name=posx] posx 4
execute @e[name=posx] ~~~execute @e[tag=posx,r=8,rm=4] ~~~execute @e[name=posx] ~~~execute @e[tag=posx,r=7.999999,rm=3.999999] ~~~execute @e[name=posx] ~~~tp~4~~
//22
execute @e[name=posx] ~~~execute @e[tag=posx,r=4,rm=2] ~~~execute @e[name=posx] ~~~execute @e[tag=posx,r=3.999999,rm=1.999999] ~~~scoreboard players add @e[name=posx] posx 2
execute @e[name=posx] ~~~execute @e[tag=posx,r=4,rm=2] ~~~execute @e[name=posx] ~~~execute @e[tag=posx,r=3.999999,rm=1.999999] ~~~execute @e[name=posx] ~~~tp~2~~
//23
execute @e[name=posx] ~~~execute @e[tag=posx,r=2,rm=1] ~~~execute @e[name=posx] ~~~execute @e[tag=posx,r=1.999999,rm=0.999999] ~~~scoreboard players add @e[name=posx] posx 1
execute @e[name=posx] ~~~execute @e[tag=posx,r=2,rm=1] ~~~execute @e[name=posx] ~~~execute @e[tag=posx,r=1.999999,rm=0.999999] ~~~execute @e[name=posx] ~~~tp~1~~
//24
execute @e[tag=posx,tag=posx_small] ~~~scoreboard players set posx posx -524288
execute @e[tag=posx,tag=posx_small] ~~~scoreboard players operation @e[name=posx] posx += posx posx
execute @e[tag=posx] ~~~scoreboard players operation @a[tag=posx_broow] posx_0 = @e[name=posx] posx
//25
tp @e[name=posx] 0 32767 0
kill @e[name=posx]
tp @e[name=replace_player] 0 32767 0
kill @e[name=replace_player]
//26
tag @a[tag=posx_broow] remove posx_broow
//27
function posy
//28