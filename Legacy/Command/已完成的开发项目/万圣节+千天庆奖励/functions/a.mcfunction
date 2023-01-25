scoreboard objectives add gift dummy
scoreboard objectives add gift_type dummy
scoreboard objectives add gift_js dummy
scoreboard objectives add gift_got dummy
#Start
scoreboard players add @a gift_got 0
scoreboard players set @a[tag=gift_test,scores={gift_got=!-1}] gift_got 1
scoreboard players add @a[scores={gift_got=1..441}] gift_got 1
tag @a[tag=gift_test] remove gift_test
#新上线的玩家都会获得标签gift_test，依赖于白名单系统的重上线检测机制
tag @r[scores={gift_got=441}] add gift_test_random
scoreboard players reset * gift_js
execute @a[tag=gift_test_random] ~ ~ ~ execute @e[tag=gift_armor_stand] ~ ~ ~ scoreboard players operation @s gift_js = @s gift
scoreboard players operation @e[tag=gift_armor_stand] gift_js -= @a[tag=gift_test_random] uid
#千天庆（gift_type=1）：
execute @e[tag=gift_armor_stand,scores={gift_js=0,gift_type=1}] ~ ~ ~ give @a[tag=gift_test_random] emerald 648
execute @e[tag=gift_armor_stand,scores={gift_js=0,gift_type=1}] ~ ~ ~ tellraw @a[tag=gift_test_random] {"rawtext":[{"text":"§l§f『§a千天庆§f』§2奖励已发放§f(§2绿宝石§f*§b648§f)§7~\n§e英伦小镇§6周年庆§f，§c感谢有你§f！"}]}
execute @e[tag=gift_armor_stand,scores={gift_js=0,gift_type=1}] ~ ~ ~ execute @a[tag=gift_test_random] ~ ~ ~ playsound record.chirp
execute @e[tag=gift_armor_stand,scores={gift_js=0,gift_type=1}] ~ ~ ~ execute @a[tag=gift_test_random] ~ ~ ~ particle minecraft:critical_hit_emitter ~~2~
#万圣节（gift_type=2/3）：
execute @e[tag=gift_armor_stand,scores={gift_js=0,gift_type=2}] ~ ~ ~ give @a[tag=gift_test_random] pumpkin 16
 execute @e[tag=gift_armor_stand,scores={gift_js=0,gift_type=2}] ~ ~ ~ clone xyz xyz xyz
 execute @e[tag=gift_armor_stand,scores={gift_js=0,gift_type=2}] ~ ~ ~ setblock xyz air 0 destroy
 execute @e[tag=gift_armor_stand,scores={gift_js=0,gift_type=2}] ~ ~ ~ tp @e[name="§r§l§f蜡§7烛",type=item] @a[tag=gift_test_random]
 execute @e[tag=gift_armor_stand,scores={gift_js=0,gift_type=2}] ~ ~ ~ kill @e[name=箱子,type=item,x=,y=,z=,r=,c=1]
execute @e[tag=gift_armor_stand,scores={gift_js=0,gift_type=2}] ~ ~ ~ give @a[tag=gift_test_random] lit_pumpkin 10
execute @e[tag=gift_armor_stand,scores={gift_js=0,gift_type=2}] ~ ~ ~ give @a[tag=gift_test_random] diamond 3
execute @e[tag=gift_armor_stand,scores={gift_js=0,gift_type=2}] ~ ~ ~ tellraw @a[tag=gift_test_random] {"rawtext":[{"text":"§l§f『§4万§c圣§d节§f』§a奖励§f(§f§7基础§f)§a已发放§f：\n§e南瓜§f*§b16\n§6蜡烛§f(§7火把§f)§7*§b32\n§c南瓜灯§f*§b10\n§9钻石§f*§b3\n§a感谢您在万圣节期间的即将参与§f，§2后会有期§f~"}]}
execute @e[tag=gift_armor_stand,scores={gift_js=0,gift_type=2},tag=!"gift_type=3"] ~ ~ ~ execute @a[tag=gift_test_random] ~ ~ ~ playsound random.levelup
execute @e[tag=gift_armor_stand,scores={gift_js=0,gift_type=2},tag=!"gift_type=3"] ~ ~ ~ execute @a[tag=gift_test_random] ~ ~ ~ particle minecraft:splash_spell_emitter ~ ~1 ~
execute @e[tag=gift_armor_stand,scores={gift_js=0,gift_type=3}] ~ ~ ~ xp 1031 @a[tag=gift_test_random]
execute @e[tag=gift_armor_stand,scores={gift_js=0,gift_type=3}] ~ ~ ~ tellraw @a[tag=gift_test_random] {"rawtext":[{"text":"§l§f『§7万圣节§f』§c额外奖励已发放§f——§e经验值§f*§b1§f,§b031\n§6正是有了您的活跃§f，§9服务器的万圣节才有此壮举§f！§d期待与您再次相会§f，§4生生不息§f！"}]}
execute @e[tag=gift_armor_stand,scores={gift_js=0,gift_type=3}] ~ ~ ~ execute @a[tag=gift_test_random] ~ ~ ~ playsound beacon.activate
execute @e[tag=gift_armor_stand,scores={gift_js=0,gift_type=3}] ~ ~ ~ execute @a[tag=gift_test_random] ~ ~ ~ particle minecraft:knockback_roar_particle ~ ~1.5 ~
kill @e[tag=gift_armor_stand,scores={gift_js=0}]
scoreboard players set @a[tag=gift_test_random] gift_got -1
tag @a[tag=gift_test_random] remove gift_test_random