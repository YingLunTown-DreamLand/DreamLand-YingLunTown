execute @e[tag=moving_light] ~ ~ ~ tag @s add m_l:unstart
execute @e[tag=m_l:armor_stand] ~ ~-32767 ~ tag @a[dx=0,dy=0,dz=0,tag=m_l:unstart] remove m_l:unstart
execute @e[tag=m_l:unstart] ~ ~ ~ setblock ~ ~ ~ light_block 15 keep
execute @e[tag=m_l:unstart] ~ ~1 ~ setblock ~ ~ ~ light_block 15 keep
execute @e[tag=m_l:unstart] ~ ~32767 ~ summon minecraft:armor_stand m_l:armor_stand
execute @e[tag=m_l:unstart] ~ ~32767 ~ tag @e[r=3,type=minecraft:armor_stand,name=m_l:armor_stand] add m_l:armor_stand
execute @e[tag=m_l:unstart] ~ ~ ~ tag @s remove m_l:unstart
#for_player
execute @e[tag=m_l:armor_stand] ~ ~ ~ execute @s[y=512,dx=0,dy=-1024,dz=0] ~ ~ ~ fill ~ 0 ~ ~ 255 ~ air 0 replace light_block 15
execute @e[tag=m_l:armor_stand] ~ ~ ~ execute @s[y=512,dx=0,dy=-1024,dz=0] ~ ~ ~ tp ~ 524288 ~
execute @e[tag=m_l:armor_stand] ~ ~ ~ execute @s[y=524288,dx=0,dy=0,dz=0] ~ ~ ~ kill @s
execute @e[tag=m_l:armor_stand] ~ ~ ~ tag @s add m_l:armor_stand_need_to_kill
execute @e[tag=moving_light] ~ ~32767 ~ tag @e[tag=m_l:armor_stand_need_to_kill,dx=0,dy=0,dz=0] remove m_l:armor_stand_need_to_kill
execute @e[tag=m_l:armor_stand_need_to_kill] ~ ~-32767 ~ fill ~ ~ ~ ~ ~ ~ air 0 replace light_block 15
execute @e[tag=m_l:armor_stand_need_to_kill] ~ ~-32766 ~ fill ~ ~ ~ ~ ~ ~ air 0 replace light_block 15
execute @e[tag=m_l:armor_stand_need_to_kill] ~ ~ ~ kill @s
#for_armor_stand
execute @e[tag=m_l:armor_stand] ~ ~ ~ tp ~ ~ ~
#armor_stand_can't_move