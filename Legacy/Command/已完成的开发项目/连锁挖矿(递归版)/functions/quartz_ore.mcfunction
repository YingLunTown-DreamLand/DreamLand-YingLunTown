execute @a[scores={lswk:player=1}] ~~~execute @e[type=xp_orb,c=1,r=5] ~~~execute @e[type=item,name=地狱石英,ry=0,rym=0,c=1,r=3] ~~~summon armor_stand ~~32767~
execute @a[scores={lswk:player=1}] ~~~execute @e[type=xp_orb,c=1,r=5] ~~~execute @e[type=item,name=地狱石英,ry=0,rym=0,c=1,r=3] ~~~tag @e[type=armor_stand,y=~32767,c=1] add lswk:quartz_ore_do
execute @a[scores={lswk:player=1}] ~~~execute @e[type=xp_orb,c=1,r=5] ~~~execute @e[type=item,name=地狱石英,ry=0,rym=0,c=1,r=3] ~~~tag @e[type=armor_stand,y=~32767,c=1] add lswk:not_particle
execute @e[tag=lswk:quartz_ore_willdo] ~~~tag @s add lswk:can_not_move
//0
execute @e[name=地狱石英,type=item,ry=0,rym=0] ~~~tp~~~~1
//1
tag @e[tag=lswk:quartz_ore_willdo,tag=!lswk:quartz_ore_do] add lswk:quartz_ore_do
execute @e[tag=lswk:quartz_ore_do,tag=!lswk:not_particle] ~~~summon armor_stand ~~~
execute @e[tag=lswk:quartz_ore_do,tag=!lswk:not_particle] ~~~tag @e[type=armor_stand,dx=0,dy=0,dz=0,tag=!lswk:particle] add lswk:particle
//2
execute @e[tag=lswk:quartz_ore_do] ~~~function quartz_ore_summon
//3
execute @e[name=lswk:test_min_entity_number,type=armor_stand,scores={lswk:so_big=1..255}] ~~~function so_big
execute @e[tag=lswk:quartz_ore_willdo,c=1] ~~~function quartz_ore
//4