<<<<<<< HEAD
scoreboard objectives add uw:ls_math dummy
#scoreboard_add
execute @a[tag="uw:particle/block/player"] ~ ~ ~ scoreboard players set @s uw:ls_math -1
execute @a[tag="uw:particle/block/player"] ~ ~ ~ scoreboard players operation @s uw:ls_math -= @a[tag="uw:particle/block/player",scores={uw:ls_math=-1},c=2,dx=0,y=-300000000,dy=60000000]
execute @a[tag="uw:particle/block/player",scores={uw:ls_math=!0}] ~ ~ ~ tag @s add "uw:particle/block/player/UnNeedLoadStructure"
scoreboard objectives remove uw:ls_math
#筛选出在y=-300000000到3000000中1格内的玩家并删除计分板
execute @a[tag="uw:particle/block/player",tag=!"uw:particle/block/player/UnNeedLoadStructure"] ~ ~ ~ structure load uw:structure_block ~ 0 ~
#load_structure_block
execute @a[tag="uw:particle/block/player",tag=!"uw:particle/block/player/UnNeedLoadStructure"] ~ ~ ~ structure load uw:fix_to_middle ~ 0 ~
#load_structure
execute @a[tag="uw:particle/block/player",tag=!"uw:particle/block/player/UnNeedLoadStructure"] ~ ~ ~ execute @e[tag=uw:fix_to_middle,c=1,y=0,dx=0] ~ ~ ~ tag @s add "uw:particle/block/ergodic"
execute @a[tag="uw:particle/block/player",tag=!"uw:particle/block/player/UnNeedLoadStructure"] ~ ~ ~ execute @e[tag=uw:fix_to_middle,c=1,y=0,dx=0] ~ ~ ~ tag @s remove uw:fix_to_middle
execute @a[tag="uw:particle/block/player",tag="uw:particle/block/player/UnNeedLoadStructure"] ~ ~ ~ tag @s remove "uw:particle/block/player/UnNeedLoadStructure"
#善后
execute @e[tag=uw:fix_to_middle,x=20000,y=100,z=20000,dx=0] ~ ~ ~ tp ~ 32767.0 ~
execute @e[tag=uw:fix_to_middle,x=20000,y=32767,z=20000,dx=0] ~ ~ ~ kill @s
#clean_entity
execute @a[tag="uw:particle/block/player"] ~ ~ ~ tag @s remove "uw:particle/block/player"
#tag_set
execute @e[tag="uw:particle/block/ergodic",c=1] ~ ~ ~ function particle/ergodic
=======
scoreboard objectives add uw:ls_math dummy
#scoreboard_add
execute @a[tag="uw:particle/block/player"] ~ ~ ~ scoreboard players set @s uw:ls_math -1
execute @a[tag="uw:particle/block/player"] ~ ~ ~ scoreboard players operation @s uw:ls_math -= @a[tag="uw:particle/block/player",scores={uw:ls_math=-1},c=2,dx=0,y=-300000000,dy=60000000]
execute @a[tag="uw:particle/block/player",scores={uw:ls_math=!0}] ~ ~ ~ tag @s add "uw:particle/block/player/UnNeedLoadStructure"
scoreboard objectives remove uw:ls_math
#筛选出在y=-300000000到3000000中1格内的玩家并删除计分板
execute @a[tag="uw:particle/block/player",tag=!"uw:particle/block/player/UnNeedLoadStructure"] ~ ~ ~ structure load uw:structure_block ~ 0 ~
#load_structure_block
execute @a[tag="uw:particle/block/player",tag=!"uw:particle/block/player/UnNeedLoadStructure"] ~ ~ ~ structure load uw:fix_to_middle ~ 0 ~
#load_structure
execute @a[tag="uw:particle/block/player",tag=!"uw:particle/block/player/UnNeedLoadStructure"] ~ ~ ~ execute @e[tag=uw:fix_to_middle,c=1,y=0,dx=0] ~ ~ ~ tag @s add "uw:particle/block/ergodic"
execute @a[tag="uw:particle/block/player",tag=!"uw:particle/block/player/UnNeedLoadStructure"] ~ ~ ~ execute @e[tag=uw:fix_to_middle,c=1,y=0,dx=0] ~ ~ ~ tag @s remove uw:fix_to_middle
execute @a[tag="uw:particle/block/player",tag="uw:particle/block/player/UnNeedLoadStructure"] ~ ~ ~ tag @s remove "uw:particle/block/player/UnNeedLoadStructure"
#善后
execute @e[tag=uw:fix_to_middle,x=20000,y=100,z=20000,dx=0] ~ ~ ~ tp ~ 32767.0 ~
execute @e[tag=uw:fix_to_middle,x=20000,y=32767,z=20000,dx=0] ~ ~ ~ kill @s
#clean_entity
execute @a[tag="uw:particle/block/player"] ~ ~ ~ tag @s remove "uw:particle/block/player"
#tag_set
execute @e[tag="uw:particle/block/ergodic",c=1] ~ ~ ~ function particle/ergodic
>>>>>>> d95f919c53aa8612409504198bbed77f930d5f64
#ergodic_y