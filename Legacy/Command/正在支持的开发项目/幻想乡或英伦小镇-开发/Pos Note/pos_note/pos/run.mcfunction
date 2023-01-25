scoreboard objectives add pos_note:math dummy
scoreboard objectives add pos_note:uid dummy
#添加计分板

tag @a[c=1] add pos_note:select_target
execute @a[tag=pos_note:select_list,c=1] ~ ~ ~ tag @a[tag=pos_note:select_target] add "pos_note:select_target/return_true"
execute @a[tag=pos_note:select_target,tag=!"pos_note:select_target/return_true"] ~ ~ ~ tag @a add pos_note:select_list
execute @a[tag=pos_note:select_target,tag="pos_note:select_target/return_true"] ~ ~ ~ tag @s remove "pos_note:select_target/return_true"
execute @a[tag=pos_note:select_target] ~ ~ ~ tag @s remove pos_note:select_target
#当待遍历列表没有玩家时刷新该列表

execute @a[tag=pos_note:select_list,c=1] ~ ~ ~ tag @e[name=pos_note:test_area_was_loaded,type=minecraft:armor_stand] add pos_note:duplicate_name
execute @a[tag=pos_note:select_list] ~ ~ ~ summon minecraft:armor_stand pos_note:test_area_was_loaded ~ ~32767.0 ~
execute @e[name=pos_note:test_area_was_loaded,type=minecraft:armor_stand,tag=!pos_note:duplicate_name] ~ ~-32767.0 ~ execute @a[c=1,r=3] ~ ~ ~ tag @s[tag=pos_note:select_list] add "pos_note:is_selecting/area_was_loaded"
execute @e[name=pos_note:test_area_was_loaded,type=minecraft:armor_stand,tag=!pos_note:duplicate_name] ~ ~ ~ tp ~ -32767.0 ~
execute @e[name=pos_note:test_area_was_loaded,type=minecraft:armor_stand,tag=!pos_note:duplicate_name] ~ ~ ~ kill @s
execute @e[name=pos_note:test_area_was_loaded,type=minecraft:armor_stand,tag=pos_note:duplicate_name] ~ ~ ~ tag @s remove pos_note:duplicate_name
#检验待遍历列表中的玩家是否在加载区域内

tag @a[c=1,tag=pos_note:select_list,tag="pos_note:is_selecting/area_was_loaded"] add pos_note:is_selecting
execute @a[tag="pos_note:is_selecting/area_was_loaded"] ~ ~ ~ tag @s remove "pos_note:is_selecting/area_was_loaded"
#抽取位于加载区域内且是待遍历列表的元素作为正在被遍历的玩家(下称玩家M)
#抽取方式服从有序遍历

execute @e[tag=pos_note:mark_entity,c=1] ~ ~ ~ scoreboard players reset * pos_note:math
execute @e[tag=pos_note:mark_entity] ~ ~ ~ scoreboard players operation @s pos_note:math = @s pos_note:uid
execute @e[tag=pos_note:mark_entity] ~ ~ ~ scoreboard players operation @s pos_note:math -= @a uid
#计算出UID与被遍历玩家的UID所匹配的实体(下称实体S)

execute @a[tag=pos_note:is_selecting] ~-31 -30000000 ~-31 tag @e[tag=pos_note:mark_entity,scores={pos_note:math=0},dx=62,dz=62,dy=60000000] add "pos_note:is_selecting/in_area"
#以玩家M的(~-31,-31)为命令执行点，若区域(~,~)到(~62,~62)的区域内能找到实体S，则这些被找到的实体S会被分配标签
#忽略Y轴产生的影响
#分配该标签的作用是为了进一步筛选符合条件的实体S

execute @e[tag=pos_note:mark_entity,scores={pos_note:math=0},tag=!"pos_note:is_selecting/in_area"] ~ ~ ~ tp ~ -32767.0 ~
execute @e[tag=pos_note:mark_entity,scores={pos_note:math=0},tag=!"pos_note:is_selecting/in_area"] ~ ~ ~ kill @s
#与第30行命令关联
#清理不符合条件的实体S

execute @e[tag=pos_note:mark_entity,scores={pos_note:math=0},tag="pos_note:is_selecting/in_area"] ~ ~ ~ tag @a[tag=pos_note:is_selecting] add "pos_note:is_selecting/stay"
#与第30行命令关联
#当存在满足条件的实体S时，玩家M获得标签

execute @a[tag=pos_note:is_selecting,tag="pos_note:is_selecting/stay"] ~ ~ ~ tag @s remove pos_note:select_list
execute @a[tag=pos_note:is_selecting,tag="pos_note:is_selecting/stay"] ~ ~ ~ tag @s remove pos_note:is_selecting
execute @a[tag="pos_note:is_selecting/stay"] ~ ~ ~ tag @s remove "pos_note:is_selecting/stay"
#与第30行命令关联
#当存在满足条件的实体S时，进入善后阶段

execute @a[tag=pos_note:is_selecting,tag=!"pos_note:is_selecting/stay"] ~ ~ ~ function pos_note/pos/change
#与第30行命令关联
#当不存在满足条件的实体S时，执行相关操作
#相关操作指：获取坐标、生成实体标记玩家M的大致位置、更新玩家M的位置数据、向缓冲区写入坐标改动日志、善后