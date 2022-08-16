execute @e[tag="uw:AddUnderWorld/block/TestOverlapEntity",scores={uw:test_overlap=0}] ~ ~ ~ tag @a[tag="uw:AddUnderWorld/test_overlap/player",c=1] add "uw:AddUnderWorld/test_overlap/player/random"
execute @e[tag="uw:AddUnderWorld/block/TestOverlapEntity",scores={uw:test_overlap=0}] ~ ~ ~ scoreboard players set @s uw:test_overlap 1
#choose_player
execute @a[tag="uw:AddUnderWorld/test_overlap/player/random",tag=!"uw:AddUnderWorld/test_overlap/player/GetList"] ~ ~ ~ tag @e[r=23.5,tag=uw:registered_entity] add "uw:AddUnderWorld/test_overlap/EntityList"
execute @a[tag="uw:AddUnderWorld/test_overlap/player/random",tag=!"uw:AddUnderWorld/test_overlap/player/GetList"] ~ ~ ~ tag @s add "uw:AddUnderWorld/test_overlap/player/GetList"
#get_list
execute @a[tag="uw:AddUnderWorld/test_overlap/player/random"] ~ ~ ~ execute @e[tag="uw:AddUnderWorld/test_overlap/EntityList",c=1] ~ ~ ~ tag @s add "uw:AddUnderWorld/test_overlap/EntityList/random"
execute @e[tag="uw:AddUnderWorld/test_overlap/EntityList/random"] ~ ~ ~ execute @e[tag="uw:AddUnderWorld/test_overlap/EntityList",tag=!"uw:AddUnderWorld/test_overlap/EntityList/random"] ~ ~ ~ scoreboard players operation @s uw:test_overlap = @s uw:uid
execute @e[tag="uw:AddUnderWorld/test_overlap/EntityList/random"] ~ ~ ~ execute @e[tag="uw:AddUnderWorld/test_overlap/EntityList",tag=!"uw:AddUnderWorld/test_overlap/EntityList/random"] ~ ~ ~ scoreboard players operation @s uw:test_overlap -= @e[tag="uw:AddUnderWorld/test_overlap/EntityList/random"] uw:uid
#得到一个地皮中对应的一组实体
execute @e[scores={uw:test_overlap=0},tag=execute @e[tag="uw:AddUnderWorld/test_overlap/EntityList/random",tag="uw:EntityData/facing/xz+"] ~ ~ ~ 