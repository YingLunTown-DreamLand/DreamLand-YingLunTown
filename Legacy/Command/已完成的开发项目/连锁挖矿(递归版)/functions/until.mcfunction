tickingarea remove lswk
scoreboard objectives remove lswk:player
scoreboard objectives remove lswk:setting
scoreboard objectives remove lswk:so_big
scoreboard objectives remove lswk:so_big_0
kill @e[tag=lswk:coal_ore_willdo]
kill @e[tag=lswk:lapis_ore_willdo]
kill @e[tag=lswk:redstone_ore_willdo]
kill @e[tag=lswk:emerald_ore_willdo]
kill @e[tag=lswk:iron_ore_willdo]
kill @e[tag=lswk:gold_ore_willdo]
kill @e[tag=lswk:quartz_ore_willdo]
kill @e[tag=lswk:nether_gold_ore_willdo]
kill @e[tag=lswk:diamond_ore_willdo]
kill @e[tag=lswk:log_0_willdo]
kill @e[tag=lswk:log_1_willdo]
kill @e[tag=lswk:log_2_willdo]
kill @e[tag=lswk:log_3_willdo]
kill @e[tag=lswk:log2_0_willdo]
kill @e[tag=lswk:log2_1_willdo]
tag @e[tag=lswk:diamond_ore_undo] remove lswk:diamond_ore_undo
tag @e[tag=lswk:lapis_ore_undo] remove lswk:lapis_ore_undo
tag @e[tag=lswk:redstone_ore_undo] remove lswk:redstone_ore_undo
tag @e[tag=lswk:emerald_ore_undo] remove lswk:emerald_ore_undo
tag @e[tag=lswk:iron_ore_undo] remove lswk:iron_ore_undo
tag @e[tag=lswk:gold_ore_undo] remove lswk:gold_ore_undo
tag @e[tag=lswk:quartz_ore_undo] remove lswk:quartz_ore_undo
tag @e[tag=lswk:nether_gold_ore_undo] remove lswk:nether_gold_ore_undo
tag @e[tag=lswk:coal_ore_undo] remove lswk:diamond_ore_undo
tag @e[tag=lswk:log_0_undo] remove lswk:log_0_undo
tag @e[tag=lswk:log_1_undo] remove lswk:log_1_undo
tag @e[tag=lswk:log_2_undo] remove lswk:log_2_undo
tag @e[tag=lswk:log_3_undo] remove lswk:log_3_undo
tag @e[tag=lswk:log2_0_undo] remove lswk:log2_0_undo
tag @e[tag=lswk:log2_1_undo] remove lswk:log2_1_undo
clear @p repeating_command_block 0 1
summon armor_stand "§7§b连锁§e挖矿§7§r" ~ 32767 ~
execute @e[name="§7§b连锁§e挖矿§7§r",type=armor_stand,c=1] ~~~say §l§a已成功卸载该系统§f！
execute @e[name="§7§b连锁§e挖矿§7§r",type=armor_stand,c=1] ~~~kill
gamerule commandblockoutput true
setblock ~ ~ ~ air