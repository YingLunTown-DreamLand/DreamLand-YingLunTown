scoreboard objectives add fill:math dummy
scoreboard objectives add fill:math_0 dummy
scoreboard objectives add fill:math_1 dummy
#scoreboard_add
structure load fill:block ~ ~ ~
#setblock
tag @s add fill:ergodic
#mark_myself
execute @e[tag=block2] ~ ~ ~ scoreboard players operation @s fill:math = @s fill:uid
scoreboard players operation @e[tag=block2] fill:math -= @s fill:uid
execute @e[tag=fill:mark] ~ ~ ~ scoreboard players operation @s fill:math_0 = @s fill:uid
scoreboard players operation @e[tag=fill:mark] fill:math_0 -= @s fill:uid
execute @e[tag=fill:mark_0] ~ ~ ~ scoreboard players operation @s fill:math_1 = @s fill:uid
scoreboard players operation @e[tag=fill:mark_0] fill:math_1 -= @s fill:uid
#get_right_entity/entities
execute @e[tag=block2,dx=30000000,y=-30000000,dy=60000000,z=-30000000,dz=600000000,scores={fill:math=0}] ~ ~ ~ execute @e[tag=fill:ergodic,tag=block1] ~ ~ ~ tag @s add "x+"
execute @e[tag=block2,dy=30000000,x=-30000000,dx=60000000,z=-30000000,dz=600000000,scores={fill:math=0}] ~ ~ ~ execute @e[tag=fill:ergodic,tag=block1] ~ ~ ~ tag @s add "y+"
execute @e[tag=block2,dz=30000000,x=-30000000,dx=60000000,y=-30000000,dy=600000000,scores={fill:math=0}] ~ ~ ~ execute @e[tag=fill:ergodic,tag=block1] ~ ~ ~ tag @s add "z+"
execute @e[tag=block2,dx=-30000000,y=-30000000,dy=60000000,z=-30000000,dz=600000000,scores={fill:math=0}] ~ ~ ~ execute @e[tag=fill:ergodic,tag=block1,tag=!"x+"] ~ ~ ~ tag @s add "x-"
execute @e[tag=block2,dy=-30000000,x=-30000000,dx=60000000,z=-30000000,dz=600000000,scores={fill:math=0}] ~ ~ ~ execute @e[tag=fill:ergodic,tag=block1,tag=!"y+"] ~ ~ ~ tag @s add "y-"
execute @e[tag=block2,dz=-30000000,x=-30000000,dx=60000000,y=-30000000,dy=600000000,scores={fill:math=0}] ~ ~ ~ execute @e[tag=fill:ergodic,tag=block1,tag=!"z+"] ~ ~ ~ tag @s add "z-"
#get_location
execute @s[tag=!fill:summon] ~ ~ ~ summon minecraft:armor_stand fill:mark
execute @s[tag=!fill:summon] ~ ~ ~ scoreboard players operation @e[name=fill:mark,c=1,dx=0,type=minecraft:armor_stand,tag=!fill:mark] fill:uid = @s fill:uid
execute @s[tag=!fill:summon] ~ ~ ~ tag @e[name=fill:mark,c=1,dx=0,type=minecraft:armor_stand,tag=!fill:mark] add fill:mark
execute @s[tag=!fill:summon] ~ ~ ~ summon minecraft:armor_stand fill:mark_0
execute @s[tag=!fill:summon] ~ ~ ~ scoreboard players operation @e[name=fill:mark_0,c=1,dx=0,type=minecraft:armor_stand,tag=!fill:mark_0] fill:uid = @s fill:uid
execute @s[tag=!fill:summon] ~ ~ ~ tag @e[name=fill:mark_0,c=1,dx=0,type=minecraft:armor_stand,tag=!fill:mark_0] add fill:mark_0
execute @s[tag=!fill:summon] ~ ~ ~ tag @s add fill:summon
#mark_pos
execute @e[tag=block2,z=-30000000,dz=60000000,y=-30000000,dy=60000000,scores={fill:math=0}] ~ ~ ~ tag @s add fill:down
execute @e[tag=block2,tag=fill:down,scores={fill:math=0}] ~ ~ ~ execute @e[tag=fill:mark,scores={fill:math_0=0}] ~ ~ ~ tag @e[tag=block2,x=-30000000,dx=60000000,y=-30000000,dy=60000000,scores={fill:math=0}] add fill:down_0
execute @e[tag=block2,tag=fill:down_0,scores={fill:math=0}] ~ ~ ~ execute @e[tag=fill:mark_0,scores={fill:math_1=0}] ~ ~ ~ tag @e[tag=block2,x=-30000000,dx=60000000,z=-30000000,dz=60000000,scores={fill:math=0}] add fill:down_1
#test_situation
execute @e[tag=block2,scores={fill:math=0},tag=!fill:down,tag=!fill:down_0,tag=!fill:down_1] ~ ~ ~ execute @e[tag=fill:ergodic,tag=block1,tag="x+"] ~ ~ ~ tp ~1 ~ ~
execute @e[tag=block2,scores={fill:math=0},tag=!fill:down,tag=!fill:down_0,tag=!fill:down_1] ~ ~ ~ execute @e[tag=fill:ergodic,tag=block1,tag="x-"] ~ ~ ~ tp ~-1 ~ ~
execute @e[tag=block2,scores={fill:math=0},tag=fill:down,tag=!fill:down_0,tag=!fill:down_1] ~ ~ ~ execute @e[tag=fill:ergodic,tag=block1,tag="z+"] ~ ~ ~ execute @e[tag=fill:mark,scores={fill:math_0=0}] ~ ~ ~ tp ~ ~ ~1
execute @e[tag=block2,scores={fill:math=0},tag=fill:down,tag=!fill:down_0,tag=!fill:down_1] ~ ~ ~ execute @e[tag=fill:ergodic,tag=block1,tag="z-"] ~ ~ ~ execute @e[tag=fill:mark,scores={fill:math_0=0}] ~ ~ ~ tp ~ ~ ~-1
execute @e[tag=block2,scores={fill:math=0},tag=fill:down,tag=!fill:down_0,tag=!fill:down_1] ~ ~ ~ tp @e[tag=fill:ergodic] @e[tag=fill:mark,scores={fill:math_0=0}]
execute @e[tag=block2,scores={fill:math=0},tag=fill:down_0,tag=!fill:down_1] ~ ~ ~ execute @e[tag=fill:ergodic,tag=block1,tag="y+"] ~ ~ ~ execute @e[tag=fill:mark_0,scores={fill:math_1=0}] ~ ~ ~ tp ~ ~1 ~
execute @e[tag=block2,scores={fill:math=0},tag=fill:down_0,tag=!fill:down_1] ~ ~ ~ execute @e[tag=fill:ergodic,tag=block1,tag="y-"] ~ ~ ~ execute @e[tag=fill:mark_0,scores={fill:math_1=0}] ~ ~ ~ tp ~ ~-1 ~
execute @e[tag=block2,scores={fill:math=0},tag=fill:down_0,tag=!fill:down_1] ~ ~ ~ tp @e[tag=fill:ergodic] @e[tag=fill:mark_0,scores={fill:math_1=0}]
execute @e[tag=block2,scores={fill:math=0},tag=fill:down_0,tag=!fill:down_1] ~ ~ ~ tp @e[tag=fill:mark,scores={fill:math_0=0}] @e[tag=fill:mark_0,scores={fill:math_1=0}]
execute @e[tag=block2,scores={fill:math=0},tag=fill:down_1] ~ ~ ~ execute @e[tag=fill:ergodic] ~ ~ ~ tp ~ 32767.0 ~
execute @e[tag=block2,scores={fill:math=0},tag=fill:down_1] ~ ~ ~ execute @e[tag=fill:mark,scores={fill:math_0=0}] ~ ~ ~ tp ~ 32767.0 ~
execute @e[tag=block2,scores={fill:math=0},tag=fill:down_1] ~ ~ ~ execute @e[tag=fill:mark_0,scores={fill:math_1=0}] ~ ~ ~ tp ~ 32767.0 ~
execute @e[tag=block2,scores={fill:math=0},tag=fill:down_1] ~ ~ ~ execute @e[tag=fill:ergodic] ~ ~ ~ kill @s
execute @e[tag=block2,scores={fill:math=0},tag=fill:down_1] ~ ~ ~ execute @e[tag=fill:mark,scores={fill:math_0=0}] ~ ~ ~ kill @s
execute @e[tag=block2,scores={fill:math=0},tag=fill:down_1] ~ ~ ~ execute @e[tag=fill:mark_0,scores={fill:math_1=0}] ~ ~ ~ kill @s
execute @e[tag=block2,scores={fill:math=0},tag=fill:down_1] ~ ~ ~ tp ~ 32767.0 ~
execute @e[tag=block2,scores={fill:math=0},tag=fill:down_1] ~ ~ ~ kill @s
#teleport
tag @e[tag="x+"] remove "x+"
tag @e[tag="y+"] remove "y+"
tag @e[tag="z+"] remove "z+"
tag @e[tag="x-"] remove "x-"
tag @e[tag="y-"] remove "y-"
tag @e[tag="z-"] remove "z-"
tag @e[tag=fill:down] remove fill:down
tag @e[tag=fill:down_0] remove fill:down_0
tag @e[tag=fill:ergodic] remove fill:ergodic
#end_1
scoreboard objectives remove fill:math
scoreboard objectives remove fill:math_0
scoreboard objectives remove fill:math_1
#end_2