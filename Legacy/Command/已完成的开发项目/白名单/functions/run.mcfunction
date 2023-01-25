scoreboard objectives add uid dummy
scoreboard objectives add wb:online dummy
scoreboard objectives add white_power dummy
scoreboard objectives add tick_change dummy
scoreboard objectives add wb:set_power dummy
scoreboard objectives add wb:wait dummy
scoreboard objectives add administrator dummy
scoreboard objectives add wb:time dummy
scoreboard players add @a administrator 0
scoreboard players add @a white_power 0
#scoreboards_add_and_prepare
scoreboard players add @a uid 0
execute @a[scores={uid=0},c=1] ~ ~ ~ function uid
#gave_uid
scoreboard players add @a wb:online 0
tag @a[scores={wb:online=!1}] add wb:test
scoreboard players reset * wb:online
scoreboard players set @a wb:online 1
#login_test_start
execute @a ~ ~ ~ scoreboard players operation @s tick_change -= @s white_power
execute @a[scores={tick_change=!0}] ~ ~ ~ tag @s add wb:test
execute @a ~ ~ ~ scoreboard players operation @s tick_change = @s white_power
#tick(test)_change
execute @a[tag=wb:test,c=1] ~ ~ ~ function life_power
#life_power
scoreboard players add @a wb:set_power 0
scoreboard players add @a wb:wait 0
execute @a[scores={wb:wait=1..}] ~ ~ ~ scoreboard players remove @s wb:wait 1
execute @a[scores={wb:wait=..-1}] ~ ~ ~ scoreboard players add @s wb:wait 1
execute @a[scores={wb:set_power=!0,wb:wait=0},tag=!wb:set_power_wait,c=1] ~ ~ ~ function power_test
execute @a[scores={wb:wait=0},tag=wb:set_power_wait,c=1] ~ ~ ~ function set_power
#power_test_and_set_power
gamemode 0 @a[m=1,scores={administrator=!1,white_power=!1}]
#lock_gamemode
scoreboard players set @a[scores={administrator=!1},tag=!wb:set_power_wait] wb:set_power 0
*#scoreboard players reset @e[type=!minecraft:armor_stand,x=0,y=4,z=0,rm=0.5] wb:save
*#tag @e[type=!minecraft:armor_stand,x=0,y=4,z=0,rm=0.5] remove wb:save
#ban_something
scoreboard players add @a wb:time 0
scoreboard players add @a[scores={wb:time=0..99}] wb:time 1
execute @a[scores={wb:time=100..}] ~ ~ ~ tag @s add wb:test
execute @a[scores={wb:time=100..}] ~ ~ ~ scoreboard players reset @s wb:time
#regular_inspection