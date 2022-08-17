scoreboard objectives add lygbug dummy
#scoreboard_add

execute @a[c=1] ~ ~ ~ tag @s add lygbug_test
execute @a[tag=lygbug_list,c=1] ~ ~ ~ tag @a[tag=lygbug_test] add lygbug_had
execute @a[tag=lygbug_test,tag=!lygbug_had] ~ ~ ~ tag @a add lygbug_list
execute @a[tag=lygbug_test] ~ ~ ~ tag @s remove lygbug_test
execute @a[tag=lygbug_had] ~ ~ ~ tag @s remove lygbug_had
#1

tag @a[c=1,tag=lygbug_list] add lygbug_random
execute @a[tag=lygbug_random] ~ ~ ~ locate fortress
*tag @a[tag=lygbug_random] add lygbug_dy
execute @a[tag=lygbug_random] ~ ~ ~ tag @e[name=骷髅模型,type=minecraft:item,rx=0,rxm=0,ry=0,rym=0] remove lygbug_klmx
execute @a[tag=lygbug_random] ~ ~ ~ tag @e[name=骷髅模型,type=minecraft:item,rx=0,rxm=0,ry=0,rym=0] add lygbug_klmx
#one
execute @a[tag=lygbug_random] ~ ~ ~ fill ~7.5 ~7.5 ~7.5 ~-7.5 ~-7.5 ~-7.5 skull 0 replace cauldron 0
execute @a[tag=lygbug_random] ~ ~ ~ execute @s[y=7,dy=-512] ~ 7.5 ~ fill ~7.5 ~7.5 ~7.5 ~-7.5 ~-7.5 ~-7.5 skull 0 replace cauldron 0
execute @a[tag=lygbug_random] ~ ~ ~ execute @s[y=248,dy=512] ~ 248.0 ~ fill ~7.5 ~7.5 ~7.5 ~-7.5 ~-7.5 ~-7.5 skull 0 replace cauldron 0
execute @a[tag=lygbug_random,tag=lygbug_dy] ~ ~ ~ execute @s[y=120,dy=8] ~ 120.0 ~ fill ~7.5 ~7.5 ~7.5 ~-7.5 ~-7.5 ~-7.5 skull 0 replace cauldron 0
#two
execute @a[tag=lygbug_random] ~ ~ ~ fill ~7.5 ~7.5 ~7.5 ~-7.5 ~-7.5 ~-7.5 air 0 replace skull 0
execute @a[tag=lygbug_random] ~ ~ ~ execute @s[y=7,dy=-512] ~ 8.0 ~ fill ~7.5 ~7.5 ~7.5 ~-7.5 ~-7.5 ~-7.5 air 0 replace skull 0
execute @a[tag=lygbug_random] ~ ~ ~ execute @s[y=248,dy=512] ~ 248.0 ~ fill ~7.5 ~7.5 ~7.5 ~-7.5 ~-7.5 ~-7.5 air 0 replace skull 0
execute @a[tag=lygbug_random,tag=lygbug_dy] ~ ~ ~ execute @s[y=120,dy=8] ~ 120.0 ~ fill ~7.5 ~7.5 ~7.5 ~-7.5 ~-7.5 ~-7.5 air 0 replace skull 0
#three
execute @a[tag=lygbug_random,scores={lygbug=101..}] ~ ~ ~ execute @e[name=骷髅模型,type=minecraft:item,rx=0,rxm=0,ry=0,rym=0,tag=!lygbug_klmx] ~ ~ ~ setblock ~ ~ ~ cauldron 1 keep
execute @a[tag=lygbug_random,scores={lygbug=101..}] ~ ~ ~ scoreboard players set @s lygbug -1
#1
execute @a[tag=lygbug_random] ~ ~ ~ tag @s add lygbug_test
execute @e[name=骷髅模型,type=minecraft:item,rx=0,rxm=0,ry=0,rym=0,tag=!lygbug_klmx] ~ ~ ~ tag @a[tag=lygbug_random] remove lygbug_test
execute @a[tag=lygbug_random,tag=lygbug_test] ~ ~ ~ scoreboard players reset @s lygbug
execute @a[tag=lygbug_random,tag=lygbug_test] ~ ~ ~ tag @s remove lygbug_test
#2
#four
execute @e[name=骷髅模型,type=minecraft:item,rx=0,rxm=0,ry=0,rym=0,tag=!lygbug_klmx] ~ ~ ~ setblock ~ ~ ~ cauldron 0 keep
execute @e[name=骷髅模型,type=minecraft:item,rx=0,rxm=0,ry=0,rym=0,tag=!lygbug_klmx] ~ ~ ~ scoreboard players add @a[tag=lygbug_random] lygbug 1
execute @e[name=骷髅模型,type=minecraft:item,rx=0,rxm=0,ry=0,rym=0,tag=!lygbug_klmx] ~ ~ ~ kill @s
execute @e[name=骷髅模型,type=minecraft:item,rx=0,rxm=0,ry=0,rym=0,tag=lygbug_klmx] ~ ~ ~ tag @s remove lygbug_klmx
#five
#2

tag @a[tag=lygbug_dy] remove lygbug_dy
tag @a[tag=lygbug_random] remove lygbug_list
tag @a[tag=lygbug_random] remove lygbug_random
execute @a[scores={lygbug=0}] ~ ~ ~ scoreboard players reset @s lygbug
#3