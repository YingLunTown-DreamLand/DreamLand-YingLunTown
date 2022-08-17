execute @e[type=minecraft:xp_bottle] ~ ~ ~ fill ~1 ~1 ~1 ~-1 ~-1 ~-1 skull 0 replace portal -1
execute @e[type=minecraft:xp_bottle,c=1] ~ ~ ~ tag @e[name=骷髅模型,type=minecraft:item,rx=0,rxm=0] add klmx
execute @e[type=minecraft:xp_bottle] ~ ~ ~ fill ~1 ~1 ~1 ~-1 ~-1 ~-1 air 0 replace skull 0
execute @e[name=骷髅模型,type=minecraft:item,rx=0,rxm=0,tag=!klmx] ~ ~ ~ setblock ~ ~ ~ glass
execute @e[name=骷髅模型,type=minecraft:item,rx=0,rxm=0,tag=!klmx] ~ ~ ~ detect ~ ~ ~ glass -1 setblock ~ ~ ~ air 0 destroy
execute @e[name=骷髅模型,type=minecraft:item,rx=0,rxm=0,tag=!klmx] ~ ~ ~ kill @s
execute @e[name=骷髅模型,type=minecraft:item,rx=0,rxm=0,tag=klmx] ~ ~ ~ tag @s remove klmx
#end_portal_bug_fix