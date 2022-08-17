scoreboard objectives add wb:screen dummy
scoreboard objectives add wb:screen_math dummy
#scoreboards_add
*#summon minecraft:armor_stand "0" 0 32767 0
*#summon minecraft:armor_stand "1" 0 32767 0
*#summon minecraft:armor_stand "2" 0 32767 0
*#summon minecraft:armor_stand "3" 0 32767 0
*#summon minecraft:armor_stand "4" 0 32767 0
*#summon minecraft:armor_stand "5" 0 32767 0
*#summon minecraft:armor_stand "6" 0 32767 0
*#summon minecraft:armor_stand "7" 0 32767 0
*#summon minecraft:armor_stand "8" 0 32767 0
*#summon minecraft:armor_stand "9" 0 32767 0
scoreboard players set shi wb:screen 10
scoreboard players set bai wb:screen 100
scoreboard players set qian wb:screen 1000
scoreboard players set wan wb:screen 10000
scoreboard players set shiwan wb:screen 100000
scoreboard players set baiwan wb:screen 1000000
*#scoreboard players set @e[name="0",type=minecraft:armor_stand,x=0,y=32767,z=0,dx=0,dy=0,dz=0] wb:screen 0
*#scoreboard players set @e[name="1",type=minecraft:armor_stand,x=0,y=32767,z=0,dx=0,dy=0,dz=0] wb:screen 1
*#scoreboard players set @e[name="2",type=minecraft:armor_stand,x=0,y=32767,z=0,dx=0,dy=0,dz=0] wb:screen 2
*#scoreboard players set @e[name="3",type=minecraft:armor_stand,x=0,y=32767,z=0,dx=0,dy=0,dz=0] wb:screen 3
*#scoreboard players set @e[name="4",type=minecraft:armor_stand,x=0,y=32767,z=0,dx=0,dy=0,dz=0] wb:screen 4
*#scoreboard players set @e[name="5",type=minecraft:armor_stand,x=0,y=32767,z=0,dx=0,dy=0,dz=0] wb:screen 5
*#scoreboard players set @e[name="6",type=minecraft:armor_stand,x=0,y=32767,z=0,dx=0,dy=0,dz=0] wb:screen 6
*#scoreboard players set @e[name="7",type=minecraft:armor_stand,x=0,y=32767,z=0,dx=0,dy=0,dz=0] wb:screen 7
*#scoreboard players set @e[name="8",type=minecraft:armor_stand,x=0,y=32767,z=0,dx=0,dy=0,dz=0] wb:screen 8
*#scoreboard players set @e[name="9",type=minecraft:armor_stand,x=0,y=32767,z=0,dx=0,dy=0,dz=0] wb:screen 9
#summon_and_base_setting
execute @a[tag=wb:s_p_random,tag=wb:test_if_unonline] ~ ~ ~ scoreboard players operation @s wb:screen_math = @s wb:set_power
execute @a[tag=wb:s_p_random,tag=wb:test_if_unonline] ~ ~ ~ execute @e[scores={wb:screen=0..9},type=minecraft:armor_stand] ~ ~ ~ scoreboard players operation @s wb:screen_math = @s wb:screen
execute @a[tag=wb:s_p_random,tag=wb:test_if_unonline] ~ ~ ~ scoreboard players operation @s wb:screen_math %= shi wb:screen
execute @a[tag=wb:s_p_random,tag=wb:test_if_unonline] ~ ~ ~ scoreboard players operation @e[scores={wb:screen=0..9},type=minecraft:armor_stand] wb:screen_math -= @s wb:screen_math
execute @a[tag=wb:s_p_random,tag=wb:test_if_unonline] ~ ~ ~ tag @e[scores={wb:screen_math=0},type=minecraft:armor_stand] add wb:screen_ge
#ge
execute @a[tag=wb:s_p_random,tag=wb:test_if_unonline] ~ ~ ~ scoreboard players operation @s wb:screen_math = @s wb:set_power
execute @a[tag=wb:s_p_random,tag=wb:test_if_unonline] ~ ~ ~ execute @e[scores={wb:screen=0..9},type=minecraft:armor_stand] ~ ~ ~ scoreboard players operation @s wb:screen_math = @s wb:screen
execute @a[tag=wb:s_p_random,tag=wb:test_if_unonline] ~ ~ ~ scoreboard players operation @s wb:screen_math /= shi wb:screen
execute @a[tag=wb:s_p_random,tag=wb:test_if_unonline] ~ ~ ~ scoreboard players operation @s wb:screen_math %= shi wb:screen
execute @a[tag=wb:s_p_random,tag=wb:test_if_unonline] ~ ~ ~ scoreboard players operation @e[scores={wb:screen=0..9},type=minecraft:armor_stand] wb:screen_math -= @s wb:screen_math
execute @a[tag=wb:s_p_random,tag=wb:test_if_unonline] ~ ~ ~ tag @e[scores={wb:screen_math=0},type=minecraft:armor_stand] add wb:screen_shi
#shi
execute @a[tag=wb:s_p_random,tag=wb:test_if_unonline] ~ ~ ~ scoreboard players operation @s wb:screen_math = @s wb:set_power
execute @a[tag=wb:s_p_random,tag=wb:test_if_unonline] ~ ~ ~ execute @e[scores={wb:screen=0..9},type=minecraft:armor_stand] ~ ~ ~ scoreboard players operation @s wb:screen_math = @s wb:screen
execute @a[tag=wb:s_p_random,tag=wb:test_if_unonline] ~ ~ ~ scoreboard players operation @s wb:screen_math /= bai wb:screen
execute @a[tag=wb:s_p_random,tag=wb:test_if_unonline] ~ ~ ~ scoreboard players operation @s wb:screen_math %= shi wb:screen
execute @a[tag=wb:s_p_random,tag=wb:test_if_unonline] ~ ~ ~ scoreboard players operation @e[scores={wb:screen=0..9},type=minecraft:armor_stand] wb:screen_math -= @s wb:screen_math
execute @a[tag=wb:s_p_random,tag=wb:test_if_unonline] ~ ~ ~ tag @e[scores={wb:screen_math=0},type=minecraft:armor_stand] add wb:screen_bai
#bai
execute @a[tag=wb:s_p_random,tag=wb:test_if_unonline] ~ ~ ~ scoreboard players operation @s wb:screen_math = @s wb:set_power
execute @a[tag=wb:s_p_random,tag=wb:test_if_unonline] ~ ~ ~ execute @e[scores={wb:screen=0..9},type=minecraft:armor_stand] ~ ~ ~ scoreboard players operation @s wb:screen_math = @s wb:screen
execute @a[tag=wb:s_p_random,tag=wb:test_if_unonline] ~ ~ ~ scoreboard players operation @s wb:screen_math /= qian wb:screen
execute @a[tag=wb:s_p_random,tag=wb:test_if_unonline] ~ ~ ~ scoreboard players operation @s wb:screen_math %= shi wb:screen
execute @a[tag=wb:s_p_random,tag=wb:test_if_unonline] ~ ~ ~ scoreboard players operation @e[scores={wb:screen=0..9},type=minecraft:armor_stand] wb:screen_math -= @s wb:screen_math
execute @a[tag=wb:s_p_random,tag=wb:test_if_unonline] ~ ~ ~ tag @e[scores={wb:screen_math=0},type=minecraft:armor_stand] add wb:screen_qian
#qian
execute @a[tag=wb:s_p_random,tag=wb:test_if_unonline] ~ ~ ~ scoreboard players operation @s wb:screen_math = @s wb:set_power
execute @a[tag=wb:s_p_random,tag=wb:test_if_unonline] ~ ~ ~ execute @e[scores={wb:screen=0..9},type=minecraft:armor_stand] ~ ~ ~ scoreboard players operation @s wb:screen_math = @s wb:screen
execute @a[tag=wb:s_p_random,tag=wb:test_if_unonline] ~ ~ ~ scoreboard players operation @s wb:screen_math /= wan wb:screen
execute @a[tag=wb:s_p_random,tag=wb:test_if_unonline] ~ ~ ~ scoreboard players operation @s wb:screen_math %= shi wb:screen
execute @a[tag=wb:s_p_random,tag=wb:test_if_unonline] ~ ~ ~ scoreboard players operation @e[scores={wb:screen=0..9},type=minecraft:armor_stand] wb:screen_math -= @s wb:screen_math
execute @a[tag=wb:s_p_random,tag=wb:test_if_unonline] ~ ~ ~ tag @e[scores={wb:screen_math=0},type=minecraft:armor_stand] add wb:screen_wan
#wan
execute @a[tag=wb:s_p_random,tag=wb:test_if_unonline] ~ ~ ~ scoreboard players operation @s wb:screen_math = @s wb:set_power
execute @a[tag=wb:s_p_random,tag=wb:test_if_unonline] ~ ~ ~ execute @e[scores={wb:screen=0..9},type=minecraft:armor_stand] ~ ~ ~ scoreboard players operation @s wb:screen_math = @s wb:screen
execute @a[tag=wb:s_p_random,tag=wb:test_if_unonline] ~ ~ ~ scoreboard players operation @s wb:screen_math /= shiwan wb:screen
execute @a[tag=wb:s_p_random,tag=wb:test_if_unonline] ~ ~ ~ scoreboard players operation @s wb:screen_math %= shi wb:screen
execute @a[tag=wb:s_p_random,tag=wb:test_if_unonline] ~ ~ ~ scoreboard players operation @e[scores={wb:screen=0..9},type=minecraft:armor_stand] wb:screen_math -= @s wb:screen_math
execute @a[tag=wb:s_p_random,tag=wb:test_if_unonline] ~ ~ ~ tag @e[scores={wb:screen_math=0},type=minecraft:armor_stand] add wb:screen_shiwan
#shiwan
execute @a[tag=wb:s_p_random,tag=wb:test_if_unonline] ~ ~ ~ scoreboard players operation @s wb:screen_math = @s wb:set_power
execute @a[tag=wb:s_p_random,tag=wb:test_if_unonline] ~ ~ ~ execute @e[scores={wb:screen=0..9},type=minecraft:armor_stand] ~ ~ ~ scoreboard players operation @s wb:screen_math = @s wb:screen
execute @a[tag=wb:s_p_random,tag=wb:test_if_unonline] ~ ~ ~ scoreboard players operation @s wb:screen_math /= baiwan wb:screen
execute @a[tag=wb:s_p_random,tag=wb:test_if_unonline] ~ ~ ~ scoreboard players operation @s wb:screen_math %= shi wb:screen
execute @a[tag=wb:s_p_random,tag=wb:test_if_unonline] ~ ~ ~ scoreboard players operation @e[scores={wb:screen=0..9},type=minecraft:armor_stand] wb:screen_math -= @s wb:screen_math
execute @a[tag=wb:s_p_random,tag=wb:test_if_unonline] ~ ~ ~ tag @e[scores={wb:screen_math=0},type=minecraft:armor_stand] add wb:screen_baiwan
#baiwan
execute @e[tag=wb:screen_baiwan,scores={wb:screen=0}] ~ ~ ~ execute @e[tag=wb:screen_shiwan,scores={wb:screen=0}] ~ ~ ~ execute @e[tag=wb:screen_wan,scores={wb:screen=0}] ~ ~ ~ execute @e[tag=wb:screen_qian,scores={wb:screen=0}] ~ ~ ~ execute @e[tag=wb:screen_bai,scores={wb:screen=0}] ~ ~ ~ execute @e[tag=wb:screen_shi,scores={wb:screen=0}] ~ ~ ~ tag @s remove wb:screen_shi
execute @e[tag=wb:screen_baiwan,scores={wb:screen=0}] ~ ~ ~ execute @e[tag=wb:screen_shiwan,scores={wb:screen=0}] ~ ~ ~ execute @e[tag=wb:screen_wan,scores={wb:screen=0}] ~ ~ ~ execute @e[tag=wb:screen_qian,scores={wb:screen=0}] ~ ~ ~ execute @e[tag=wb:screen_bai,scores={wb:screen=0}] ~ ~ ~ tag @s remove wb:screen_bai
execute @e[tag=wb:screen_baiwan,scores={wb:screen=0}] ~ ~ ~ execute @e[tag=wb:screen_shiwan,scores={wb:screen=0}] ~ ~ ~ execute @e[tag=wb:screen_wan,scores={wb:screen=0}] ~ ~ ~ execute @e[tag=wb:screen_qian,scores={wb:screen=0}] ~ ~ ~ tag @s remove wb:screen_qian
execute @e[tag=wb:screen_baiwan,scores={wb:screen=0}] ~ ~ ~ execute @e[tag=wb:screen_shiwan,scores={wb:screen=0}] ~ ~ ~ execute @e[tag=wb:screen_wan,scores={wb:screen=0}] ~ ~ ~ tag @s remove wb:screen_wan
execute @e[tag=wb:screen_baiwan,scores={wb:screen=0}] ~ ~ ~ execute @e[tag=wb:screen_shiwan,scores={wb:screen=0}] ~ ~ ~ tag @s remove wb:screen_shiwan
execute @e[tag=wb:screen_baiwan,scores={wb:screen=0}] ~ ~ ~ tag @s remove wb:screen_baiwan
#delete_unneed_zero
execute @a[tag=wb:s_p_random,tag=wb:test_if_unonline,tag=!wb:s_p_remove] ~ ~ ~ execute @e[tag=wb:system] ~ ~ ~ w @a[tag=wb:s_p_random] §l§a已成功将 §9玩家唯一编号 §f· §b@e[tag=wb:screen_baiwan]@e[tag=wb:screen_shiwan]@e[tag=wb:screen_wan]@e[tag=wb:screen_qian]@e[tag=wb:screen_bai]@e[tag=wb:screen_shi]@e[tag=wb:screen_ge] §a添加到§f白名单§a列表中§f！
execute @a[tag=wb:s_p_random,tag=wb:test_if_unonline,tag=!wb:s_p_remove] ~ ~ ~ execute @e[tag=wb:system] ~ ~ ~ w @a[scores={administrator=1}] §l§e管理员 §b@a[tag=wb:s_p_random] §9最近有对§f白名单§a列表进行更改§7(§f将 §9玩家唯一编号 §f· §b@e[tag=wb:screen_baiwan]@e[tag=wb:screen_shiwan]@e[tag=wb:screen_wan]@e[tag=wb:screen_qian]@e[tag=wb:screen_bai]@e[tag=wb:screen_shi]@e[tag=wb:screen_ge] §f添加到§7白名单§f列表中§7)
execute @a[tag=wb:s_p_random,tag=wb:test_if_unonline,tag=wb:s_p_remove] ~ ~ ~ execute @e[tag=wb:system] ~ ~ ~ w @a[tag=wb:s_p_random] §l§a已成功将 §9玩家唯一编号 §f· §b@e[tag=wb:screen_baiwan]@e[tag=wb:screen_shiwan]@e[tag=wb:screen_wan]@e[tag=wb:screen_qian]@e[tag=wb:screen_bai]@e[tag=wb:screen_shi]@e[tag=wb:screen_ge] §a从§f白名单§a列表中移除§f！
execute @a[tag=wb:s_p_random,tag=wb:test_if_unonline,tag=wb:s_p_remove] ~ ~ ~ execute @e[tag=wb:system] ~ ~ ~ w @a[scores={administrator=1}] §l§e管理员 §b@a[tag=wb:s_p_random] §9最近有对§f白名单§a列表进行更改§7(§f将 §9玩家唯一编号 §f· §b@e[tag=wb:screen_baiwan]@e[tag=wb:screen_shiwan]@e[tag=wb:screen_wan]@e[tag=wb:screen_qian]@e[tag=wb:screen_bai]@e[tag=wb:screen_shi]@e[tag=wb:screen_ge] §f从§7白名单§f列表中移除§7)
execute @a[tag=wb:s_p_random,tag=wb:test_if_unonline] ~ ~ ~ kill @e[scores={wb:screen=0..9},type=minecraft:armor_stand]
#screen_message
scoreboard objectives remove wb:screen
scoreboard objectives remove wb:screen_math
#scoreboards_remove