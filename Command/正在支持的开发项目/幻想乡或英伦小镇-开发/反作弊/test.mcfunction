#检测蜂窝
tag @e[tag=!fairy:security_bee,c=1,type=bee] add fairy:choose_bee
effect @e[tag=fairy:choose_bee] instant_health 0 0
#*tag @e[tag=fairy:choose_bee] add fairy:security_bee
#*tag @e[tag=fairy:choose_bee] remove fairy:choose_bee
kill @e[tag=fairy:choose_bee]
#*execute @e[rx=0,rym=0,ry=0,rym=0,type=item] ~~~ tellraw @a {"rawtext":[{"text":"§l[§b检测§f] 检测到 §4"},{"selector":"@a[r=5]"},{"text":" §f放置蜂窝nbt，现已对其进行封禁，请通知服主"}]}
#*execute @e[rx=0,rym=0,ry=0,rym=0,type=item] ~~~ tag @a[r=5] add fairy:violator
execute @e[rx=0,rym=0,ry=0,type=item] ~~~ fill ~8~8~8 ~-8~-8~-8 air 0 replace beehive -1
execute @a ~ ~ ~ summon armor_stand banbee ~ ~32767.0 ~
execute @a ~ ~ ~ tag @e[type=armor_stand,name=banbee,r=3,c=1,y=~32767.0] add banbee
execute @e[tag=banbee] ~ ~ ~ execute @s ~ ~-32767 ~ fill ~15 ~15 ~15 ~-15 ~-15 ~-15 air 0 replace beehive -1
execute @e[tag=banbee] ~ ~ ~ execute @s[y=33072,dy=512] ~ 304 ~ fill ~15 ~15 ~15 ~-15 ~-15 ~-15 air 0 replace beehive -1
execute @e[tag=banbee] ~ ~ ~ execute @s[y=32880,dy=512] ~ 112 ~ fill ~15 ~15 ~15 ~-15 ~-15 ~-15 air 0 replace beehive -1
execute @e[tag=banbee] ~ ~ ~ execute @s[y=33008,dy=512] ~ 240 ~ fill ~15 ~15 ~15 ~-15 ~-15 ~-15 air 0 replace beehive -1
execute @e[tag=banbee] ~ ~ ~ execute @s[y=32718,dy=-512] ~ -49 ~ fill ~15 ~15 ~15 ~-15 ~-15 ~-15 air 0 replace beehive -1
execute @e[tag=banbee] ~ ~ ~ execute @s[y=32782,dy=-512] ~ 15 ~ fill ~15 ~15 ~15 ~-15 ~-15 ~-15 air 0 replace beehive -1
execute @e[tag=banbee] ~ ~ ~ tp ~ -32767.0 ~
execute @e[tag=banbee] ~ ~ ~ kill @s


#检测鱼桶
execute @a ~~~ execute @e[r=10,type=wandering_trader] ~~~ tp @s @s
execute @e[type=wandering_trader,rx=0,rxm=0,ry=0,rym=0] ~~~ detect ~~~ water 0 tag @p[r=10] add fairy:choose1_fish
execute @e[type=wandering_trader,rx=0,rxm=0,ry=0,rym=0] ~~~ detect ~~~ water 0 kill @s
execute @e[type=item,name="栓绳",rx=0,rxm=0,ry=0,rym=0] ~~~ tag @a[r=10] add fairy:choose2_fish
tag @a[tag=fairy:choose1_fish] add fairy:choose3_fish
execute @a[tag=fairy:choose3_fish,tag=!aa] ~~~ #*tellraw @a {"rawtext":[{"text":"§l[§b检测§f] 检测到 §4"},{"selector":"@s"},{"text":" §f行放置鱼桶nbt，现已对其进行封禁，请通知服主"}]}
tag @a remove fairy:choose1_fish
execute @e[type=item,name="栓绳",rx=0,rxm=0,ry=0,rym=0] ~~~ tp @s @p[r=10,tag=fairy:choose2_fish]
tag @a[tag=fairy:choose2_fish] remove fairy:choose3_fish
tag @a remove fairy:choose2_fish
execute @a[tag=fairy:choose3_fish] ~~~ tag @s add fairy:violator
execute @a[fairy:choose3_fish,tag=!aa] ~~~ tag @s remove fairy:choose2_fish
tag @a remove fairy:choose3_fish

#被检测出为外挂的玩家会持有标签"fairy:violator"

