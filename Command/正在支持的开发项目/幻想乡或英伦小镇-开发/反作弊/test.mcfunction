#检测蜂窝
tag @r add test
execute @p[tag=test] ~~~ execute @r[r=50,type=bee,c=1,tag=!test_] ~~~ tag @s add test_
effect @e[tag=test_] instant_health 0 0
#*tag @e[tag=test_] remove test_
kill @e[tag=test_]
#*execute @e[rx=0,rym=0,ry=0,rym=0,type=item] ~~~ tellraw @a {"rawtext":[{"text":"§l[§b检测§f] 检测到 §4"},{"selector":"@p[r=5,tag=test]"},{"text":" §f放置蜂窝nbt，现已对其进行封禁，请通知服主"}]}
execute #*@e[rx=0,rym=0,ry=0,rym=0,type=item] ~~~ tag @p[r=5,tag=test] add F
execute @e[rx=0,rym=0,ry=0,type=item] ~~~ fill ~8~8~8 ~-8~-8~-8 air 0 replace beehive -1
tag @a remove test
tag @e remove test_
#检测鱼桶
execute @a ~~~ execute @e[r=10,type=wandering_trader] ~~~ tp @s @s
execute @e[type=wandering_trader,rx=0,rxm=0,ry=0,rym=0] ~~~ detect ~~~ water 0 tag @p[r=10] add test_1
execute @e[type=wandering_trader,rx=0,rxm=0,ry=0,rym=0] ~~~ detect ~~~ water 0 kill @s
execute @e[type=item,name="栓绳",rx=0,rxm=0,ry=0,rym=0] ~~~ tag @a[r=10] add test_2
tag @a[tag=test_1] add test_3
execute @a[tag=test_3,tag=!aa] ~~~ #*tellraw @a {"rawtext":[{"text":"§l[§b检测§f] 检测到 §4"},{"selector":"@s"},{"text":" §f行放置鱼桶nbt，现已对其进行封禁，请通知服主"}]}
tag @a remove test_1
execute @e[type=item,name="栓绳",rx=0,rxm=0,ry=0,rym=0] ~~~ tp @s @p[r=10,tag=test_2]
tag @a[tag=test_2] remove test_3
tag @a remove test_2
#*testfor @a[tag=test_3]
execute @a[tag=test_3,tag=!aa] ~~~ tag @s add F
execute @a[tag=test_3,tag=!aa] ~~~ tag @s remove test_3
tag @a remove test_3
