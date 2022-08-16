scoreboard objectives add uid dummy
scoreboard objectives add uw:number dummy
scoreboard objectives add uw:m2_number dummy
scoreboard players add @a uw:number 0
scoreboard players add @a uw:m2_number 0
#scoreboards_add_and_score(s)_set
scoreboard players add @a uid 0
execute @a[scores={uid=0},c=1] ~ ~ ~ function uid
#uid
execute @a[tag=uw:add_UnderWorld,c=1] ~ ~ ~ function time 
#计时器
execute @a[tag=uw:user] ~ ~ ~ tag @s add uw:get_ry
execute @a[tag=uw:get_ry,c=1] ~ ~ ~ function get_ry
#uw:get_ry
execute @a[tag=uw:user,c=1] ~ ~ ~ function test_change
#test_change
execute @a[tag=uw:user,c=1] ~ ~ ~ function actionbar/main
#actionbar
execute @e[type=minecraft:snowball,c=1] ~ ~ ~ function be_sure_option
#be_sure_option
execute @e[tag=uw:entity,c=1] ~ ~ ~ function entity/main
#entity