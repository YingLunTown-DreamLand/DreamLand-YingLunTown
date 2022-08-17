<<<<<<< HEAD
tag @e[tag="uw:AddUnderWorld/block/TestEntity"] remove "uw:AddUnderWorld/block/TestEntity"
#tag_set
execute @a[tag="uw:AddUnderWorld/block/player"] ~ ~ ~ summon minecraft:armor_stand "uw:AddUnderWorld/block/TestEntity"
execute @e[name="uw:AddUnderWorld/block/TestEntity",type=minecraft:armor_stand] ~ ~ ~ tag @s add "uw:AddUnderWorld/block/TestEntity"
#summon_entity/entities_and_tag_set
execute @e[tag="uw:AddUnderWorld/block/TestEntity"] ~ ~ ~ tag @p[dx=0,tag="uw:AddUnderWorld/block/run"] add "uw:AddUnderWorld/block/player/AreaLoaded"
#tag_set
execute @e[tag="uw:AddUnderWorld/block/TestEntity"] ~ ~ ~ tp ~ -32767.0 ~
execute @e[tag="uw:AddUnderWorld/block/TestEntity"] ~ ~ ~ kill @s
#clean_entity/entities
execute @a[tag="uw:AddUnderWorld/block/player",tag="uw:AddUnderWorld/block/player/allow",c=1] ~ ~ ~ scoreboard objectives add uw:test_overlap dummy
execute @a[tag="uw:AddUnderWorld/block/player",tag="uw:AddUnderWorld/block/player/allow",c=1] ~ ~ ~ tag @s add "uw:AddUnderWorld/block/player/test_overlap/random"
execute @a[tag="uw:AddUnderWorld/block/player/test_overlap/random"] ~ ~ ~ summon minecraft:armor_stand "uw:AddUnderWorld/block/TestOverlapEntity"
execute @a[tag="uw:AddUnderWorld/block/player/test_overlap/random"] ~ ~ ~ tag @e[name="uw:AddUnderWorld/block/TestOverlapEntity",type=minecraft:armor_stand,dx=0] add "uw:AddUnderWorld/block/TestOverlapEntity"
execute @a[tag="uw:AddUnderWorld/block/player/test_overlap/random"] ~ ~ ~ scoreboard players add @e[tag="uw:AddUnderWorld/block/TestOverlapEntity"] uw:test_overlap 0
execute @a[tag="uw:AddUnderWorld/block/player/test_overlap/random"] ~ ~ ~ tag @s remove "uw:AddUnderWorld/block/player/test_overlap/random"
execute @a[tag="uw:AddUnderWorld/block/player",tag="uw:AddUnderWorld/block/player/allow",c=1] ~ ~ ~ execute @a[tag=uw:registered_entity,c=1] ~ ~ ~ function AddUnderWorld/test_overlap
#test_overlap
execute @a[tag="uw:AddUnderWorld/block/player",tag="uw:AddUnderWorld/block/player/allow",c=1] ~ ~ ~ summon minecraft:armor_stand uw:fix_to_middle 20000 100.5 20000
execute @a[tag="uw:AddUnderWorld/block/player",tag="uw:AddUnderWorld/block/player/allow",c=1] ~ ~ ~ tag @e[x=20000,y=100.5,z=20000,dx=0,name=uw:fix_to_middle,type=minecraft:armor_stand,c=1] add uw:fix_to_middle
execute @a[tag="uw:AddUnderWorld/block/player",tag="uw:AddUnderWorld/block/player/allow",c=1] ~ ~ ~ structure save uw:fix_to_middle 20000 100 20000 20000 100 20000 true disk false
#save_structure
execute @a[tag="uw:AddUnderWorld/block/player",tag="uw:AddUnderWorld/block/player/allow"] ~ ~ ~ structure load uw:fix_to_middle ~ ~ ~
#load_structure
execute @a[tag="uw:AddUnderWorld/block/player",tag="uw:AddUnderWorld/block/player/allow"] ~ ~ ~ execute @e[tag=uw:fix_to_middle,dx=0,c=1] ~ ~ ~ tag @s add "uw:AddUnderWorld/block/entity"
execute @a[tag="uw:AddUnderWorld/block/player",tag="uw:AddUnderWorld/block/player/allow"] ~ ~ ~ execute @e[tag=uw:fix_to_middle,dx=0,c=1] ~ ~ ~ scoreboard players add @s uw:uid 0
execute @a[tag="uw:AddUnderWorld/block/player",tag="uw:AddUnderWorld/block/player/allow"] ~ ~ ~ scoreboard players operation @e[tag=uw:fix_to_middle,dx=0,c=1,scores={uw:uid=0}] uw:uid = @s uid
execute @a[tag="uw:AddUnderWorld/block/player",tag="uw:AddUnderWorld/block/player/allow"] ~ ~ ~ execute @e[tag=uw:fix_to_middle,dx=0,c=1] ~ ~ ~ tp ~ 32767.0 ~
execute @a[tag="uw:AddUnderWorld/block/player",tag="uw:AddUnderWorld/block/player/allow"] ~ ~ ~ execute @e[tag=uw:fix_to_middle,dx=0,c=1,y=32767.0] ~ ~ ~ tag @s remove uw:fix_to_middle
#善后
execute @e[tag=uw:fix_to_middle,x=20000,y=100,z=20000,dx=0] ~ ~ ~ tp ~ -32767.0 ~
execute @e[tag=uw:fix_to_middle,x=20000,y=32767,z=20000,dx=0] ~ ~ ~ kill @s
#clean_entity
execute @a[tag="uw:AddUnderWorld/block/player",tag=!"uw:AddUnderWorld/block/player/allow"] ~ ~ ~ tellraw @s {"rawtext":[{"text":"§c无法访问世界外的方块"}]}
execute @a[tag="uw:AddUnderWorld/block/player",tag=!"uw:AddUnderWorld/block/player/allow"] ~ ~ ~ playsound random.break @s ~ ~ ~ 1 1 1
execute @a[tag="uw:AddUnderWorld/block/player",tag=!"uw:AddUnderWorld/block/player/allow"] ~ ~ ~ tag @s add "uw:AddUnderWorld/block/StructureLoadUnsuccessful"
execute @a[tag="uw:AddUnderWorld/block/player",tag="uw:AddUnderWorld/block/player/allow"] ~ ~ ~ tellraw @s {"rawtext":[{"text":"§a已成功在此处定点"}]}
execute @a[tag="uw:AddUnderWorld/block/player",tag="uw:AddUnderWorld/block/player/allow"] ~ ~ ~ playsound random.orb @s ~ ~ ~ 1 1 1
#send_messgae
execute @a[tag="uw:AddUnderWorld/block/player",tag="uw:AddUnderWorld/block/player/allow"] ~ ~ ~ tag @s add "uw:particle/block/player"
execute @a[tag="uw:AddUnderWorld/block/player",tag="uw:AddUnderWorld/block/player/allow"] ~ ~ ~ tag @s remove "uw:AddUnderWorld/block/player/allow"
execute @a[tag="uw:AddUnderWorld/block/player"] ~ ~ ~ tag @s remove "uw:AddUnderWorld/block/player"
#tag_set
execute @a[tag="uw:particle/block/player",c=1] ~ ~ ~ function particle/block
=======
tag @e[tag="uw:AddUnderWorld/block/TestEntity"] remove "uw:AddUnderWorld/block/TestEntity"
#tag_set
execute @a[tag="uw:AddUnderWorld/block/player"] ~ ~ ~ summon minecraft:armor_stand "uw:AddUnderWorld/block/TestEntity"
execute @e[name="uw:AddUnderWorld/block/TestEntity",type=minecraft:armor_stand] ~ ~ ~ tag @s add "uw:AddUnderWorld/block/TestEntity"
#summon_entity/entities_and_tag_set
execute @e[tag="uw:AddUnderWorld/block/TestEntity"] ~ ~ ~ tag @p[dx=0,tag="uw:AddUnderWorld/block/run"] add "uw:AddUnderWorld/block/player/AreaLoaded"
#tag_set
execute @e[tag="uw:AddUnderWorld/block/TestEntity"] ~ ~ ~ tp ~ -32767.0 ~
execute @e[tag="uw:AddUnderWorld/block/TestEntity"] ~ ~ ~ kill @s
#clean_entity/entities
execute @a[tag="uw:AddUnderWorld/block/player",tag="uw:AddUnderWorld/block/player/allow",c=1] ~ ~ ~ scoreboard objectives add uw:test_overlap dummy
execute @a[tag="uw:AddUnderWorld/block/player",tag="uw:AddUnderWorld/block/player/allow",c=1] ~ ~ ~ tag @s add "uw:AddUnderWorld/block/player/test_overlap/random"
execute @a[tag="uw:AddUnderWorld/block/player/test_overlap/random"] ~ ~ ~ summon minecraft:armor_stand "uw:AddUnderWorld/block/TestOverlapEntity"
execute @a[tag="uw:AddUnderWorld/block/player/test_overlap/random"] ~ ~ ~ tag @e[name="uw:AddUnderWorld/block/TestOverlapEntity",type=minecraft:armor_stand,dx=0] add "uw:AddUnderWorld/block/TestOverlapEntity"
execute @a[tag="uw:AddUnderWorld/block/player/test_overlap/random"] ~ ~ ~ scoreboard players add @e[tag="uw:AddUnderWorld/block/TestOverlapEntity"] uw:test_overlap 0
execute @a[tag="uw:AddUnderWorld/block/player/test_overlap/random"] ~ ~ ~ tag @s remove "uw:AddUnderWorld/block/player/test_overlap/random"
execute @a[tag="uw:AddUnderWorld/block/player",tag="uw:AddUnderWorld/block/player/allow",c=1] ~ ~ ~ execute @a[tag=uw:registered_entity,c=1] ~ ~ ~ function AddUnderWorld/test_overlap
#test_overlap
execute @a[tag="uw:AddUnderWorld/block/player",tag="uw:AddUnderWorld/block/player/allow",c=1] ~ ~ ~ summon minecraft:armor_stand uw:fix_to_middle 20000 100.5 20000
execute @a[tag="uw:AddUnderWorld/block/player",tag="uw:AddUnderWorld/block/player/allow",c=1] ~ ~ ~ tag @e[x=20000,y=100.5,z=20000,dx=0,name=uw:fix_to_middle,type=minecraft:armor_stand,c=1] add uw:fix_to_middle
execute @a[tag="uw:AddUnderWorld/block/player",tag="uw:AddUnderWorld/block/player/allow",c=1] ~ ~ ~ structure save uw:fix_to_middle 20000 100 20000 20000 100 20000 true disk false
#save_structure
execute @a[tag="uw:AddUnderWorld/block/player",tag="uw:AddUnderWorld/block/player/allow"] ~ ~ ~ structure load uw:fix_to_middle ~ ~ ~
#load_structure
execute @a[tag="uw:AddUnderWorld/block/player",tag="uw:AddUnderWorld/block/player/allow"] ~ ~ ~ execute @e[tag=uw:fix_to_middle,dx=0,c=1] ~ ~ ~ tag @s add "uw:AddUnderWorld/block/entity"
execute @a[tag="uw:AddUnderWorld/block/player",tag="uw:AddUnderWorld/block/player/allow"] ~ ~ ~ execute @e[tag=uw:fix_to_middle,dx=0,c=1] ~ ~ ~ scoreboard players add @s uw:uid 0
execute @a[tag="uw:AddUnderWorld/block/player",tag="uw:AddUnderWorld/block/player/allow"] ~ ~ ~ scoreboard players operation @e[tag=uw:fix_to_middle,dx=0,c=1,scores={uw:uid=0}] uw:uid = @s uid
execute @a[tag="uw:AddUnderWorld/block/player",tag="uw:AddUnderWorld/block/player/allow"] ~ ~ ~ execute @e[tag=uw:fix_to_middle,dx=0,c=1] ~ ~ ~ tp ~ 32767.0 ~
execute @a[tag="uw:AddUnderWorld/block/player",tag="uw:AddUnderWorld/block/player/allow"] ~ ~ ~ execute @e[tag=uw:fix_to_middle,dx=0,c=1,y=32767.0] ~ ~ ~ tag @s remove uw:fix_to_middle
#善后
execute @e[tag=uw:fix_to_middle,x=20000,y=100,z=20000,dx=0] ~ ~ ~ tp ~ -32767.0 ~
execute @e[tag=uw:fix_to_middle,x=20000,y=32767,z=20000,dx=0] ~ ~ ~ kill @s
#clean_entity
execute @a[tag="uw:AddUnderWorld/block/player",tag=!"uw:AddUnderWorld/block/player/allow"] ~ ~ ~ tellraw @s {"rawtext":[{"text":"§c无法访问世界外的方块"}]}
execute @a[tag="uw:AddUnderWorld/block/player",tag=!"uw:AddUnderWorld/block/player/allow"] ~ ~ ~ playsound random.break @s ~ ~ ~ 1 1 1
execute @a[tag="uw:AddUnderWorld/block/player",tag=!"uw:AddUnderWorld/block/player/allow"] ~ ~ ~ tag @s add "uw:AddUnderWorld/block/StructureLoadUnsuccessful"
execute @a[tag="uw:AddUnderWorld/block/player",tag="uw:AddUnderWorld/block/player/allow"] ~ ~ ~ tellraw @s {"rawtext":[{"text":"§a已成功在此处定点"}]}
execute @a[tag="uw:AddUnderWorld/block/player",tag="uw:AddUnderWorld/block/player/allow"] ~ ~ ~ playsound random.orb @s ~ ~ ~ 1 1 1
#send_messgae
execute @a[tag="uw:AddUnderWorld/block/player",tag="uw:AddUnderWorld/block/player/allow"] ~ ~ ~ tag @s add "uw:particle/block/player"
execute @a[tag="uw:AddUnderWorld/block/player",tag="uw:AddUnderWorld/block/player/allow"] ~ ~ ~ tag @s remove "uw:AddUnderWorld/block/player/allow"
execute @a[tag="uw:AddUnderWorld/block/player"] ~ ~ ~ tag @s remove "uw:AddUnderWorld/block/player"
#tag_set
execute @a[tag="uw:particle/block/player",c=1] ~ ~ ~ function particle/block
>>>>>>> d95f919c53aa8612409504198bbed77f930d5f64
#particle/block