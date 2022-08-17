summon minecraft:armor_stand kick:past ~ 32767 ~
#start
tag @e[name=kick:past,type=minecraft:armor_stand,c=1,y=32767,dy=0] add kick:past
execute @a[scores={kick:aid=1..2500000},c=1,tag=!kick:ban] ~ ~ ~ tag @e[tag=kick:past] remove kick:past
execute @a[scores={kick:aid=1..2500000},c=1,tag=!kick:ban] ~ ~ ~ function time_js
#time_js
execute @e[tag=kick:past] ~ ~ ~ execute @e[tag=!kick:yc_ban_unsucess,scores={kick:aid=1..2500000,uid=1..2500000},c=1,tag=kick:ready_for_ban] ~ ~ ~ function yc_ban
#time_js_and_yc_ban
kill @e[name=kick:past,type=minecraft:armor_stand,c=1,y=32767,dy=0]
#end