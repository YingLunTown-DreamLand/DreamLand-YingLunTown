execute @a[scores={wb:set_power=!0,wb:wait=0}] ~ ~ ~ tag @s add wb:set_power
#prepare
execute @a[tag=wb:set_power,scores={administrator=!1}] ~ ~ ~ tellraw @s {"rawtext":[{"text":"§l§c命令执行失败§f。§4检测到您的§a管理员§4权限已丢失§f！"}]}
execute @a[tag=wb:set_power,scores={administrator=!1}] ~ ~ ~ scoreboard players reset @s wb:set_power
execute @a[tag=wb:set_power,scores={administrator=!1}] ~ ~ ~ scoreboard players set @s wb:wait -20
execute @a[tag=wb:set_power,scores={administrator=!1}] ~ ~ ~ playsound random.break @s ~ ~ ~ 1 1 1
execute @a[tag=wb:set_power,scores={administrator=!1}] ~ ~ ~ tag @s remove wb:set_power
#power_test · 1
execute @a[tag=wb:set_power,scores={wb:set_power=..-1}] ~ ~ ~ tellraw @s {"rawtext":[{"text":"§l§b已发现您有§a意愿§b添加§f/§b删除§7白名单玩家§f，§c但是您不能添加§f/§c删除§f玩家唯一编号§c为负数的玩家§f！"}]}
execute @a[tag=wb:set_power,scores={wb:set_power=..-1}] ~ ~ ~ scoreboard players set @s wb:wait -20
execute @a[tag=wb:set_power,scores={wb:set_power=..-1}] ~ ~ ~ scoreboard players reset @s wb:set_power
execute @a[scores={wb:wait=-20}] ~ ~ ~ playsound random.break @s ~ ~ ~ 1 1 1
execute @a[scores={wb:wait=-20}] ~ ~ ~ tag @s remove wb:set_power
#power_test · 2
execute @a[tag=wb:set_power] ~ ~ ~ tellraw @s {"rawtext":[{"text":"§l§9已发现您有意愿添加§f/§b删除§7白名单玩家§f。§6现请耐心等待§f，§6我们正在处理§f，§6请在处理完成后§e再更改分数以修改其他玩家的§7白名单§e权限§f。"}]}
execute @a[tag=wb:set_power] ~ ~ ~ tag @s add wb:set_power_wait
execute @a[tag=wb:set_power] ~ ~ ~ scoreboard players set @s wb:wait 20
execute @a[tag=wb:set_power] ~ ~ ~ playsound random.toast @s ~ ~ ~ 1 1 1
execute @a[tag=wb:set_power] ~ ~ ~ tag @s remove wb:set_power
#power_test · 3