scoreboard objectives add wb:save dummy
#scoreboard_add
tag @r[tag=wb:test] add wb:t_random
execute @a[tag=wb:t_random] ~ ~ ~ scoreboard objectives add wb:math dummy
execute @a[tag=wb:t_random] ~ ~ ~ execute @e[tag=wb:save] ~ ~ ~ scoreboard players operation @s wb:math = @s wb:save
execute @a[tag=wb:t_random] ~ ~ ~ scoreboard players operation @e[tag=wb:save] wb:math -= @s uid
execute @e[tag=wb:save,scores={wb:math=0}] ~ ~ ~ tag @a[tag=wb:t_random] add wb:have_white_power
execute @a[tag=wb:t_random] ~ ~ ~ scoreboard objectives remove wb:math
#be_sure_power
execute @a[tag=wb:t_random,tag=wb:have_white_power,scores={white_power=!1}] ~ ~ ~ tellraw @s {"rawtext":[{"text":"§l§a已恢复您的§f白名单§a权限§f！"}]}
execute @a[tag=wb:t_random,tag=wb:have_white_power,scores={white_power=!1}] ~ ~ ~ playsound random.orb @s ~ ~ ~ 1 1 1
execute @a[tag=wb:t_random,tag=wb:have_white_power,scores={white_power=!1}] ~ ~ ~ scoreboard players set @s white_power 1
execute @a[tag=wb:t_random,tag=!wb:have_white_power,scores={white_power=!0}] ~ ~ ~ tellraw @s {"rawtext":[{"text":"§l§c您的§f白名单§c权限最近有更改§7(§d删除§7)§f，§c望知悉§f！"}]}
execute @a[tag=wb:t_random,tag=!wb:have_white_power,scores={white_power=!0}] ~ ~ ~ playsound random.break @s ~ ~ ~ 1 1 1
execute @a[tag=wb:t_random,tag=!wb:have_white_power,scores={white_power=!0}] ~ ~ ~ scoreboard players set @s white_power 0
execute @a[tag=wb:t_random] ~ ~ ~ scoreboard players operation @s tick_change = @s white_power
tag @a[tag=wb:have_white_power] remove wb:have_white_power
tag @a[tag=wb:t_random] remove wb:test
tag @a[tag=wb:t_random] remove wb:t_random
#return_or_delete_white_power