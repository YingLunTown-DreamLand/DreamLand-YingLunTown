execute @a[tag=posy] ~~~scoreboard players reset * posy
execute @a[tag=posy] ~~~summon armor_stand posy
execute @a[tag=posy] ~~~summon armor_stand replace_player
//0
execute @e[name=replace_player] ~~~tag @s add posy
tag @a[tag=posy,tag=!posy_broow] add posy_broow
tag @a[tag=posy,tag=posy_broow] remove posy
//1
tag @e[tag=posy,tag=!test_posy_false] add test_posy_false
execute @e[tag=test_posy_false,tag=posy] ~~~execute @s[dy=0] ~~~tag @s remove test_posy_false
execute @e[tag=test_posy_false,tag=posy] ~~~tp~~-0.001~
//2
execute @e[tag=posy] ~~~execute @e[name=posy] ~~~tp ~ 513.0~
//3
execute @e[tag=posy] ~~~tp~~513~
//4
execute @e[tag=posy] ~~~execute @s[y=257,dy=255] ~~~tag @s add posy_small
execute @e[tag=posy,tag=posy_small] ~~~tp ~~256~
//5
execute @e[name=posy] ~~~execute @e[y=~256,dy=0,tag=posy] ~~~scoreboard players add @e[name=posy] posy 256
execute @e[name=posy] ~~~execute @e[y=~256,dy=0,tag=posy] ~~~execute @e[name=posy] ~~~tp~~256~
execute @e[tag=posy] ~~~execute @s[y=513,dy=0] ~~~scoreboard players set @e[name=posy] posy 0
//6
execute @e[name=posy] ~~~execute @e[tag=posy,r=256,rm=128] ~~~execute @e[name=posy] ~~~execute @e[tag=posy,r=255.999999,rm=127.999999] ~~~scoreboard players add @e[name=posy] posy 128
execute @e[name=posy] ~~~execute @e[tag=posy,r=256,rm=128] ~~~execute @e[name=posy] ~~~execute @e[tag=posy,r=255.999999,rm=127.999999] ~~~execute @e[name=posy] ~~~tp~~128~
//7
execute @e[name=posy] ~~~execute @e[y=~1,tag=posy,r=127,rm=63] ~~~execute @e[name=posy] ~~~execute @e[tag=posy,r=127.999999,rm=63.999999] ~~~tag @e[name=posy] add sp
execute @e[tag=sp] ~~~scoreboard players add @s posy 63
execute @e[tag=sp] ~~~scoreboard players add @s posy 1
execute @e[tag=sp] ~~~tp~~63~
execute @e[tag=sp] ~~~tp~~1~
//8
execute @e[name=posy] ~~~execute @e[y=~1,tag=posy,r=63,rm=31] ~~~execute @e[name=posy] ~~~execute @e[tag=posy,r=63.999999,rm=31.999999] ~~~scoreboard players add @e[name=posy] posy 32
execute @e[name=posy] ~~~execute @e[y=~1,tag=posy,r=63,rm=31] ~~~execute @e[name=posy] ~~~execute @e[tag=posy,r=63.999999,rm=31.999999] ~~~execute @e[name=posy] ~~~tp~~32~
//9
execute @e[name=posy] ~~~execute @e[tag=posy,r=32,rm=16] ~~~execute @e[name=posy] ~~~execute @e[tag=posy,r=31.999999,rm=15.999999] ~~~scoreboard players add @e[name=posy] posy 16
execute @e[name=posy] ~~~execute @e[tag=posy,r=32,rm=16] ~~~execute @e[name=posy] ~~~execute @e[tag=posy,r=31.999999,rm=15.999999] ~~~execute @e[name=posy] ~~~tp~~16~
//10
execute @e[name=posy] ~~~execute @e[tag=posy,r=16,rm=8] ~~~execute @e[name=posy] ~~~execute @e[tag=posy,r=15.999999,rm=7.999999] ~~~scoreboard players add @e[name=posy] posy 8
execute @e[name=posy] ~~~execute @e[tag=posy,r=16,rm=8] ~~~execute @e[name=posy] ~~~execute @e[tag=posy,r=15.999999,rm=7.999999] ~~~execute @e[name=posy] ~~~tp~~8~
//11
execute @e[name=posy] ~~~execute @e[tag=posy,r=8,rm=4] ~~~execute @e[name=posy] ~~~execute @e[tag=posy,r=7.999999,rm=3.999999] ~~~scoreboard players add @e[name=posy] posy 4
execute @e[name=posy] ~~~execute @e[tag=posy,r=8,rm=4] ~~~execute @e[name=posy] ~~~execute @e[tag=posy,r=7.999999,rm=3.999999] ~~~execute @e[name=posy] ~~~tp~~4~
//12
execute @e[name=posy] ~~~execute @e[tag=posy,r=4,rm=2] ~~~execute @e[name=posy] ~~~execute @e[tag=posy,r=3.999999,rm=1.999999] ~~~scoreboard players add @e[name=posy] posy 2
execute @e[name=posy] ~~~execute @e[tag=posy,r=4,rm=2] ~~~execute @e[name=posy] ~~~execute @e[tag=posy,r=3.999999,rm=1.999999] ~~~execute @e[name=posy] ~~~tp~~2~
//13
execute @e[name=posy] ~~~execute @e[tag=posy,r=2,rm=1] ~~~execute @e[name=posy] ~~~execute @e[tag=posy,r=1.999999,rm=0.999999] ~~~scoreboard players add @e[name=posy] posy 1
execute @e[name=posy] ~~~execute @e[tag=posy,r=2,rm=1] ~~~execute @e[name=posy] ~~~execute @e[tag=posy,r=1.999999,rm=0.999999] ~~~execute @e[name=posy] ~~~tp~~1~
//14
execute @e[tag=posy,tag=posy_small] ~~~scoreboard players set posy posy -256
execute @e[tag=posy,tag=posy_small] ~~~scoreboard players operation @e[name=posy] posy += posy posy
execute @e[tag=posy] ~~~scoreboard players operation @a[tag=posy_broow] posy_0 = @e[name=posy] posy
//15
tp @e[name=posy] 0 32767 0
kill @e[name=posy]
tp @e[name=replace_player] 0 32767 0
kill @e[name=replace_player]
//16
tag @a[tag=posy_broow] remove posy_broow
//17
function posz
//18