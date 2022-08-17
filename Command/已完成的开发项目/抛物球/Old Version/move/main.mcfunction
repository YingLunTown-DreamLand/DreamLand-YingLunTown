execute @s[tag=!pwb:stop] ~ ~ ~ function move/test_unair
#检测是否已经碰墙
execute @s[scores={pwb:posx=0,pwb:posz=0},tag=!pwb:stop] ~ ~ ~ tag @s add pwb:stop 
execute @s[tag=!pwb:stop] ~ ~ ~ scoreboard players add @s pwb:xl_y_save 100
execute @s[tag=!pwb:stop] ~ ~ ~ scoreboard players operation @s pwb:posy -= @s pwb:xl_y_save
#执行重力
execute @s[tag=!pwb:stop] ~ ~ ~ function move/return
#执行向量
tp @s