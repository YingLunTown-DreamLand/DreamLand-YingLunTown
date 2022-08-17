execute @a[tag=cre:GetPosInfo,c=1] ~ ~ ~ scoreboard players reset * cre:math
execute @a[tag=cre:GetPosInfo,c=1] ~ ~ ~ scoreboard players reset * cre:uid
execute @a[tag=cre:GetPosInfo,c=1] ~ ~ ~ scoreboard players reset * cre:posx
execute @a[tag=cre:GetPosInfo,c=1] ~ ~ ~ scoreboard players reset * cre:posy
execute @a[tag=cre:GetPosInfo,c=1] ~ ~ ~ scoreboard players reset * cre:posz
#scores_reset

execute @a[tag=cre:GetPosInfo] ~ ~ ~ tag @s remove cre:GetPosInfo
execute @a[tag=cre:getpos_InLoadedArea] ~ ~ ~ tag @s remove cre:getpos_InLoadedArea
#tags_remove

execute @e[tag=cre:overworld_helper] ~ ~ ~ kill @s
#kill_helper