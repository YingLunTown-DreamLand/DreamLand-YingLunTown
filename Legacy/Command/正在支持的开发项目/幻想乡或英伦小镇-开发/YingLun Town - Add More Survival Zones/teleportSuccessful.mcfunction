# API
# While a player is teleported from local build to another place, 
# we developers decide to play a sound for this player.
#
# This function may install in the command block place as a global api
#
# Start command is "testfor @a[tag=localbuild:teleport_successful,c=1]"
# Start command can also be "testfor @a[tag=localbuild:tp_true_playsound,c=1]"



execute @a[tag=localbuild:teleport_successful] ~ ~ ~ summon minecraft:armor_stand "localbuild:teleport_successful"
execute @e[name=localbuild:teleport_successful,type=minecraft:armor_stand] ~ ~ ~ tag @s add localbuild:tp_true_entity
execute @e[tag=localbuild:tp_true_entity] ~ ~ ~ tag @a[r=3] add localbuild:tp_true_playsound
execute @a[tag=localbuild:tp_true_playsound] ~ ~ ~ tag @s remove localbuild:teleport_successful
execute @e[tag=localbuild:tp_true_entity] ~ ~ ~ tp ~ -32767.0 ~
execute @e[tag=localbuild:tp_true_entity] ~ ~ ~ kill @s
# check the player is in a loaded area

execute @a[tag=localbuild:tp_true_playsound] ~ ~ ~ playsound random.orb @s ~ ~ ~ 1.00 1.00 1.00
execute @a[tag=localbuild:tp_true_playsound] ~ ~ ~ tag @s remove localbuild:tp_true_playsound
# if the player is in a loaded area, then play a sound named "random.orb"