<<<<<<< HEAD
execute @e[type=minecraft:snowball] ~ ~ ~ tag @p[r=1.4] add uw:choice_suitable_player
#start
execute @a[tag=uw:choice_suitable_player,tag=uw:user,scores={uw:actionbar=1}] ~ ~ ~ scoreboard players set @s uw:actionbar 5
#uw:actionbar=1
execute @a[tag=uw:choice_suitable_player,tag=uw:user,scores={uw:actionbar=6}] ~ ~ ~ tag @s add uw:add_UnderWorld
execute @a[tag=uw:choice_suitable_player,tag=uw:user,scores={uw:actionbar=6}] ~ ~ ~ scoreboard players set @s uw:time 6000
execute @a[tag=uw:choice_suitable_player,tag=uw:user,scores={uw:actionbar=6}] ~ ~ ~ scoreboard players set @s uw:actionbar 10
#uw:actionbar=6
execute @a[tag=uw:choice_suitable_player,tag=uw:user,scores={uw:actionbar=7}] ~ ~ ~ tag @s add uw:add_UnderWorld
*#execute @a[tag=uw:choice_suitable_player,tag=uw:user,scores={uw:actionbar=7}] ~ ~ ~ scoreboard players set @s uw:actionbar n
#uw:actionbar=7
execute @a[tag=uw:choice_suitable_player,tag=uw:user,scores={uw:actionbar=8}] ~ ~ ~ scoreboard players set @s uw:actionbar 1
#uw:actionbar=8
execute @a[tag=uw:choice_suitable_player,tag=uw:user,scores={uw:actionbar=10},c=1] ~ ~ ~ function add_UnderWorld/spawn
#uw:actionbar=10
execute @a[tag=uw:choice_suitable_player,tag=uw:user] ~ ~ ~ playsound random.click @s ~ ~ ~ 1 1 1
#playsound
execute @a[tag=uw:choice_suitable_player] ~ ~ ~ tag @s remove uw:choice_suitable_player
#tag_remove
=======
execute @e[type=minecraft:snowball] ~ ~ ~ tag @p[r=1.4] add uw:choice_suitable_player
#start
execute @a[tag=uw:choice_suitable_player,tag=uw:user,scores={uw:actionbar=1}] ~ ~ ~ scoreboard players set @s uw:actionbar 5
#uw:actionbar=1
execute @a[tag=uw:choice_suitable_player,tag=uw:user,scores={uw:actionbar=6}] ~ ~ ~ tag @s add uw:add_UnderWorld
execute @a[tag=uw:choice_suitable_player,tag=uw:user,scores={uw:actionbar=6}] ~ ~ ~ scoreboard players set @s uw:time 6000
execute @a[tag=uw:choice_suitable_player,tag=uw:user,scores={uw:actionbar=6}] ~ ~ ~ scoreboard players set @s uw:actionbar 10
#uw:actionbar=6
execute @a[tag=uw:choice_suitable_player,tag=uw:user,scores={uw:actionbar=7}] ~ ~ ~ tag @s add uw:add_UnderWorld
*#execute @a[tag=uw:choice_suitable_player,tag=uw:user,scores={uw:actionbar=7}] ~ ~ ~ scoreboard players set @s uw:actionbar n
#uw:actionbar=7
execute @a[tag=uw:choice_suitable_player,tag=uw:user,scores={uw:actionbar=8}] ~ ~ ~ scoreboard players set @s uw:actionbar 1
#uw:actionbar=8
execute @a[tag=uw:choice_suitable_player,tag=uw:user,scores={uw:actionbar=10},c=1] ~ ~ ~ function add_UnderWorld/spawn
#uw:actionbar=10
execute @a[tag=uw:choice_suitable_player,tag=uw:user] ~ ~ ~ playsound random.click @s ~ ~ ~ 1 1 1
#playsound
execute @a[tag=uw:choice_suitable_player] ~ ~ ~ tag @s remove uw:choice_suitable_player
#tag_remove
>>>>>>> d95f919c53aa8612409504198bbed77f930d5f64
#be_sure_option