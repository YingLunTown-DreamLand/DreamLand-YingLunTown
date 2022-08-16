execute @e[tag="uw:particle/block/ergodic"] ~ ~ ~ detect ~ ~ ~ air -1 tag @s add "uw:particle/block/ergodic/air"
execute @e[tag="uw:particle/block/ergodic",tag="uw:particle/block/ergodic/SetblockEd",tag=!"uw:particle/block/ergodic/air"] ~ ~ ~ tag @s remove "uw:particle/block/ergodic/SetblockEd"
execute @e[tag="uw:particle/block/ergodic",tag=!"uw:particle/block/ergodic/SetblockEd",tag="uw:particle/block/ergodic/air"] ~ ~ ~ structure load uw:fix_to_middle ~ ~ ~
execute @e[tag="uw:particle/block/ergodic",tag=!"uw:particle/block/ergodic/SetblockEd",tag="uw:particle/block/ergodic/air"] ~ ~ ~ execute @e[tag=uw:fix_to_middle,c=1,dx=0] ~ ~ ~ tag @s add "uw:particle/block/ergodic/ParticleEntity"
execute @e[tag="uw:particle/block/ergodic",tag=!"uw:particle/block/ergodic/SetblockEd",tag="uw:particle/block/ergodic/air"] ~ ~ ~ execute @e[tag=uw:fix_to_middle,c=1,dx=0] ~ ~ ~ tp ~ ~32767.0 ~
execute @e[tag="uw:particle/block/ergodic",tag=!"uw:particle/block/ergodic/SetblockEd",tag="uw:particle/block/ergodic/air"] ~ ~ ~ execute @e[tag=uw:fix_to_middle,c=1,dx=0,y=~32767.0] ~ ~ ~ tag @s remove uw:fix_to_middle
execute @e[tag="uw:particle/block/ergodic",tag=!"uw:particle/block/ergodic/SetblockEd",tag="uw:particle/block/ergodic/air"] ~ ~ ~ tag @s add "uw:particle/block/ergodic/SetblockEd"
execute @e[tag="uw:particle/block/ergodic"] ~ ~ ~ tag @s remove "uw:particle/block/ergodic/air"
execute @e[tag="uw:particle/block/ergodic"] ~ ~ ~ execute @s[y=255,dy=0] ~ ~ ~ tp ~ -32767.0 ~
execute @e[tag="uw:particle/block/ergodic"] ~ ~ ~ execute @s[y=-1,dy=-30000000] ~ ~ ~ kill @s
execute @e[tag="uw:particle/block/ergodic"] ~ ~ ~ tp ~ ~1.0 ~
execute @e[tag="uw:particle/block/ergodic",c=1] ~ ~ ~ function particle/ergodic
#ergodic_y