execute @s ~1~~detect~~-32767~log 1 summon armor_stand
execute @s ~1~~detect~~-32767~log 1 tag @e[dx=0,type=armor_stand,c=1] add lswk:log_1_willdo
execute @s ~1~-32767~detect~~~log 1 setblock~~~air 0 destroy
//1
execute @s ~-1~~detect~~-32767~log 1 summon armor_stand
execute @s ~-1~~detect~~-32767~log 1 tag @e[dx=0,type=armor_stand,c=1] add lswk:log_1_willdo
execute @s ~-1~-32767~detect~~~log 1 setblock~~~air 0 destroy
//2
execute @s ~~1~detect~~-32767~log 1 summon armor_stand
execute @s ~~1~detect~~-32767~log 1 tag @e[dy=0,type=armor_stand,c=1] add lswk:log_1_willdo
execute @s ~~-32766~detect~~~log 1 setblock~~~air 0 destroy
//3
execute @s ~~-1~detect~~-32767~log 1 summon armor_stand
execute @s ~~-1~detect~~-32767~log 1 tag @e[dy=0,type=armor_stand,c=1] add lswk:log_1_willdo
execute @s ~~-32768~detect~~~log 1 setblock~~~air 0 destroy
//4
execute @s ~~~1 detect~~-32767~log 1 summon armor_stand
execute @s ~~~1 detect~~-32767~log 1 tag @e[dz=0,type=armor_stand,c=1] add lswk:log_1_willdo
execute @s ~~-32767~1 detect~~~log 1 setblock~~~air 0 destroy
//5
execute @s ~~~-1 detect~~-32767~log 1 summon armor_stand
execute @s ~~~-1 detect~~-32767~log 1 tag @e[dz=0,type=armor_stand,c=1] add lswk:log_1_willdo
execute @s ~~-32767~-1 detect~~~log 1 setblock~~~air 0 destroy
//6
kill @s
//7