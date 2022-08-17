tag @s add TestBlockMaster
# Set Master

fill 0 0 0 10 10 10 minecraft:air
# Reset Target Area

fill ~-5 ~-5 ~-5 ~5 ~5 ~5 minecraft:skull 0 replace minecraft:fire -1
clone ~-5 ~-5 ~-5 ~5 ~5 ~5 0 0 0 filtered force minecraft:skull 0
fill ~-5 ~-5 ~-5 ~5 ~5 ~5 minecraft:fire 0 replace minecraft:skull 0
# Separation

tag @e add TestBlockMark
fill 0 0 0 10 10 10 minecraft:air 0 destroy
execute @e[type=minecraft:item,tag=""] ~ ~ ~ summon minecraft:armor_stand TestBlockEntity ~ ~ ~
execute @e[name=!TestBlockEntity,x=0,y=0,z=0,dx=10,dy=10,dz=10] ~ ~ ~ kill @s
execute @e[tag="",c=1] ~ ~ ~ execute @a[tag=TestBlockMaster] ~ ~ ~ clone ~-5 ~-5 ~-5 ~5 ~5 ~5 0 0 0
structure save TestBlock 0 0 0 10 10 10 memory
# Get Entity

execute @e[tag="",c=1] ~ ~ ~ execute @a[tag=TestBlockMaster] ~ ~ ~ structure load TestBlock ~-5 ~-5 ~-5
tag @s remove TestBlockMaster
execute @e[x=0,y=0,z=0,dx=10,dy=10,dz=10] ~ ~ ~ kill @s
execute @e[tag="",name=TestBlockEntity,type=armor_stand] ~ ~ ~ summon chicken
execute @e[tag="",name=TestBlockEntity,type=armor_stand] ~ ~ ~ setblock ~ ~ ~ minecraft:glass
execute @e[tag="",name=TestBlockEntity,type=armor_stand] ~ ~ ~ tp ~ -32767.0 ~
execute @e[tag="",name=TestBlockEntity,type=armor_stand] ~ ~ ~ kill @s
tag @e[tag=TestBlockMark] remove TestBlockMark
# Resetblock Block

fill 0 0 0 10 10 10 minecraft:air
# Reset Target Area



# main