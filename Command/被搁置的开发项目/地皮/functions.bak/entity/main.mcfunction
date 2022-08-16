execute @e[tag=uw:entity] ~ ~ ~ tp ~ ~ ~
#固定
execute @e[tag=uw:entity] ~ ~ ~ effect @s invisibility 99999 225 true
#invisibility
execute @e[tag=uw:spawn_entity_01,c=1] ~ ~ ~ function entity/spawn_entity
execute @e[tag=uw:spawn_entity_02,c=1] ~ ~ ~ function entity/spawn_entity
#spawn_entity
execute @e[tag=uw:particle_spawn,c=1] ~ ~ ~ function entity/particle_spawn
#particle_spawn