tickingarea remove UI
tickingarea add ~ ~ ~ ~ ~ ~ UI
#Tickingarea_reset
function test_die
#test_die
execute @e[type=egg] ~ ~ ~ execute @a[tag=godmode,r=1.4] ~ ~ ~ function random
#random
execute @e[type=snowball] ~ ~ ~ tag @a[r=1.4,c=1] add b_d_p:return_test
execute @a[tag=b_d_p:return_test,tag=pos_saved] ~ ~ ~ function return
execute @a[tag=b_d_p:return_test] ~ ~ ~ tag @s remove b_d_p:return_test
#return
function godmode