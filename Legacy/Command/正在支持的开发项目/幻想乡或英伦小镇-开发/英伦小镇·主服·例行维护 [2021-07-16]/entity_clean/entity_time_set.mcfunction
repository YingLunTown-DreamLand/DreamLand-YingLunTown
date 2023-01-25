execute @e[scores={c_e:entity_time=0}] ~ ~ ~ tag @s add c_e:entity_time_set
execute @e[tag=c_e:entity_time_set] ~ ~ ~ scoreboard players operation @s c_e:entity_time = ticks c_e:time
execute @e[tag=c_e:entity_time_set] ~ ~ ~ scoreboard players add @s c_e:entity_time 18000
execute @e[tag=c_e:entity_time_set,tag=c_e:will_kill] ~ ~ ~ scoreboard players operation @s c_e:entity_time = ticks c_e:time
execute @e[tag=c_e:entity_time_set,tag=c_e:will_kill] ~ ~ ~ scoreboard players add @s c_e:entity_time 1200
execute @e[tag=c_e:entity_time_set] ~ ~ ~ tag @s remove c_e:entity_time_set
#entity_time_set