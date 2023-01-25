execute @a[tag=tp_random,tag=tp_random_used] ~ ~ ~ title @s title §l§c您已经使用§4过随机传送了§f！
execute @a[tag=tp_random,tag=tp_random_used] ~ ~ ~ title @s subtitle §l|§9请联系§a管理员§b授予可再次使用的权限§f|
execute @a[tag=tp_random,tag=tp_random_used] ~ ~ ~ playsound random.break
tag @a[tag=tp_random,tag=tp_random_used] remove tp_random
#0
execute @a[tag=tp_random] ~ ~ ~ gamerule sendcommandfeedback false
execute @a[tag=tp_random] ~ ~ ~ scoreboard objectives remove tp_random
execute @a[tag=tp_random] ~ ~ ~ scoreboard objectives add tp_random dummy
execute @a[tag=tp_random] ~ ~ ~ scoreboard players random @s tp_random 0 1
execute @a[tag=tp_random,scores={tp_random=0}] ~ ~ ~ tag @s add tp_random_fu
execute @a[tag=tp_random] ~ ~ ~ scoreboard players random @s tp_random 0 524288
execute @a[tag=tp_random] ~ ~ ~ tp 0 32767 0 0 0
execute @a[tag=tp_random,scores={tp_random=524288..}] ~ ~ ~ tp ^ ^ ^524288
execute @a[tag=tp_random,scores={tp_random=524288..}] ~ ~ ~ scoreboard players remove @s tp_random 524288
execute @a[tag=tp_random,scores={tp_random=262144..}] ~ ~ ~ tp ^ ^ ^262144
execute @a[tag=tp_random,scores={tp_random=262144..}] ~ ~ ~ scoreboard players remove @s tp_random 262144
execute @a[tag=tp_random,scores={tp_random=131072..}] ~ ~ ~ tp ^ ^ ^131072
execute @a[tag=tp_random,scores={tp_random=131072..}] ~ ~ ~ scoreboard players remove @s tp_random 131072
execute @a[tag=tp_random,scores={tp_random=65536..}] ~ ~ ~ tp ^ ^ ^65536
execute @a[tag=tp_random,scores={tp_random=65536..}] ~ ~ ~ scoreboard players remove @s tp_random 65536
execute @a[tag=tp_random,scores={tp_random=32768..}] ~ ~ ~ tp ^ ^ ^32768
execute @a[tag=tp_random,scores={tp_random=32768..}] ~ ~ ~ scoreboard players remove @s tp_random 32768
execute @a[tag=tp_random,scores={tp_random=16384..}] ~ ~ ~ tp ^ ^ ^16384
execute @a[tag=tp_random,scores={tp_random=16384..}] ~ ~ ~ scoreboard players remove @s tp_random 16384
execute @a[tag=tp_random,scores={tp_random=8192..}] ~ ~ ~ tp ^ ^ ^8192
execute @a[tag=tp_random,scores={tp_random=8192..}] ~ ~ ~ scoreboard players remove @s tp_random 8192
execute @a[tag=tp_random,scores={tp_random=4096..}] ~ ~ ~ tp ^ ^ ^4096
execute @a[tag=tp_random,scores={tp_random=4096..}] ~ ~ ~ scoreboard players remove @s tp_random 4096
execute @a[tag=tp_random,scores={tp_random=2048..}] ~ ~ ~ tp ^ ^ ^2048
execute @a[tag=tp_random,scores={tp_random=2048..}] ~ ~ ~ scoreboard players remove @s tp_random 2048
execute @a[tag=tp_random,scores={tp_random=1024..}] ~ ~ ~ tp ^ ^ ^1024
execute @a[tag=tp_random,scores={tp_random=1024..}] ~ ~ ~ scoreboard players remove @s tp_random 1024
execute @a[tag=tp_random,scores={tp_random=512..}] ~ ~ ~ tp ^ ^ ^512
execute @a[tag=tp_random,scores={tp_random=512..}] ~ ~ ~ scoreboard players remove @s tp_random 512
execute @a[tag=tp_random,scores={tp_random=256..}] ~ ~ ~ tp ^ ^ ^256
execute @a[tag=tp_random,scores={tp_random=256..}] ~ ~ ~ scoreboard players remove @s tp_random 256
execute @a[tag=tp_random,scores={tp_random=128..}] ~ ~ ~ tp ^ ^ ^128
execute @a[tag=tp_random,scores={tp_random=128..}] ~ ~ ~ scoreboard players remove @s tp_random 128
execute @a[tag=tp_random,scores={tp_random=63..,tp_random=!63}] ~ ~ ~ tag @s add tp_sixfour
execute @a[tag=tp_sixfour] ~ ~ ~ tp ^ ^ ^63
execute @a[tag=tp_sixfour] ~ ~ ~ tp ^ ^ ^1
execute @a[tag=tp_sixfour] ~ ~ ~ scoreboard players remove @s tp_random 63
execute @a[tag=tp_sixfour] ~ ~ ~ scoreboard players remove @s tp_random 1
tag @a[tag=tp_sixfour] remove tp_sixfour
execute @a[tag=tp_random,scores={tp_random=32..}] ~ ~ ~ tp ^ ^ ^32
execute @a[tag=tp_random,scores={tp_random=32..}] ~ ~ ~ scoreboard players remove @s tp_random 32
execute @a[tag=tp_random,scores={tp_random=16..}] ~ ~ ~ tp ^ ^ ^16
execute @a[tag=tp_random,scores={tp_random=16..}] ~ ~ ~ scoreboard players remove @s tp_random 16
execute @a[tag=tp_random,scores={tp_random=8..}] ~ ~ ~ tp ^ ^ ^8
execute @a[tag=tp_random,scores={tp_random=8..}] ~ ~ ~ scoreboard players remove @s tp_random 8
execute @a[tag=tp_random,scores={tp_random=4..}] ~ ~ ~ tp ^ ^ ^4
execute @a[tag=tp_random,scores={tp_random=4..}] ~ ~ ~ scoreboard players remove @s tp_random 4
execute @a[tag=tp_random,scores={tp_random=2..}] ~ ~ ~ tp ^ ^ ^2
execute @a[tag=tp_random,scores={tp_random=2..}] ~ ~ ~ scoreboard players remove @s tp_random 2
execute @a[tag=tp_random,scores={tp_random=1..}] ~ ~ ~ tp ^ ^ ^1
execute @a[tag=tp_random,scores={tp_random=1..}] ~ ~ ~ scoreboard players remove @s tp_random 1
execute @a[tag=tp_random,tag=tp_random_fu] ~ ~ ~ tp ^ ^ ^-524288
execute @a[tag=tp_random,tag=tp_random_fu] ~ ~ ~ tag @s remove tp_random_fu
execute @a[tag=tp_random] ~ ~ ~ scoreboard players random @s tp_random 0 1
execute @a[tag=tp_random,scores={tp_random=0}] ~ ~ ~ tag @s add tp_random_fu
execute @a[tag=tp_random] ~ ~ ~ scoreboard players random @s tp_random 0 524288
execute @a[tag=tp_random] ~ ~ ~ tp ~ ~ ~ 90 ~
execute @a[tag=tp_random,scores={tp_random=524288..}] ~ ~ ~ tp ^ ^ ^524288
execute @a[tag=tp_random,scores={tp_random=524288..}] ~ ~ ~ scoreboard players remove @s tp_random 524288
execute @a[tag=tp_random,scores={tp_random=262144..}] ~ ~ ~ tp ^ ^ ^262144
execute @a[tag=tp_random,scores={tp_random=262144..}] ~ ~ ~ scoreboard players remove @s tp_random 262144
execute @a[tag=tp_random,scores={tp_random=131072..}] ~ ~ ~ tp ^ ^ ^131072
execute @a[tag=tp_random,scores={tp_random=131072..}] ~ ~ ~ scoreboard players remove @s tp_random 131072
execute @a[tag=tp_random,scores={tp_random=65536..}] ~ ~ ~ tp ^ ^ ^65536
execute @a[tag=tp_random,scores={tp_random=65536..}] ~ ~ ~ scoreboard players remove @s tp_random 65536
execute @a[tag=tp_random,scores={tp_random=32768..}] ~ ~ ~ tp ^ ^ ^32768
execute @a[tag=tp_random,scores={tp_random=32768..}] ~ ~ ~ scoreboard players remove @s tp_random 32768
execute @a[tag=tp_random,scores={tp_random=16384..}] ~ ~ ~ tp ^ ^ ^16384
execute @a[tag=tp_random,scores={tp_random=16384..}] ~ ~ ~ scoreboard players remove @s tp_random 16384
execute @a[tag=tp_random,scores={tp_random=8192..}] ~ ~ ~ tp ^ ^ ^8192
execute @a[tag=tp_random,scores={tp_random=8192..}] ~ ~ ~ scoreboard players remove @s tp_random 8192
execute @a[tag=tp_random,scores={tp_random=4096..}] ~ ~ ~ tp ^ ^ ^4096
execute @a[tag=tp_random,scores={tp_random=4096..}] ~ ~ ~ scoreboard players remove @s tp_random 4096
execute @a[tag=tp_random,scores={tp_random=2048..}] ~ ~ ~ tp ^ ^ ^2048
execute @a[tag=tp_random,scores={tp_random=2048..}] ~ ~ ~ scoreboard players remove @s tp_random 2048
execute @a[tag=tp_random,scores={tp_random=1024..}] ~ ~ ~ tp ^ ^ ^1024
execute @a[tag=tp_random,scores={tp_random=1024..}] ~ ~ ~ scoreboard players remove @s tp_random 1024
execute @a[tag=tp_random,scores={tp_random=512..}] ~ ~ ~ tp ^ ^ ^512
execute @a[tag=tp_random,scores={tp_random=512..}] ~ ~ ~ scoreboard players remove @s tp_random 512
execute @a[tag=tp_random,scores={tp_random=256..}] ~ ~ ~ tp ^ ^ ^256
execute @a[tag=tp_random,scores={tp_random=256..}] ~ ~ ~ scoreboard players remove @s tp_random 256
execute @a[tag=tp_random,scores={tp_random=128..}] ~ ~ ~ tp ^ ^ ^128
execute @a[tag=tp_random,scores={tp_random=128..}] ~ ~ ~ scoreboard players remove @s tp_random 128
execute @a[tag=tp_random,scores={tp_random=63..,tp_random=!63}] ~ ~ ~ tag @s add tp_sixfour
execute @a[tag=tp_sixfour] ~ ~ ~ tp ^ ^ ^63
execute @a[tag=tp_sixfour] ~ ~ ~ tp ^ ^ ^1
execute @a[tag=tp_sixfour] ~ ~ ~ scoreboard players remove @s tp_random 63
execute @a[tag=tp_sixfour] ~ ~ ~ scoreboard players remove @s tp_random 1
tag @a[tag=tp_sixfour] remove tp_sixfour
execute @a[tag=tp_random,scores={tp_random=32..}] ~ ~ ~ tp ^ ^ ^32
execute @a[tag=tp_random,scores={tp_random=32..}] ~ ~ ~ scoreboard players remove @s tp_random 32
execute @a[tag=tp_random,scores={tp_random=16..}] ~ ~ ~ tp ^ ^ ^16
execute @a[tag=tp_random,scores={tp_random=16..}] ~ ~ ~ scoreboard players remove @s tp_random 16
execute @a[tag=tp_random,scores={tp_random=8..}] ~ ~ ~ tp ^ ^ ^8
execute @a[tag=tp_random,scores={tp_random=8..}] ~ ~ ~ scoreboard players remove @s tp_random 8
execute @a[tag=tp_random,scores={tp_random=4..}] ~ ~ ~ tp ^ ^ ^4
execute @a[tag=tp_random,scores={tp_random=4..}] ~ ~ ~ scoreboard players remove @s tp_random 4
execute @a[tag=tp_random,scores={tp_random=2..}] ~ ~ ~ tp ^ ^ ^2
execute @a[tag=tp_random,scores={tp_random=2..}] ~ ~ ~ scoreboard players remove @s tp_random 2
execute @a[tag=tp_random,scores={tp_random=1..}] ~ ~ ~ tp ^ ^ ^1
execute @a[tag=tp_random,scores={tp_random=1..}] ~ ~ ~ scoreboard players remove @s tp_random 1
execute @a[tag=tp_random,tag=tp_random_fu] ~ ~ ~ tp ^ ^ ^-524288
execute @a[tag=tp_random,tag=tp_random_fu] ~ ~ ~ tag @s remove tp_random_fu
execute @a[tag=tp_random] ~ ~ ~ gamerule sendcommandfeedback true
execute @a[tag=tp_random] ~ ~ ~ scoreboard players set @s tp_random_t -1
execute @a[tag=tp_random] ~ ~ ~ tag @s add tp_random_used
execute @a[tag=tp_random] ~ ~ ~ tag @s remove tp_random
#1
scoreboard players add @a[scores={tp_random_t=..-1}] tp_random_t -1
execute @a[scores={tp_random_t=-51},m=2] ~ ~ ~ gamemode 0 @s
execute @a[scores={tp_random_t=-51}] ~ ~ ~ spreadplayers ~ ~ 0 1 @s
execute @a[scores={tp_random_t=-51}] ~ ~ ~ execute @s[y=512,dy=30000000] ~ ~ ~ effect @s resistance 20 225 true
execute @a[scores={tp_random_t=-51}] ~ ~ ~ execute @s[y=512,dy=30000000] ~ ~ ~ tp ~ 80 ~
execute @a[scores={tp_random_t=-51}] ~ ~ ~ title @s title §l§a已成功§2随机传送§f！
execute @a[scores={tp_random_t=-51}] ~ ~ ~ title @s subtitle §l|§e感谢§6您的使用§f|
execute @a[scores={tp_random_t=-61}] ~ ~ ~ playsound random.anvil_use
execute @a[scores={tp_random_t=..-61}] ~ ~ ~ scoreboard players reset @s tp_random_t
#2