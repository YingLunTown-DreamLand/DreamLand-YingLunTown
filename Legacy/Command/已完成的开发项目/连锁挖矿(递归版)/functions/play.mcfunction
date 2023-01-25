scoreboard players add @a lswk:player 0
scoreboard players add max_entity_number lswk:setting 0
summon armor_stand lswk:test_min_entity_number ~ 32767 ~
execute @e[name=lswk:test_min_entity_number,type=armor_stand] ~~~scoreboard players add @s lswk:so_big 0
execute @e[name=lswk:test_min_entity_number,type=armor_stand] ~~~scoreboard players operation @s lswk:so_big = max_entity_number lswk:setting
//0
tickingarea add ~~~~~~ lswk
function so_big_setting
//1
execute @e[tag=lswk:particle] ~~-32767~particle minecraft:rising_border_dust_particle ~~~
kill @e[tag=lswk:particle]
execute @e[tag=lswk:can_not_move] ~~~tp~~~
//2
execute @a[scores={lswk:player=1}] ~~~execute @e[type=item,name=远古残骸,ry=0,rym=0,c=1,r=5] ~~~function ancient_debris
execute @a[scores={lswk:player=1}] ~~~execute @e[type=item,name=煤炭,ry=0,rym=0,c=1,r=5] ~~~function coal_ore
execute @a[scores={lswk:player=1}] ~~~execute @e[type=xp_orb,c=1,r=5] ~~~execute @e[type=item,name=青金石,ry=0,rym=0,c=1,r=3] ~~~function lapis_ore
execute @a[scores={lswk:player=1}] ~~~execute @e[type=xp_orb,c=1,r=5] ~~~execute @e[type=item,name=红石,ry=0,rym=0,c=1,r=3] ~~~function redstone_ore
execute @a[scores={lswk:player=1}] ~~~execute @e[type=xp_orb,c=1,r=5] ~~~execute @e[type=item,name=绿宝石,ry=0,rym=0,c=1,r=3] ~~~function emerald_ore
execute @a[scores={lswk:player=1}] ~~~execute @e[type=xp_orb,c=1,r=5] ~~~execute @e[type=item,name=钻石,ry=0,rym=0,c=1,r=3] ~~~function diamond_ore
execute @a[scores={lswk:player=1}] ~~~execute @e[type=item,name=铁矿石,ry=0,rym=0,c=1,r=5] ~~~function iron_ore
execute @a[scores={lswk:player=1}] ~~~execute @e[type=item,name=金矿石,ry=0,rym=0,c=1,r=5] ~~~function gold_ore
execute @a[scores={lswk:player=1}] ~~~execute @e[type=xp_orb,c=1,r=5] ~~~execute @e[type=item,name=地狱石英,ry=0,rym=0,c=1,r=3] ~~~function quartz_ore
execute @a[scores={lswk:player=1}] ~~~execute @e[type=item,name=金粒,ry=0,rym=0,c=1,r=5] ~~~function nether_gold_ore
execute @a[scores={lswk:player=1}] ~~~execute @e[type=item,name=橡树原木,ry=0,rym=0,c=1,r=5] ~~~function log_0
execute @a[scores={lswk:player=1}] ~~~execute @e[type=item,name=云杉原木,ry=0,rym=0,c=1,r=5] ~~~function log_1
execute @a[scores={lswk:player=1}] ~~~execute @e[type=item,name=桦树原木,ry=0,rym=0,c=1,r=5] ~~~function log_2
execute @a[scores={lswk:player=1}] ~~~execute @e[type=item,name=丛林原木,ry=0,rym=0,c=1,r=5] ~~~function log_3
execute @a[scores={lswk:player=1}] ~~~execute @e[type=item,name=金合欢原木,ry=0,rym=0,c=1,r=5] ~~~function log2_0
execute @a[scores={lswk:player=1}] ~~~execute @e[type=item,name=深色橡树原木,ry=0,rym=0,c=1,r=5] ~~~function log2_1
//3
execute @e[tag=lswk:ancient_debris_willdo] ~~~function ancient_debris
execute @e[tag=lswk:coal_ore_willdo] ~~~function coal_ore
execute @e[tag=lswk:lapis_ore_willdo] ~~~function lapis_ore
execute @e[tag=lswk:redstone_ore_willdo] ~~~function redstone_ore
execute @e[tag=lswk:emerald_ore_willdo] ~~~function emerald_ore
execute @e[tag=lswk:diamond_ore_willdo] ~~~function diamond_ore
execute @e[tag=lswk:iron_ore_willdo] ~~~function iron_ore
execute @e[tag=lswk:gold_ore_willdo] ~~~function gold_ore
execute @e[tag=lswk:quartz_ore_willdo] ~~~function quartz_ore
execute @e[tag=lswk:nether_gold_ore_willdo] ~~~function nether_gold_ore
execute @e[tag=lswk:log_0_willdo] ~~~function log_0
execute @e[tag=lswk:log_1_willdo] ~~~function log_1
execute @e[tag=lswk:log_2_willdo] ~~~function log_2
execute @e[tag=lswk:log_3_willdo] ~~~function log_3
execute @e[tag=lswk:log2_0_willdo] ~~~function log2_0
execute @e[tag=lswk:log2_1_willdo] ~~~function log2_1
//4
function undo
//5
execute @e[name=lswk:test_min_entity_number,type=armor_stand] ~~~kill
//6