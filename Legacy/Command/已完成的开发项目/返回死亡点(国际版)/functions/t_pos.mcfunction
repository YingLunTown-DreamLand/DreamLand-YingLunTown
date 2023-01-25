execute @a[tag=t_pos_actionbar_random,scores={posx_0=-524288..524288}] ~~~tag @s add t_pos_before_normal_x
execute @a[tag=t_pos_actionbar_random,scores={posy_0=-256..256}] ~~~tag @s add t_pos_before_normal_y
execute @a[tag=t_pos_actionbar_random,scores={posz_0=-524288..524288}] ~~~tag @s add t_pos_before_normal_z
#All_start
scoreboard players set fu t_pos_jz -1
execute @a[tag=t_pos_actionbar_random,scores={posx_0=-524288..-1},tag=!fu] ~~~tag @s add fu
execute @a[tag=t_pos_actionbar_random,tag=fu] ~~~scoreboard players operation @s posx_0 *= fu t_pos_jz
#Start
scoreboard players reset * t_pos_js_ge
execute @a[tag=t_pos_actionbar_random] ~~~scoreboard players operation @s t_pos_js_ge = @s posx_0
execute @a[tag=t_pos_actionbar_random] ~~~execute @e[scores={t_pos_jz=0..9}] ~~~scoreboard players operation @s t_pos_js_ge = @s t_pos_jz
execute @a[tag=t_pos_actionbar_random] ~~~scoreboard players operation @s t_pos_js_ge %= shi t_pos_jz
execute @a[tag=t_pos_actionbar_random] ~~~scoreboard players operation @e[scores={t_pos_jz=0..9}] t_pos_js_ge -= @s t_pos_js_ge
#x-ge
scoreboard players reset * t_pos_js_shi
execute @a[tag=t_pos_actionbar_random] ~~~scoreboard players operation @s t_pos_js_shi = @s posx_0
execute @a[tag=t_pos_actionbar_random] ~~~execute @e[scores={t_pos_jz=0..9}] ~~~scoreboard players operation @s t_pos_js_shi = @s t_pos_jz
execute @a[tag=t_pos_actionbar_random] ~~~scoreboard players operation @s t_pos_js_shi %= bai t_pos_jz
execute @a[tag=t_pos_actionbar_random] ~~~scoreboard players operation @s t_pos_js_shi /= shi t_pos_jz
execute @a[tag=t_pos_actionbar_random] ~~~scoreboard players operation @e[scores={t_pos_jz=0..9}] t_pos_js_shi -= @s t_pos_js_shi
#x-shi
scoreboard players reset * t_pos_js_bai
execute @a[tag=t_pos_actionbar_random] ~~~scoreboard players operation @s t_pos_js_bai = @s posx_0
execute @a[tag=t_pos_actionbar_random] ~~~execute @e[scores={t_pos_jz=0..9}] ~~~scoreboard players operation @s t_pos_js_bai = @s t_pos_jz
execute @a[tag=t_pos_actionbar_random] ~~~scoreboard players operation @s t_pos_js_bai %= qian t_pos_jz
execute @a[tag=t_pos_actionbar_random] ~~~scoreboard players operation @s t_pos_js_bai /= bai t_pos_jz
execute @a[tag=t_pos_actionbar_random] ~~~scoreboard players operation @e[scores={t_pos_jz=0..9}] t_pos_js_bai -= @s t_pos_js_bai
#x-bai
scoreboard players reset * t_pos_js_qian
execute @a[tag=t_pos_actionbar_random] ~~~scoreboard players operation @s t_pos_js_qian = @s posx_0
execute @a[tag=t_pos_actionbar_random] ~~~execute @e[scores={t_pos_jz=0..9}] ~~~scoreboard players operation @s t_pos_js_qian = @s t_pos_jz
execute @a[tag=t_pos_actionbar_random] ~~~scoreboard players operation @s t_pos_js_qian %= wan t_pos_jz
execute @a[tag=t_pos_actionbar_random] ~~~scoreboard players operation @s t_pos_js_qian /= qian t_pos_jz
execute @a[tag=t_pos_actionbar_random] ~~~scoreboard players operation @e[scores={t_pos_jz=0..9}] t_pos_js_qian -= @s t_pos_js_qian
#x-qian
scoreboard players reset * t_pos_js_wan
execute @a[tag=t_pos_actionbar_random] ~~~scoreboard players operation @s t_pos_js_wan = @s posx_0
execute @a[tag=t_pos_actionbar_random] ~~~execute @e[scores={t_pos_jz=0..9}] ~~~scoreboard players operation @s t_pos_js_wan = @s t_pos_jz
execute @a[tag=t_pos_actionbar_random] ~~~scoreboard players operation @s t_pos_js_wan %= ge t_pos_jz
execute @a[tag=t_pos_actionbar_random] ~~~scoreboard players operation @s t_pos_js_wan /= wan t_pos_jz
execute @a[tag=t_pos_actionbar_random] ~~~scoreboard players operation @e[scores={t_pos_jz=0..9}] t_pos_js_wan -= @s t_pos_js_wan
#x-wan
scoreboard players reset * t_pos_js_shiwan
execute @a[tag=t_pos_actionbar_random] ~~~scoreboard players operation @s t_pos_js_shiwan = @s posx_0
execute @a[tag=t_pos_actionbar_random] ~~~execute @e[scores={t_pos_jz=0..9}] ~~~scoreboard players operation @s t_pos_js_shiwan = @s t_pos_jz
execute @a[tag=t_pos_actionbar_random] ~~~scoreboard players operation @s t_pos_js_shiwan /= ge t_pos_jz
execute @a[tag=t_pos_actionbar_random] ~~~scoreboard players operation @e[scores={t_pos_jz=0..9}] t_pos_js_shiwan -= @s t_pos_js_shiwan
#x-shiwan
execute @e[name="0",scores={t_pos_js_shiwan=0}] ~~~tag @s add remove
execute @e[name="0",scores={t_pos_js_wan=0}] ~~~tag @s add remove_0
execute @e[name="0",scores={t_pos_js_qian=0}] ~~~tag @s add remove_1
execute @e[name="0",scores={t_pos_js_bai=0}] ~~~tag @s add remove_2
execute @e[name="0",scores={t_pos_js_shi=0}] ~~~tag @s add remove_3
execute @e[tag=remove] ~~~scoreboard players reset @s t_pos_js_shiwan
execute @e[tag=remove] ~~~execute @e[tag=remove_0] ~~~scoreboard players reset @s t_pos_js_wan
execute @e[tag=remove] ~~~execute @e[tag=remove_0] ~~~execute @e[tag=remove_1] ~~~scoreboard players reset @s t_pos_js_qian
execute @e[tag=remove] ~~~execute @e[tag=remove_0] ~~~execute @e[tag=remove_1] ~~~execute @e[tag=remove_2] ~~~scoreboard players reset @s t_pos_js_bai
execute @e[tag=remove] ~~~execute @e[tag=remove_0] ~~~execute @e[tag=remove_1] ~~~execute @e[tag=remove_2] ~~~execute @e[tag=remove_3] ~~~scoreboard players reset @s t_pos_js_shi
tag @e[tag=remove] remove remove
tag @e[tag=remove_0] remove remove_0
tag @e[tag=remove_1] remove remove_1
tag @e[tag=remove_2] remove remove_2
tag @e[tag=remove_3] remove remove_3
#去除无效0
execute @a[tag=t_pos_actionbar_random,scores={posz_0=-524288..-1},tag=!fu_0] ~~~tag @s add fu_0
execute @a[tag=t_pos_actionbar_random,tag=fu_0] ~~~scoreboard players operation @s posz_0 *= fu t_pos_jz
#Start
scoreboard players reset * t_pos_js_ge_0
execute @a[tag=t_pos_actionbar_random] ~~~scoreboard players operation @s t_pos_js_ge_0 = @s posz_0
execute @a[tag=t_pos_actionbar_random] ~~~execute @e[scores={t_pos_jz=0..9}] ~~~scoreboard players operation @s t_pos_js_ge_0 = @s t_pos_jz
execute @a[tag=t_pos_actionbar_random] ~~~scoreboard players operation @s t_pos_js_ge_0 %= shi t_pos_jz
execute @a[tag=t_pos_actionbar_random] ~~~scoreboard players operation @e[scores={t_pos_jz=0..9}] t_pos_js_ge_0 -= @s t_pos_js_ge_0
#z-ge
scoreboard players reset * t_pos_js_shi_0
execute @a[tag=t_pos_actionbar_random] ~~~scoreboard players operation @s t_pos_js_shi_0 = @s posz_0
execute @a[tag=t_pos_actionbar_random] ~~~execute @e[scores={t_pos_jz=0..9}] ~~~scoreboard players operation @s t_pos_js_shi_0 = @s t_pos_jz
execute @a[tag=t_pos_actionbar_random] ~~~scoreboard players operation @s t_pos_js_shi_0 %= bai t_pos_jz
execute @a[tag=t_pos_actionbar_random] ~~~scoreboard players operation @s t_pos_js_shi_0 /= shi t_pos_jz
execute @a[tag=t_pos_actionbar_random] ~~~scoreboard players operation @e[scores={t_pos_jz=0..9}] t_pos_js_shi_0 -= @s t_pos_js_shi_0
#z-shi
scoreboard players reset * t_pos_js_bai_0
execute @a[tag=t_pos_actionbar_random] ~~~scoreboard players operation @s t_pos_js_bai_0 = @s posz_0
execute @a[tag=t_pos_actionbar_random] ~~~execute @e[scores={t_pos_jz=0..9}] ~~~scoreboard players operation @s t_pos_js_bai_0 = @s t_pos_jz
execute @a[tag=t_pos_actionbar_random] ~~~scoreboard players operation @s t_pos_js_bai_0 %= qian t_pos_jz
execute @a[tag=t_pos_actionbar_random] ~~~scoreboard players operation @s t_pos_js_bai_0 /= bai t_pos_jz
execute @a[tag=t_pos_actionbar_random] ~~~scoreboard players operation @e[scores={t_pos_jz=0..9}] t_pos_js_bai_0 -= @s t_pos_js_bai_0
#z-bai
scoreboard players reset * t_pos_js_qian_0
execute @a[tag=t_pos_actionbar_random] ~~~scoreboard players operation @s t_pos_js_qian_0 = @s posz_0
execute @a[tag=t_pos_actionbar_random] ~~~execute @e[scores={t_pos_jz=0..9}] ~~~scoreboard players operation @s t_pos_js_qian_0 = @s t_pos_jz
execute @a[tag=t_pos_actionbar_random] ~~~scoreboard players operation @s t_pos_js_qian_0 %= wan t_pos_jz
execute @a[tag=t_pos_actionbar_random] ~~~scoreboard players operation @s t_pos_js_qian_0 /= qian t_pos_jz
execute @a[tag=t_pos_actionbar_random] ~~~scoreboard players operation @e[scores={t_pos_jz=0..9}] t_pos_js_qian_0 -= @s t_pos_js_qian_0
#z-qian
scoreboard players reset * t_pos_js_wan_0
execute @a[tag=t_pos_actionbar_random] ~~~scoreboard players operation @s t_pos_js_wan_0 = @s posz_0
execute @a[tag=t_pos_actionbar_random] ~~~execute @e[scores={t_pos_jz=0..9}] ~~~scoreboard players operation @s t_pos_js_wan_0 = @s t_pos_jz
execute @a[tag=t_pos_actionbar_random] ~~~scoreboard players operation @s t_pos_js_wan_0 %= ge t_pos_jz
execute @a[tag=t_pos_actionbar_random] ~~~scoreboard players operation @s t_pos_js_wan_0 /= wan t_pos_jz
execute @a[tag=t_pos_actionbar_random] ~~~scoreboard players operation @e[scores={t_pos_jz=0..9}] t_pos_js_wan_0 -= @s t_pos_js_wan_0
#z-wan
scoreboard players reset * t_pos_js_sw
execute @a[tag=t_pos_actionbar_random] ~~~scoreboard players operation @s t_pos_js_sw = @s posz_0
execute @a[tag=t_pos_actionbar_random] ~~~execute @e[scores={t_pos_jz=0..9}] ~~~scoreboard players operation @s t_pos_js_sw = @s t_pos_jz
execute @a[tag=t_pos_actionbar_random] ~~~scoreboard players operation @s t_pos_js_sw /= ge t_pos_jz
execute @a[tag=t_pos_actionbar_random] ~~~scoreboard players operation @e[scores={t_pos_jz=0..9}] t_pos_js_sw -= @s t_pos_js_sw
#z-shiwan
execute @e[name="0",scores={t_pos_js_sw=0}] ~~~tag @s add remove
execute @e[name="0",scores={t_pos_js_wan_0=0}] ~~~tag @s add remove_0
execute @e[name="0",scores={t_pos_js_qian_0=0}] ~~~tag @s add remove_1
execute @e[name="0",scores={t_pos_js_bai_0=0}] ~~~tag @s add remove_2
execute @e[name="0",scores={t_pos_js_shi_0=0}] ~~~tag @s add remove_3
execute @e[tag=remove] ~~~scoreboard players reset @s t_pos_js_sw
execute @e[tag=remove] ~~~execute @e[tag=remove_0] ~~~scoreboard players reset @s t_pos_js_wan_0
execute @e[tag=remove] ~~~execute @e[tag=remove_0] ~~~execute @e[tag=remove_1] ~~~scoreboard players reset @s t_pos_js_qian_0
execute @e[tag=remove] ~~~execute @e[tag=remove_0] ~~~execute @e[tag=remove_1] ~~~execute @e[tag=remove_2] ~~~scoreboard players reset @s t_pos_js_bai_0
execute @e[tag=remove] ~~~execute @e[tag=remove_0] ~~~execute @e[tag=remove_1] ~~~execute @e[tag=remove_2] ~~~execute @e[tag=remove_3] ~~~scoreboard players reset @s t_pos_js_shi_0
tag @e[tag=remove] remove remove
tag @e[tag=remove_0] remove remove_0
tag @e[tag=remove_1] remove remove_1
tag @e[tag=remove_2] remove remove_2
tag @e[tag=remove_3] remove remove_3
#去除无效0
execute @a[tag=t_pos_actionbar_random,scores={posy_0=-256..-1},tag=!fu_1] ~~~tag @s add fu_1
execute @a[tag=t_pos_actionbar_random,tag=fu_1] ~~~scoreboard players operation @s posy_0 *= fu t_pos_jz
#Start
scoreboard players reset * t_pos_js_ge_1
execute @a[tag=t_pos_actionbar_random] ~~~scoreboard players operation @s t_pos_js_ge_1 = @s posy_0
execute @a[tag=t_pos_actionbar_random] ~~~execute @e[scores={t_pos_jz=0..9}] ~~~scoreboard players operation @s t_pos_js_ge_1 = @s t_pos_jz
execute @a[tag=t_pos_actionbar_random] ~~~scoreboard players operation @s t_pos_js_ge_1 %= shi t_pos_jz
execute @a[tag=t_pos_actionbar_random] ~~~scoreboard players operation @e[scores={t_pos_jz=0..9}] t_pos_js_ge_1 -= @s t_pos_js_ge_1
#y-ge
scoreboard players reset * t_pos_js_shi_1
execute @a[tag=t_pos_actionbar_random] ~~~scoreboard players operation @s t_pos_js_shi_1 = @s posy_0
execute @a[tag=t_pos_actionbar_random] ~~~execute @e[scores={t_pos_jz=0..9}] ~~~scoreboard players operation @s t_pos_js_shi_1 = @s t_pos_jz
execute @a[tag=t_pos_actionbar_random] ~~~scoreboard players operation @s t_pos_js_shi_1 %= bai t_pos_jz
execute @a[tag=t_pos_actionbar_random] ~~~scoreboard players operation @s t_pos_js_shi_1 /= shi t_pos_jz
execute @a[tag=t_pos_actionbar_random] ~~~scoreboard players operation @e[scores={t_pos_jz=0..9}] t_pos_js_shi_1 -= @s t_pos_js_shi_1
#y-shi
scoreboard players reset * t_pos_js_bai_1
execute @a[tag=t_pos_actionbar_random] ~~~scoreboard players operation @s t_pos_js_bai_1 = @s posy_0
execute @a[tag=t_pos_actionbar_random] ~~~execute @e[scores={t_pos_jz=0..9}] ~~~scoreboard players operation @s t_pos_js_bai_1 = @s t_pos_jz
execute @a[tag=t_pos_actionbar_random] ~~~scoreboard players operation @s t_pos_js_bai_1 /= bai t_pos_jz
execute @a[tag=t_pos_actionbar_random] ~~~scoreboard players operation @e[scores={t_pos_jz=0..9}] t_pos_js_bai_1 -= @s t_pos_js_bai_1
#y-bai
execute @e[name="0",scores={t_pos_js_bai_1=0}] ~~~tag @s add remove
execute @e[name="0",scores={t_pos_js_shi_1=0}] ~~~tag @s add remove_0
execute @e[tag=remove] ~~~scoreboard players reset @s t_pos_js_bai_1
execute @e[tag=remove] ~~~execute @e[tag=remove_0] ~~~scoreboard players reset @s t_pos_js_shi_1
tag @e[tag=remove] remove remove
tag @e[tag=remove_0] remove remove_0
#去除无效0
scoreboard players reset * t_pos_js_x
scoreboard players reset * t_pos_js_y
scoreboard players reset * t_pos_js_z
execute @a[tag=fu] ~~~scoreboard players set @e[name="-",scores={t_pos_jz=10}] t_pos_js_x 0
execute @a[tag=fu_0] ~~~scoreboard players set @e[name="-",scores={t_pos_jz=10}] t_pos_js_z 0
execute @a[tag=fu_1] ~~~scoreboard players set @e[name="-",scores={t_pos_jz=10}] t_pos_js_y 0
execute @a[tag=t_pos_actionbar_random,tag=!t_pos_before_normal_x] ~~~scoreboard players set @e[name="超出范围",scores={t_pos_jz=11}] t_pos_js_x 0
execute @a[tag=t_pos_actionbar_random,tag=!t_pos_before_normal_y] ~~~scoreboard players set @e[name="超出范围",scores={t_pos_jz=11}] t_pos_js_y 0
execute @a[tag=t_pos_actionbar_random,tag=!t_pos_before_normal_z] ~~~scoreboard players set @e[name="超出范围",scores={t_pos_jz=11}] t_pos_js_z 0
execute @a[tag=t_pos_actionbar_random,tag=!t_pos_before_normal_x] ~~~scoreboard players reset * t_pos_js_ge
execute @a[tag=t_pos_actionbar_random,tag=!t_pos_before_normal_z] ~~~scoreboard players reset * t_pos_js_ge_0
execute @a[tag=t_pos_actionbar_random,tag=!t_pos_before_normal_y] ~~~scoreboard players reset * t_pos_js_ge_1
#最后的完善
title @a[tag=t_pos_actionbar_random] actionbar §e当前坐标§f： §b@e[scores={t_pos_js_x=0},type=!player]@e[scores={t_pos_js_shiwan=0},type=!player]@e[scores={t_pos_js_wan=0},type=!player]@e[scores={t_pos_js_qian=0},type=!player]@e[scores={t_pos_js_bai=0},type=!player]@e[scores={t_pos_js_shi=0},type=!player]@e[scores={t_pos_js_ge=0},type=!player] @e[scores={t_pos_js_y=0},type=!player]@e[scores={t_pos_js_bai_1=0},type=!player]@e[scores={t_pos_js_shi_1=0},type=!player]@e[scores={t_pos_js_ge_1=0},type=!player] @e[scores={t_pos_js_z=0},type=!player]@e[scores={t_pos_js_sw=0},type=!player]@e[scores={t_pos_js_wan_0=0},type=!player]@e[scores={t_pos_js_qian_0=0},type=!player]@e[scores={t_pos_js_bai_0=0},type=!player]@e[scores={t_pos_js_shi_0=0},type=!player]@e[scores={t_pos_js_ge_0=0},type=!player]
#actionbar
tag @a[tag=fu] remove fu
tag @a[tag=fu_0] remove fu_0
tag @a[tag=fu_1] remove fu_1
tag @a[tag=t_pos_before_normal_x] remove t_pos_before_normal_x
tag @a[tag=t_pos_before_normal_y] remove t_pos_before_normal_y
tag @a[tag=t_pos_before_normal_z] remove t_pos_before_normal_z
#END