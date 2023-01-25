execute @a[tag=pos_note:is_selecting,tag=!"pos_note:is_selecting/stay"] ~ ~ ~ tag @s add pos_note:getpos
execute @a[tag=pos_note:getpos] ~ ~ ~ function pos_note/pos/getpos
execute @a[tag=pos_note:getpos] ~ ~ ~ tag @s remove pos_note:getpos
#获取坐标与清理标签

execute @a[tag=pos_note:is_selecting,tag=!"pos_note:is_selecting/stay"] ~ ~ ~ tag @e[name="pos_note:pos/change/math_helper"] add pos_note:duplicate_name
execute @a[tag=pos_note:is_selecting,tag=!"pos_note:is_selecting/stay"] ~ ~ ~ summon minecraft:armor_stand "pos_note:pos/change/math_helper" ~ 32767.0 ~
execute @a[tag=pos_note:is_selecting,tag=!"pos_note:is_selecting/stay"] ~ ~ ~ tag @e[type=minecraft:armor_stand,name="pos_note:pos/change/math_helper",y=32767.0,r=3,c=1,tag=!pos_note:duplicate_name] add "pos_note:pos/change/math_helper"
execute @a[tag=pos_note:is_selecting,tag=!"pos_note:is_selecting/stay"] ~ ~ ~ tag @e[tag=pos_note:duplicate_name] remove pos_note:duplicate_name
#生成辅助实体用于判断分数

scoreboard players reset * pos_note:math
execute @a[tag=pos_note:is_selecting,tag=!"pos_note:is_selecting/stay"] ~ ~ ~ scoreboard players operation translate_posx pos_note:math = @s pos_note:posx
execute @a[tag=pos_note:is_selecting,tag=!"pos_note:is_selecting/stay"] ~ ~ ~ scoreboard players operation translate_posz pos_note:math = @s pos_note:posz
#清理计分板上数据并临时保存获得的坐标精确值
#translate_posx与translate_posz负责保存上述临时数据

execute @a[tag=pos_note:is_selecting,tag=!"pos_note:is_selecting/stay"] ~ ~ ~ scoreboard players operation @s pos_note:math = @s pos_note:posx
execute @a[tag=pos_note:is_selecting,tag=!"pos_note:is_selecting/stay",scores={pos_note:math=0..}] ~ ~ ~ scoreboard players add @s pos_note:math 1048575
execute @e[tag="pos_note:pos/change/math_helper"] ~ ~ ~ scoreboard players operation @s pos_note:math = @a[tag=pos_note:is_selecting,tag=!"pos_note:is_selecting/stay"] pos_note:posx
execute @a[tag=pos_note:is_selecting,tag=!"pos_note:is_selecting/stay"] ~ ~ ~ scoreboard players set math pos_note:math 63
execute @a[tag=pos_note:is_selecting,tag=!"pos_note:is_selecting/stay"] ~ ~ ~ scoreboard players operation @s pos_note:math %= math pos_note:math
execute @a[tag=pos_note:is_selecting,tag=!"pos_note:is_selecting/stay"] ~ ~ ~ scoreboard players operation translate_posx pos_note:math = @s pos_note:math
#转义和临时保存转义获得的X轴数据
#translate_posx负责保存上述临时数据

execute @a[tag=pos_note:is_selecting,tag=!"pos_note:is_selecting/stay"] ~ ~ ~ scoreboard players operation @s pos_note:math = @s pos_note:posz
execute @a[tag=pos_note:is_selecting,tag=!"pos_note:is_selecting/stay",scores={pos_note:math=0..}] ~ ~ ~ scoreboard players add @s pos_note:math 1048575
execute @a[tag=pos_note:is_selecting,tag=!"pos_note:is_selecting/stay"] ~ ~ ~ scoreboard players operation @s pos_note:math /= math pos_note:math
execute @a[tag=pos_note:is_selecting,tag=!"pos_note:is_selecting/stay"] ~ ~ ~ scoreboard players operation translate_posz pos_note:math = @s pos_note:math
#转义和临时保存获得的Z轴数据
#translate_posz负责保存上述临时数据

execute @e[tag="pos_note:pos/change/math_helper"] ~ ~ ~ scoreboard players operation @s pos_note:math = translate_posx pos_note:math
execute @e[tag="pos_note:pos/change/math_helper"] ~ ~ ~ scoreboard players operation @s pos_note:math -=  translate_posx pos_note:math
execute @a[tag=pos_note:is_selecting,tag=!"pos_note:is_selecting/stay"] ~ ~ ~ scoreboard players operation @s pos_note:math -= translate_posz pos_note:math
execute @e[tag="pos_note:pos/change/math_helper",scores={pos_note:math=0}] ~ ~ ~ tag @a[tag=pos_note:is_selecting,tag=!"pos_note:is_selecting/stay",scores={pos_note:math=0}] add pos_note:uncreate_log
execute @e[tag="pos_note:pos/change/math_helper"] ~ ~ ~ scoreboard players reset @s
execute @e[tag="pos_note:pos/change/math_helper"] ~ ~ ~ tp ~ 32767.0 ~
execute @e[tag="pos_note:pos/change/math_helper"] ~ ~ ~ kill @s
#确定被遍历玩家是否需要被创建日志，同时删除辅助实体

execute @a[tag=pos_note:is_selecting,tag=!"pos_note:is_selecting/stay"] ~ ~ ~ scoreboard players operation @s pos_note:math = translate_posx pos_note:math
execute @a[tag=pos_note:is_selecting,tag=!"pos_note:is_selecting/stay"] ~ ~ ~