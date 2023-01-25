execute @a ~ ~ ~ summon armor_stand banST ~ ~32767.0 ~
execute @a ~ ~ ~ tag @e[type=armor_stand,name=banST,r=3,c=1,tag="",y=~32767.0] add banST
tag @e[type=minecraft:item] add banST:mark
execute @e[tag=banST] ~ ~ ~ execute @s ~ ~-32767 ~ fill ~15 ~15 ~15 ~-15 ~-15 ~-15 skull 0 replace smithing_table
execute @e[tag=banST] ~ ~ ~ execute @s[y=33072,dy=512] ~ 304 ~ fill ~15 ~15 ~15 ~-15 ~-15 ~-15 skull 0 replace smithing_table
execute @e[tag=banST] ~ ~ ~ execute @s[y=32880,dy=512] ~ 112 ~ fill ~15 ~15 ~15 ~-15 ~-15 ~-15 skull 0 replace smithing_table
execute @e[tag=banST] ~ ~ ~ execute @s[y=33008,dy=512] ~ 240 ~ fill ~15 ~15 ~15 ~-15 ~-15 ~-15 skull 0 replace smithing_table
execute @e[tag=banST] ~ ~ ~ execute @s[y=32718,dy=-512] ~ -49 ~ fill ~15 ~15 ~15 ~-15 ~-15 ~-15 skull 0 replace smithing_table
execute @e[tag=banST] ~ ~ ~ execute @s[y=32782,dy=-512] ~ 15 ~ fill ~15 ~15 ~15 ~-15 ~-15 ~-15 skull 0 replace smithing_table
execute @e[tag=banST] ~ ~ ~ execute @s ~ ~-32767 ~ fill ~15 ~15 ~15 ~-15 ~-15 ~-15 air 0 replace skull 0
execute @e[tag=banST] ~ ~ ~ execute @s[y=33072,dy=512] ~ 304 ~ fill ~15 ~15 ~15 ~-15 ~-15 ~-15 air 0 replace skull 0
execute @e[tag=banST] ~ ~ ~ execute @s[y=32880,dy=512] ~ 112 ~ fill ~15 ~15 ~15 ~-15 ~-15 ~-15 air 0 replace skull 0
execute @e[tag=banST] ~ ~ ~ execute @s[y=33008,dy=512] ~ 240 ~ fill ~15 ~15 ~15 ~-15 ~-15 ~-15 air 0 replace skull 0
execute @e[tag=banST] ~ ~ ~ execute @s[y=32718,dy=-512] ~ -49 ~ fill ~15 ~15 ~15 ~-15 ~-15 ~-15 air 0 replace skull 0
execute @e[tag=banST] ~ ~ ~ execute @s[y=32782,dy=-512] ~ 15 ~ fill ~15 ~15 ~15 ~-15 ~-15 ~-15 air 0 replace skull 0
kill @e[tag=!banST:mark,type=minecraft:item]
tag @e[tag=banST:mark] remove banST:mark
execute @e[tag=banST] ~ ~ ~ tp ~ -32767.0 ~
execute @e[tag=banST] ~ ~ ~ kill @s