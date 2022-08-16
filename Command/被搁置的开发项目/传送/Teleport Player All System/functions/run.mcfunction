scoreboard objectives add tpa:prepare dummy
#添加计分板
scoreboard players add prepare tpa:prepare 0
scoreboard players operation @a[c=1] tpa:prepare = prepare tpa:prepare
execute @a[scores={tpa:prepare=0}] ~ ~ ~ function scoreboard_add
execute @a[scores={tpa:prepare=0}] ~ ~ ~ scoreboard players set prepare tpa:prepare 1
execute @a[scores={tpa:prepare=0..1}] ~ ~ ~ scoreboard players reset @s tpa:prepare
#系统初始化(添加本系统相关的计分板并初始化计分项数值)

scoreboard players add @a uid 0
execute @a[scores={uid=0},c=1] ~ ~ ~ function uid
#uid

scoreboard players add @a tpa:r_num_max 0
scoreboard players add @a tpa:request_num 0
execute @a[scores={tpa:r_num_max=0}] ~ ~ ~ scoreboard players set @s tpa:r_num_max 5
#分数初始化(请求数)