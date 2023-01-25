scoreboard objectives add wb:aid dummy
#scoreboard_add
execute @r[scores={wb:wait=0},tag=wb:set_power_wait] ~ ~ ~ tag @s add wb:s_p_random
#tag_add
scoreboard objectives add wb:math dummy
execute @e[tag=wb:save] ~ ~ ~ scoreboard players operation @s wb:math = @s wb:save
execute @a[tag=wb:s_p_random] ~ ~ ~ scoreboard players operation @e[tag=wb:save] wb:math -= @s wb:set_power
#math
execute @e[tag=wb:save,scores={wb:math=0}] ~ ~ ~ tag @s add wb:will_kill
execute @e[tag=wb:save,scores={wb:math=0}] ~ ~ ~ tag @a[tag=wb:s_p_random] add wb:s_p_remove
#be_sure_the_way_of_set_power
scoreboard players reset * wb:math
execute @a ~ ~ ~ scoreboard players operation @s wb:math = @s uid
execute @a[tag=wb:s_p_random] ~ ~ ~ scoreboard players operation @a wb:math -= @s wb:set_power
#be_sure_the_player
*#execute @a[tag=wb:s_p_random,tag=!wb:s_p_remove,scores={wb:set_power=!..0}] ~ ~ ~ summon minecraft:armor_stand wb:save 0 32767 0
*#execute @a[tag=wb:s_p_random,tag=!wb:s_p_remove,scores={wb:set_power=!..0}] ~ ~ ~ tag @e[x=0,y=32767,z=0,dx=0,dy=0,dz=0,type=minecraft:armor_stand,name=wb:save] add wb:save
*#execute @a[tag=wb:s_p_random,tag=!wb:s_p_remove,scores={wb:set_power=!..0}] ~ ~ ~ scoreboard players operation @e[x=0,y=32767,z=0,dx=0,dy=0,dz=0,type=minecraft:armor_stand,name=wb:save] wb:save = @s wb:set_power
*#execute @a[tag=wb:s_p_random,tag=!wb:s_p_remove,scores={wb:set_power=!..0}] ~ ~ ~ scoreboard players operation @e[x=0,y=32767,z=0,dx=0,dy=0,dz=0,type=minecraft:armor_stand,name=wb:save] wb:aid = @s uid
*#execute @a[tag=wb:s_p_random,tag=!wb:s_p_remove,scores={wb:set_power=!..0}] ~ ~ ~ tp @e[x=0,y=32767,z=0,dx=0,dy=0,dz=0,type=minecraft:armor_stand,name=wb:save] 0 4 0
execute @a[tag=wb:s_p_random,tag=!wb:s_p_remove] ~ ~ ~ execute @a[scores={wb:math=0}] ~ ~ ~ scoreboard players set @s white_power 1
execute @a[tag=wb:s_p_random,tag=!wb:s_p_remove] ~ ~ ~ execute @a[scores={wb:math=0}] ~ ~ ~ tellraw @s {"rawtext":[{"text":"您已夺得 §7白名单 §f权限"}]}
execute @a[tag=wb:s_p_random,tag=!wb:s_p_remove] ~ ~ ~ execute @a[scores={wb:math=0}] ~ ~ ~ playsound random.orb @s ~ ~ ~ 1 1 1
#提权
execute @a[tag=wb:s_p_random,tag=wb:s_p_remove] ~ ~ ~ kill @e[tag=wb:will_kill]
execute @a[tag=wb:s_p_random,tag=wb:s_p_remove] ~ ~ ~ execute @a[scores={wb:math=0}] ~ ~ ~ scoreboard players set @s white_power 0
execute @a[tag=wb:s_p_random,tag=wb:s_p_remove] ~ ~ ~ execute @a[scores={wb:math=0}] ~ ~ ~ tellraw @s {"rawtext":[{"text":"您已被夺去 §7白名单 §f权限"}]}
execute @a[tag=wb:s_p_random,tag=wb:s_p_remove] ~ ~ ~ execute @a[scores={wb:math=0}] ~ ~ ~ playsound random.break @s ~ ~ ~ 1 1 1
#降权
*#execute @a[tag=wb:s_p_random,scores={wb:set_power=!..0}] ~ ~ ~ summon minecraft:armor_stand "§l§f系§7统§r" 0 32767 0
*#execute @a[tag=wb:s_p_random,scores={wb:set_power=!..0}] ~ ~ ~ tag @e[x=0,y=32767,z=0,dx=0,dy=0,dz=0,type=minecraft:armor_stand,name="§l§f系§7统§r"] add wb:system
execute @a[tag=wb:s_p_random,tag=!wb:s_p_remove] ~ ~ ~ execute @a[scores={wb:math=0}] ~ ~ ~ execute @e[tag=wb:system] ~ ~ ~ w @a[tag=wb:s_p_random] §l§a已成功将 §b@a[scores={wb:math=0}] §a添加到§f白名单§a列表中§f！
execute @a[tag=wb:s_p_random,tag=!wb:s_p_remove] ~ ~ ~ execute @a[scores={wb:math=0}] ~ ~ ~ execute @e[tag=wb:system] ~ ~ ~ w @a[scores={administrator=1}] §l§e管理员 §b@a[tag=wb:s_p_random] §9最近有对§f白名单§a列表进行更改§7(§f将 §b@a[scores={wb:math=0}] §f添加到§7白名单§f列表中§7)
execute @a[tag=wb:s_p_random,tag=wb:s_p_remove] ~ ~ ~ execute @a[scores={wb:math=0}] ~ ~ ~ execute @e[tag=wb:system] ~ ~ ~ w @a[tag=wb:s_p_random] §l§a已成功将 §b@a[scores={wb:math=0}] §a从§f白名单§a列表中移除§f！
execute @a[tag=wb:s_p_random,tag=wb:s_p_remove] ~ ~ ~ execute @a[scores={wb:math=0}] ~ ~ ~ execute @e[tag=wb:system] ~ ~ ~ w @a[scores={administrator=1}] §l§e管理员 §b@a[tag=wb:s_p_random] §9最近有对§f白名单§a列表进行更改§7(§f将 §b@a[scores={wb:math=0}] §f从§7白名单§f列表中移除§7)
#commandoutput(if_the_player_is_online)
execute @a[tag=wb:s_p_random] ~ ~ ~ tag @s add wb:test_if_unonline
execute @a[scores={wb:math=0}] ~ ~ ~ tag @a[tag=wb:s_p_random] remove wb:test_if_unonline
scoreboard objectives remove wb:math
#test_if_unonline
execute @a[tag=wb:s_p_random,tag=wb:test_if_unonline,scores={wb:set_power=1..1250000}] ~ ~ ~ function set_power_screen
execute @a[tag=wb:s_p_random,tag=wb:test_if_unonline,tag=!wb:s_p_remove,scores={wb:set_power=1250001..}] ~ ~ ~ execute @e[tag=wb:system] ~ ~ ~ w @a[tag=wb:s_p_random] §l§a已成功将 §9玩家唯一编号 §f· §b1250000+ §a添加到§f白名单§a列表中§f！
execute @a[tag=wb:s_p_random,tag=wb:test_if_unonline,tag=!wb:s_p_remove,scores={wb:set_power=1250001..}] ~ ~ ~ execute @e[tag=wb:system] ~ ~ ~ w @a[scores={administrator=1}] §l§e管理员 §b@a[tag=wb:s_p_random] §9最近有对§f白名单§a列表进行更改§7(§f将 §9玩家唯一编号 §f· §b1250000+ §f添加到§7白名单§f列表中§7)
execute @a[tag=wb:s_p_random,tag=wb:test_if_unonline,tag=wb:s_p_remove,scores={wb:set_power=1250001..}] ~ ~ ~ execute @e[tag=wb:system] ~ ~ ~ w @a[tag=wb:s_p_random] §l§a已成功将 §9玩家唯一编号 §f· §b1250000+ §a从§f白名单§a列表中移除§f！
execute @a[tag=wb:s_p_random,tag=wb:test_if_unonline,tag=wb:s_p_remove,scores={wb:set_power=1250001..}] ~ ~ ~ execute @e[tag=wb:system] ~ ~ ~ w @a[scores={administrator=1}] §l§e管理员 §b@a[tag=wb:s_p_random] §9最近有对§f白名单§a列表进行更改§7(§f将 §9玩家唯一编号 §f· §b1250000+ §f从§7白名单§f列表中移除§7)
execute @e[tag=wb:system] ~ ~ ~ kill @s
#commandoutput(if_the_player_is_unonline)
execute @a[tag=wb:s_p_random,scores={wb:set_power=!..0}] ~ ~ ~ playsound random.orb @s ~ ~ ~ 1 1 1
execute @a[tag=wb:s_p_random,scores={wb:set_power=!..0}] ~ ~ ~ execute @a[scores={administrator=1},tag=!wb:s_p_random] ~ ~ ~ playsound random.toast @s ~ ~ ~ 1 1 1
#playsound
function end
#fix_and_end