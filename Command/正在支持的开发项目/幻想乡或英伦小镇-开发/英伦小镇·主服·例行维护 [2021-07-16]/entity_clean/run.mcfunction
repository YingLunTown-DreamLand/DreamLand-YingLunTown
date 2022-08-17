scoreboard objectives add c_e:time dummy
scoreboard objectives add c_e:entity_time dummy
#scoreboards_add
scoreboard players add ticks c_e:time 1
summon minecraft:armor_stand c_e:scores_test ~ 32767.0 ~
scoreboard players operation @e[type=minecraft:armor_stand,name=c_e:scores_test,y=32767.0,dy=0] c_e:time = ticks c_e:time
execute @e[type=minecraft:armor_stand,name=c_e:scores_test,y=32767.0,dy=0,scores={c_e:time=0..1708799},c=1] ~ ~ ~ scoreboard players add @e[type=!minecraft:player,type=!minecraft:armor_stand,tag=!bmdsw,tag=!c_e:kill] c_e:entity_time 0
execute @e[type=minecraft:armor_stand,name=c_e:scores_test,y=32767.0,dy=0,scores={c_e:time=1728000..},c=1] ~ ~ ~ scoreboard players set ticks c_e:time 0
execute @e[type=minecraft:armor_stand,name=c_e:scores_test,y=32767.0,dy=0,scores={c_e:time=1728000..},c=1] ~ ~ ~ scoreboard players reset * c_e:entity_time
scoreboard players reset @e[type=minecraft:armor_stand,name=c_e:scores_test,y=32767.0,dy=0]
kill @e[type=minecraft:armor_stand,name=c_e:scores_test,y=32767.0,dy=0]
#分数初始化
execute @e[scores={c_e:entity_time=0},c=1,tag=!c_e:kill] ~ ~ ~ function entity_time_set
#分配清理时间
execute @e[scores={c_e:entity_time=0..},c=1] ~ ~ ~ function clean_entity
#判断、报告超时实体；确定可以击杀的超时实体
kill @e[tag=c_e:kill]
kill @e[x=0,y=10,z=0,dx=0,type=minecraft:item,rx=0,rxm=0,ry=0,rym=0]
kill @e[x=0,y=10,z=0,dx=0,type=minecraft:xp_orb,rx=0,rxm=0]
#清理超时实体及其内容物