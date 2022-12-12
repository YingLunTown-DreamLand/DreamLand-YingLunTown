scoreboard objectives add explodeBed:time dummy
# used to record the explode time
# it only needs to be executed once





tag @r add explodeBed:check_dimensions
tag @a[tag=explodeBed:check_dimensions] remove explodeBed:is_in_nether
execute @a[tag=explodeBed:check_dimensions] ~ ~ ~ locate fortress
 tag @a[tag=explodeBed:check_dimensions] add explodeBed:is_in_nether
tag @a[tag=explodeBed:check_dimensions] remove explodeBed:check_dimensions
# check the dimension of an random player

execute @e[tag=explodeBed:record_entity] ~ ~ ~ tp ~ ~ ~
execute @e[tag=explodeBed:record_entity,rm=0] ~ ~ ~ tp @s ~ -32767.0 ~
execute @e[tag=explodeBed:record_entity] ~ ~ ~ tp @s[y=512,dy=-30000000] ~ -32767.0 ~
execute @e[tag=explodeBed:record_entity] ~ ~ ~ kill @s[y=512,dy=-30000000]
# delete invalid records

# install these in the commandblockplace, as a repeating function





execute @a[tag=explodeBed:is_in_nether] ~ ~ ~ execute @s ~ ~ ~ detect ~ ~ ~ minecraft:bed -1 tag @s add explodeBed:execute
execute @a[tag=explodeBed:execute,c=1] ~ ~ ~ tag @e[type=item] add explodeBed:itemMark
execute @a[tag=explodeBed:execute] ~ ~ ~ setblock ~ ~ ~ minecraft:air 0 destroy
execute @a[tag=explodeBed:execute] ~ ~ ~ kill @e[type=item,tag=!explodeBed:itemMark]
execute @e[tag=explodeBed:itemMark] ~ ~ ~ tag @s remove explodeBed:itemMark
execute @a[tag=explodeBed:execute] ~ ~ ~ summon minecraft:armor_stand "explodeBed:record_entity" ~ ~32767.0 ~
execute @a[tag=explodeBed:execute] ~ ~ ~ tag @e[type=minecraft:armor_stand,name="explodeBed:record_entity",tag="",c=1] add explodeBed:record_entity
execute @a[tag=explodeBed:execute] ~ ~ ~ tag @s remove explodeBed:execute
# summon a entity to record the position of the bed and destroy the bed
# install this in the commandblockplace, as a repeating function
# note: just repeat the first command





execute @e[tag=explodeBed:record_entity] ~ ~ ~ scoreboard players add @s explodeBed:time 0
execute @e[scores={explodeBed:time=0}] ~ ~ ~ scoreboard players random @s explodeBed:time 8 15
execute @e[scores={explodeBed:time=2..}] ~ ~ ~ scoreboard players remove @s explodeBed:time 1
execute @e[scores={explodeBed:time=..1}] ~ ~ ~ summon minecraft:tnt_minecart ~ ~-32767.0 ~ minecraft:on_instant_prime
execute @e[scores={explodeBed:time=..1}] ~ ~ ~ tag @s add explodeBed:clean_record_entity
execute @e[tag=explodeBed:clean_record_entity] ~ ~ ~ scoreboard players reset @s
execute @e[tag=explodeBed:clean_record_entity] ~ ~ ~ kill @s
# simulate an exploding bed
# install this in the commandblockplace, as a repeating function
# note: just repeat the first command