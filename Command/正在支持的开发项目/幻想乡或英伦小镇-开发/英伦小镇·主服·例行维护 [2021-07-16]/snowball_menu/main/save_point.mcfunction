execute @a[tag=s_m:main_save_point,x=-1048575,dx=2097150,y=0,dy=511,z=-1048575,dz=2097150] ~ ~ ~ tag @s add s_m:main_save_point_allow
tellraw @a[tag=s_m:main_save_point,tag=!s_m:main_save_point_allow] {"rawtext":[{"text":"§c请确定当前位置是否位于主世界或有效区域内"}]}
execute @a[tag=s_m:main_save_point,tag=!s_m:main_save_point_allow] ~ ~ ~ playsound random.break @s ~ ~ ~ 1 1 1
execute @a[tag=s_m:main_save_point,tag=s_m:main_save_point_allow] ~ ~ ~ tag @s add getpos
execute @a[tag=s_m:main_save_point,tag=s_m:main_save_point_allow] ~ ~ ~ playsound random.orb @s ~ ~ ~ 1 1 1
tag @a[tag=s_m:main_save_point] remove s_m:main_save_point_allow
tag @a[tag=s_m:main_save_point] remove s_m:main_save_point
execute @a[tag=getpos,c=1] ~ ~ ~ function main/pos
#save_point