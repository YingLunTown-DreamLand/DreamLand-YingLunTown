tag @a add die
tag @e[type=player] remove die
execute @a[tag=die,tag=!die_down,tag=posx_allow,x=-524288,dx=1048575] ~ ~ ~ execute @s[tag=die,tag=!die_down,tag=posy_allow,y=0,dy=256] ~ ~ ~ execute @s[tag=die,tag=!die_down,tag=posz_allow,z=-524288,dz=1048575] ~ ~ ~ function posx
execute @a[tag=die,tag=!die_down,tag=posx_allow,x=-524288,dx=1048575] ~ ~ ~ execute @s[tag=die,tag=!die_down,tag=posy_allow,y=0,dy=256] ~ ~ ~ execute @s[tag=die,tag=!die_down,tag=posz_allow,z=-524288,dz=1048575] ~ ~ ~ function posy
execute @a[tag=die,tag=!die_down,tag=posx_allow,x=-524288,dx=1048575] ~ ~ ~ execute @s[tag=die,tag=!die_down,tag=posy_allow,y=0,dy=256] ~ ~ ~ execute @s[tag=die,tag=!die_down,tag=posz_allow,z=-524288,dz=1048575] ~ ~ ~ function posz
execute @a[tag=die,tag=!die_down,tag=posx_allow,x=-524288,dx=1048575] ~ ~ ~ execute @s[tag=die,tag=!die_down,tag=posy_allow,y=0,dy=256] ~ ~ ~ execute @s[tag=die,tag=!die_down,tag=posz_allow,z=-524288,dz=1048575] ~ ~ ~ tag @s add pos_allow
execute @a[tag=die,tag=!die_down,tag=pos_allow] ~ ~ ~ tag @s add pos_saved
execute @a[tag=die,tag=!die_down,tag=!pos_allow] ~ ~ ~ scoreboard players set @s b_d_p:time -50
execute @a[tag=die,tag=!die_down,tag=pos_allow] ~ ~ ~ scoreboard players set @s b_d_p:time 1
execute @a[tag=die,tag=!die_down,tag=pos_allow] ~ ~ ~ tag @s remove pos_allow
execute @a[tag=die,tag=!die_down] ~ ~ ~ tag @s add die_down
#test_die
execute @e[type=player,scores={b_d_p:time=-50..101}] ~ ~ ~ function actionbar
#actionbar