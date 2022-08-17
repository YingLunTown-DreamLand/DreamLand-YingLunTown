tag @a[tag=!die] add die
tag @e[type=player,tag=die] remove die
scoreboard players reset @a[tag=die,tag=!die_0] posx_0
scoreboard players reset @a[tag=die,tag=!die_0] posy_0
scoreboard players reset @a[tag=die,tag=!die_0] posz_0
tag @a[tag=die,tag=!die_0] add wantpos
tag @a[tag=die,tag=!die_0] add testpos
tag @a[tag=die,tag=!die_0] add die_0
tag @e[type=player,tag=die_0] remove die_0
#test_die
execute @e[type=snowball] ~~~tag @p[r=1.4,scores={posy_0=-524288..524288,posy_0=-256..256,posz_0=-524288..524288},tag=!back] add back
#back