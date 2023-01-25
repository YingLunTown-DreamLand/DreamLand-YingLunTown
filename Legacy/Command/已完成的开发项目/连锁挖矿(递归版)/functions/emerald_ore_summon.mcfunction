execute @s ~1~~detect~~-32767~emerald_ore -1 summon armor_stand
execute @s ~1~~detect~~-32767~emerald_ore -1 tag @e[dx=0,type=armor_stand,c=1] add lswk:emerald_ore_willdo
execute @s ~1~-32767~detect~~~emerald_ore -1 setblock~~~air 0 destroy
//1
execute @s ~-1~~detect~~-32767~emerald_ore -1 summon armor_stand
execute @s ~-1~~detect~~-32767~emerald_ore -1 tag @e[dx=0,type=armor_stand,c=1] add lswk:emerald_ore_willdo
execute @s ~-1~-32767~detect~~~emerald_ore -1 setblock~~~air 0 destroy
//2
execute @s ~~1~detect~~-32767~emerald_ore -1 summon armor_stand
execute @s ~~1~detect~~-32767~emerald_ore -1 tag @e[dy=0,type=armor_stand,c=1] add lswk:emerald_ore_willdo
execute @s ~~-32766~detect~~~emerald_ore -1 setblock~~~air 0 destroy
//3
execute @s ~~-1~detect~~-32767~emerald_ore -1 summon armor_stand
execute @s ~~-1~detect~~-32767~emerald_ore -1 tag @e[dy=0,type=armor_stand,c=1] add lswk:emerald_ore_willdo
execute @s ~~-32768~detect~~~emerald_ore -1 setblock~~~air 0 destroy
//4
execute @s ~~~1 detect~~-32767~emerald_ore -1 summon armor_stand
execute @s ~~~1 detect~~-32767~emerald_ore -1 tag @e[dz=0,type=armor_stand,c=1] add lswk:emerald_ore_willdo
execute @s ~~-32767~1 detect~~~emerald_ore -1 setblock~~~air 0 destroy
//5
execute @s ~~~-1 detect~~-32767~emerald_ore -1 summon armor_stand
execute @s ~~~-1 detect~~-32767~emerald_ore -1 tag @e[dz=0,type=armor_stand,c=1] add lswk:emerald_ore_willdo
execute @s ~~-32767~-1 detect~~~emerald_ore -1 setblock~~~air 0 destroy
//6
kill @s
//7