execute @a[scores={白名单=0}] ~ ~ ~ summon  minecraft:armor_stand ban:anvil ~ ~32767 ~
execute @a[scores={白名单=0}] ~ ~ ~ tag @e[y=~32767,dx=0,dy=0,dz,=0,name=ban:anvil,type=minecraft:armor_stand] add ban:anvil
#生成辅助实体
tag @e[tag=in_overworld,tag=ban:anvil] remove in_overworld
tag @e[tag=in_nether,tag=ban:anvil] remove in_nether
tag @e[tag=in_end,tag=ban:anvil] remove in_end
*tag @e[rm=0,tag=!in_overworld,tag=ban:anvil] add in_overworld
*tag @e[rm=0,tag=!in_nether,tag=ban:anvil] add in_nether
tag @e[tag=!in_overworld,tag=!in_nether,tag=!in_end,tag=ban:anvil] add in_end
#判定维度
execute @e[tag=ban:anvil] ~ ~ ~ execute @s[y=32774,dy=-512] ~ ~ ~ tp ~ 32774.5 ~
execute @e[tag=ban:anvil,tag=!in_nether] ~ ~ ~ execute @s[y=33015,dy=512] ~ ~ ~ tp ~ 33015.49 ~
execute @e[tag=ban:anvil,tag=in_nether] ~ ~ ~ execute @s[y=32888,dy=512] ~ ~ ~ tp ~ 32888.49 ~
#修正位置
execute @e[tag=ban:anvil] ~ ~-32767 ~ fill ~7.5 ~7.5 ~7.5 ~-7.5 ~-7.5 ~-7.5 skull 0 replace anvil 0
execute @e[tag=ban:anvil] ~ ~-32767 ~ fill ~7.5 ~7.5 ~7.5 ~-7.5 ~-7.5 ~-7.5 skull 0 replace anvil 1
execute @e[tag=ban:anvil] ~ ~-32767 ~ fill ~7.5 ~7.5 ~7.5 ~-7.5 ~-7.5 ~-7.5 skull 0 replace anvil 2
execute @e[tag=ban:anvil] ~ ~-32767 ~ fill ~7.5 ~7.5 ~7.5 ~-7.5 ~-7.5 ~-7.5 skull 0 replace anvil 3
execute @e[tag=ban:anvil,c=1] ~ ~ ~ tag @e[name=骷髅模型,type=item,tag=!yczd_klmx] add yczd_klmx
execute @e[tag=ban:anvil] ~ ~-32767 ~ fill ~7.5 ~7.5 ~7.5 ~-7.5 ~-7.5 ~-7.5 air 0 replace skull 0
execute @e[tag=ban:anvil,c=1] ~ ~ ~ execute @e[name=骷髅模型,type=item,tag=!yczd_klmx] ~ ~ ~ setblock ~ ~ ~ anvil 0
execute @e[tag=ban:anvil,c=1] ~ ~ ~ execute @e[name=骷髅模型,type=item,tag=!yczd_klmx] ~ ~ ~ setblock ~ ~ ~ air 0 destroy
execute @e[tag=ban:anvil,c=1] ~ ~ ~ execute @e[name=骷髅模型,type=item,tag=!yczd_klmx] ~ ~ ~ kill @s
#1
execute @e[tag=ban:anvil] ~ ~-32767 ~ fill ~7.5 ~7.5 ~7.5 ~-7.5 ~-7.5 ~-7.5 skull 0 replace anvil 4
execute @e[tag=ban:anvil] ~ ~-32767 ~ fill ~7.5 ~7.5 ~7.5 ~-7.5 ~-7.5 ~-7.5 skull 0 replace anvil 5
execute @e[tag=ban:anvil] ~ ~-32767 ~ fill ~7.5 ~7.5 ~7.5 ~-7.5 ~-7.5 ~-7.5 skull 0 replace anvil 6
execute @e[tag=ban:anvil] ~ ~-32767 ~ fill ~7.5 ~7.5 ~7.5 ~-7.5 ~-7.5 ~-7.5 skull 0 replace anvil 7
execute @e[tag=ban:anvil] ~ ~-32767 ~ fill ~7.5 ~7.5 ~7.5 ~-7.5 ~-7.5 ~-7.5 air 0 replace skull 0
execute @e[tag=ban:anvil,c=1] ~ ~ ~ execute @e[name=骷髅模型,type=item,tag=!yczd_klmx] ~ ~ ~ setblock ~ ~ ~ anvil 4
execute @e[tag=ban:anvil,c=1] ~ ~ ~ execute @e[name=骷髅模型,type=item,tag=!yczd_klmx] ~ ~ ~ setblock ~ ~ ~ air 0 destroy
execute @e[tag=ban:anvil,c=1] ~ ~ ~ execute @e[name=骷髅模型,type=item,tag=!yczd_klmx] ~ ~ ~ kill @s
#2
execute @e[tag=ban:anvil] ~ ~-32767 ~ fill ~7.5 ~7.5 ~7.5 ~-7.5 ~-7.5 ~-7.5 skull 0 replace anvil 8
execute @e[tag=ban:anvil] ~ ~-32767 ~ fill ~7.5 ~7.5 ~7.5 ~-7.5 ~-7.5 ~-7.5 skull 0 replace anvil 9
execute @e[tag=ban:anvil] ~ ~-32767 ~ fill ~7.5 ~7.5 ~7.5 ~-7.5 ~-7.5 ~-7.5 skull 0 replace anvil 10
execute @e[tag=ban:anvil] ~ ~-32767 ~ fill ~7.5 ~7.5 ~7.5 ~-7.5 ~-7.5 ~-7.5 skull 0 replace anvil 11
execute @e[tag=ban:anvil] ~ ~-32767 ~ fill ~7.5 ~7.5 ~7.5 ~-7.5 ~-7.5 ~-7.5 air 0 replace skull 0
execute @e[tag=ban:anvil,c=1] ~ ~ ~ execute @e[name=骷髅模型,type=item,tag=!yczd_klmx] ~ ~ ~ setblock ~ ~ ~ anvil 8
execute @e[tag=ban:anvil,c=1] ~ ~ ~ execute @e[name=骷髅模型,type=item,tag=!yczd_klmx] ~ ~ ~ setblock ~ ~ ~ air 0 destroy
execute @e[tag=ban:anvil,c=1] ~ ~ ~ execute @e[name=骷髅模型,type=item,tag=!yczd_klmx] ~ ~ ~ kill @s
#3
execute @e[tag=ban:anvil,c=1] ~ ~ ~ tag @e[tag=yczd_klmx] remove yczd_klmx
execute @e[tag=ban:anvil] ~ ~ ~ kill @s
#善后工作