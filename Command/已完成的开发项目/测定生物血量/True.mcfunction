execute @e[family=mob,tag=gh:request,c=1] ~ ~ ~ scoreboard players reset * gh:test
execute @e[family=mob,tag=gh:request] ~ ~ ~ scoreboard players set @s gh:test -1
#prepare
execute @e[family=mob,tag=gh:request] ~ ~ ~ scoreboard players operation @s gh:test -= @e[family=mob,tag=gh:request,dx=0,dy=0,dz=0,scores={gh:test=-1}] gh:test
execute @e[family=mob,tag=gh:request,scores={gh:test=1..}] ~ ~ ~ tag @e[family=mob,tag=gh:request,dx=0,dy=0,dz=0] add gh:request_unallow
#math
execute @e[tag=gh:request_unallow,c=1] ~ ~ ~ tellraw @a[tag=gh:creator] {"rawtext":[{"text":"§cGetHealth§f·§cError\n§cThese Entities are in the same pos§f:§b "},{"selector":"@e[tag=gh:request_unallow]"}]}
execute @e[tag=gh:request_unallow] ~ ~ ~ tag @s remove gh:request
execute @e[tag=gh:request_unallow] ~ ~ ~ tag @s remove gh:request_unallow
#return_message
#True