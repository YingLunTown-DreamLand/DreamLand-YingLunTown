execute @e[family=!mob,tag=gh:request] ~ ~ ~ scoreboard players set @s health -1
#set_score(s)
execute @e[family=!mob,tag=gh:request] ~ ~ ~ tag @s add gh:request_unallow
execute @e[tag=gh:request_unallow,c=1] ~ ~ ~ tellraw @a[tag=gh:creator] {"rawtext":[{"text":"§cGetHealth§f·§cError\n§cThese Entities are not mob§f:§b "},{"selector":"@e[tag=gh:request_unallow]"}]}
execute @e[tag=gh:request_unallow] ~ ~ ~ tag @s remove gh:request
execute @e[tag=gh:request_unallow] ~ ~ ~ tag @s remove gh:request_unallow
#return_message
#False