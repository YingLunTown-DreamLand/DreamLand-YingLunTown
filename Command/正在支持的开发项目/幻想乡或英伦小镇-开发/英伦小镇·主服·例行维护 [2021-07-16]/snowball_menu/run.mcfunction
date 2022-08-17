scoreboard objectives add s_m:cd dummy
scoreboard objectives add s_m:time dummy
scoreboard objectives add s_m:scores dummy
#scoreboards_add
execute @a[tag=s_m:user,c=1] ~ ~ ~ function actionbar
#actionbar
execute @e[type=minecraft:snowball,c=1] ~ ~ ~ function user
#user
execute @a[tag=s_m:user,c=1,scores={s_m:scores=0..7}] ~ ~ ~ function change
#change
summon minecraft:armor_stand s_m:test_world ~ 32767.0 ~
tag @e[name=s_m:test_world,type=minecraft:armor_stand,y=32767.0,dy=0] add s_m:test_world
execute @a[tag=s_m:user,rx=-60,rxm=-90,c=1,tag=!s_m:user_mark,scores={s_m:cd=0}] ~ ~ ~ function main/center
execute @a[tag=s_m:user,rx=90,rxm=60,c=1,tag=!s_m:user_mark,scores={s_m:cd=0}] ~ ~ ~ function main/exit
kill @e[tag=s_m:test_world]
#center_and_exit
function main/back_point
#back_point