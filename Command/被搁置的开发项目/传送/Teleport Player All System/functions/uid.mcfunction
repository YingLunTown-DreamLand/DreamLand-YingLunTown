<<<<<<< HEAD
tag @a[scores={uid=0}] add uid_giving
#scores_csh

scoreboard players set @a[tag=uid_giving] uid -1
execute @a[tag=uid_giving] ~ ~ ~ scoreboard players operation @s uid -= @a[scores={uid=-1},tag=uid_giving] uid
#give_different_random_id

scoreboard players add js uid 1
scoreboard players operation @a[tag=uid_giving] uid += js uid
#give_uid

scoreboard players operation js uid  > @a[tag=uid_giving] uid
#get_the_biggst_uid_and_operation_=_to_js

tag @a[tag=uid_giving] remove uid_giving
#end



#Author:Happy2018new
#Version:3.0
=======
tag @a[scores={uid=0}] add uid_giving
#scores_csh

scoreboard players set @a[tag=uid_giving] uid -1
execute @a[tag=uid_giving] ~ ~ ~ scoreboard players operation @s uid -= @a[scores={uid=-1},tag=uid_giving] uid
#give_different_random_id

scoreboard players add js uid 1
scoreboard players operation @a[tag=uid_giving] uid += js uid
#give_uid

scoreboard players operation js uid  > @a[tag=uid_giving] uid
#get_the_biggst_uid_and_operation_=_to_js

tag @a[tag=uid_giving] remove uid_giving
#end



#Author:Happy2018new
#Version:3.0
>>>>>>> d95f919c53aa8612409504198bbed77f930d5f64
#Type:通用型·已封装的api/system