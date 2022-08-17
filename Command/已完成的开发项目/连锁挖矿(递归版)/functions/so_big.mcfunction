scoreboard players reset * lswk:so_big_0
//1
scoreboard players add @e[tag=lswk:coal_ore_willdo] lswk:so_big_0 1
scoreboard players add @e[tag=lswk:lapis_ore_willdo] lswk:so_big_0 1
scoreboard players add @e[tag=lswk:redstone_ore_willdo] lswk:so_big_0 1
scoreboard players add @e[tag=lswk:emerald_ore_willdo] lswk:so_big_0 1
scoreboard players add @e[tag=lswk:diamond_ore_willdo] lswk:so_big_0 1
scoreboard players add @e[tag=lswk:iron_ore_willdo] lswk:so_big_0 1
scoreboard players add @e[tag=lswk:gold_ore_willdo] lswk:so_big_0 1
scoreboard players add @e[tag=lswk:quartz_ore_willdo] lswk:so_big_0 1
scoreboard players add @e[tag=lswk:nether_gold_ore_willdo] lswk:so_big_0 1
scoreboard players add @e[tag=lswk:log_0_willdo] lswk:so_big_0 1
scoreboard players add @e[tag=lswk:log_1_willdo] lswk:so_big_0 1
scoreboard players add @e[tag=lswk:log_2_willdo] lswk:so_big_0 1
scoreboard players add @e[tag=lswk:log_3_willdo] lswk:so_big_0 1
scoreboard players add @e[tag=lswk:log2_0_willdo] lswk:so_big_0 1
scoreboard players add @e[tag=lswk:log2_1_willdo] lswk:so_big_0 1
//2
summon armor_stand lswk:test_max_entity_number ~ 32767 ~
execute @e[name=lswk:test_max_entity_number,type=armor_stand] ~~~scoreboard players add @s lswk:so_big_0 0
execute @e[name=lswk:test_max_entity_number,type=armor_stand] ~~~scoreboard players operation entity_number lswk:so_big_0 += @e[scores={lswk:so_big_0=1}] lswk:so_big_0
execute @e[name=lswk:test_max_entity_number,type=armor_stand] ~~~scoreboard players operation entity_number lswk:so_big_0 -= max_entity_number lswk:setting
execute @e[name=lswk:test_max_entity_number,type=armor_stand] ~~~scoreboard players operation result lswk:so_big = entity_number lswk:so_big_0
execute @e[name=lswk:test_max_entity_number,type=armor_stand] ~~~scoreboard players operation @s lswk:so_big_0 = entity_number lswk:so_big_0
//3
execute @e[name=lswk:test_max_entity_number,type=armor_stand,scores={lswk:so_big_0=1..}] ~~~kill @e[tag=lswk:coal_ore_willdo]
execute @e[name=lswk:test_max_entity_number,type=armor_stand,scores={lswk:so_big_0=1..}] ~~~kill @e[tag=lswk:lapis_ore_willdo]
execute @e[name=lswk:test_max_entity_number,type=armor_stand,scores={lswk:so_big_0=1..}] ~~~kill @e[tag=lswk:redstone_ore_willdo]
execute @e[name=lswk:test_max_entity_number,type=armor_stand,scores={lswk:so_big_0=1..}] ~~~kill @e[tag=lswk:emerald_ore_willdo]
execute @e[name=lswk:test_max_entity_number,type=armor_stand,scores={lswk:so_big_0=1..}] ~~~kill @e[tag=lswk:iron_ore_willdo]
execute @e[name=lswk:test_max_entity_number,type=armor_stand,scores={lswk:so_big_0=1..}] ~~~kill @e[tag=lswk:gold_ore_willdo]
execute @e[name=lswk:test_max_entity_number,type=armor_stand,scores={lswk:so_big_0=1..}] ~~~kill @e[tag=lswk:quartz_ore_willdo]
execute @e[name=lswk:test_max_entity_number,type=armor_stand,scores={lswk:so_big_0=1..}] ~~~kill @e[tag=lswk:nether_gold_ore_willdo]
execute @e[name=lswk:test_max_entity_number,type=armor_stand,scores={lswk:so_big_0=1..}] ~~~kill @e[tag=lswk:diamond_ore_willdo]
execute @e[name=lswk:test_max_entity_number,type=armor_stand,scores={lswk:so_big_0=1..}] ~~~kill @e[tag=lswk:log_0_willdo]
execute @e[name=lswk:test_max_entity_number,type=armor_stand,scores={lswk:so_big_0=1..}] ~~~kill @e[tag=lswk:log_1_willdo]
execute @e[name=lswk:test_max_entity_number,type=armor_stand,scores={lswk:so_big_0=1..}] ~~~kill @e[tag=lswk:log_2_willdo]
execute @e[name=lswk:test_max_entity_number,type=armor_stand,scores={lswk:so_big_0=1..}] ~~~kill @e[tag=lswk:log_3_willdo]
execute @e[name=lswk:test_max_entity_number,type=armor_stand,scores={lswk:so_big_0=1..}] ~~~kill @e[tag=lswk:log2_0_willdo]
execute @e[name=lswk:test_max_entity_number,type=armor_stand,scores={lswk:so_big_0=1..}] ~~~kill @e[tag=lswk:log2_1_willdo]
//4
kill @e[name=lswk:test_max_entity_number,type=armor_stand]