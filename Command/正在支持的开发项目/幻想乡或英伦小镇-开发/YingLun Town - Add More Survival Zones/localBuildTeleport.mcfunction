# Teleport the player from local build to the transfer station which 
# allow the player go to the survival zones
#
# This function may install in the local build and always repeat



replaceitem entity @e[tag=localbuild:transfer_station] slot.armor.chest 0 keep minecraft:diamond_chestplate 1 32767
# give the villager a will broken chest if the target slot is air

# *** The following commands need condition to execute ***
execute @e[tag=localbuild:transfer_station] ~ ~ ~ tag @p[r=5] add localbuild:tS_player
execute @a[tag=localbuild:tS_player] ~ ~ ~ stopsound @s random.break
execute @a[tag=localbuild:tS_player] ~ ~ ~ title @s title §l§b生存区§3中转城
execute @a[tag=localbuild:tS_player] ~ ~ ~ title @s subtitle §l§f> §eWelcome §6Here §f<
execute @a[tag=localbuild:tS_player] ~ ~ ~ tp 0.0 0.0 0.0
execute @a[tag=localbuild:tS_player] ~ ~ ~ tag @s add localbuild:teleport_successful
execute @a[tag=localbuild:tS_player] ~ ~ ~ tag @s remove localbuild:tS_player
# *** End ***
# implement specific functions