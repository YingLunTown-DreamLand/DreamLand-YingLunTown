gamerule commandblockoutput false
scoreboard objectives add lswk:setting dummy
scoreboard objectives add lswk:so_big dummy
scoreboard objectives add lswk:so_big_0 dummy
scoreboard objectives add lswk:player dummy
give @s repeating_command_block
summon armor_stand "§7§b连锁§e挖矿§7§r" ~ 32767 ~
execute @e[name="§7§b连锁§e挖矿§7§r",type=armor_stand,c=1] ~~~say §l§a已完成初始化§f！§b欢迎使用 §o§e@s §r§l§f！
execute @e[name="§7§b连锁§e挖矿§7§r",type=armor_stand,c=1] ~~~say §l§b版本号§f：§7[§e递§6归§c版§7/§f2§7.§f1§7.§f0§7]
execute @e[name="§7§b连锁§e挖矿§7§r",type=armor_stand,c=1] ~~~say §l§c您现在使用的连锁挖矿支持所有矿石§f，§c并附加了连锁砍树的功能§f。
execute @e[name="§7§b连锁§e挖矿§7§r",type=armor_stand,c=1] ~~~say §l§c除了这些§f，§c还有递归的功能§f，§c可以在挖矿后的瞬间完成全部连锁§f(§c视设备配置而定§f)！
execute @e[name="§7§b连锁§e挖矿§7§r",type=armor_stand,c=1] ~~~say §l§dMade By Happy2018new§f(§eHappy§f丶§aLight§f)
execute @e[name="§7§b连锁§e挖矿§7§r",type=armor_stand,c=1] ~~~say §l§2在当前位置放置命令方块§f，§2并在命令方块中输入命令§7"§f/function play§7"§f，§2并将命令方块的运行模式改为§f"§2重复§f-§2无条件§f-§2始终活动§f"§2即可§f。
execute @e[name="§7§b连锁§e挖矿§7§r",type=armor_stand,c=1] ~~~say §l§2如果需要卸载该系统§f，§2将刚刚在命令方块输入的命令改为§7"§f/function until§7"§f，§2命令方块的运行模式不变即可§f。
execute @e[name="§7§b连锁§e挖矿§7§r",type=armor_stand,c=1] ~~~say §l§b在命令方块开始运行后§f，§b在聊天栏处执行命令§7"§f/scoreboard players set @s lswk:player 1§7"§f(§b注§f：§b该指令和后文带有§7"§f:§7"§b的命令中的冒号均为英文的冒号§f，§b请勿写成§o§e中文§r§l§b的冒号§f)§b即可开始使用本系统§f。
execute @e[name="§7§b连锁§e挖矿§7§r",type=armor_stand,c=1] ~~~say §l§b所有在计分板§7"§flswk:player§7"§b分数为§f1§b的玩家都可以使用该系统§f。§b若要让其他玩家也能使用本系统§f，§b执行命令§7"§f/scoreboard players set §b玩家名 §flswk:player 1§7"§b即可§f。
execute @e[name="§7§b连锁§e挖矿§7§r",type=armor_stand,c=1] ~~~say §l§9本系统使用了盔甲架作为辅助实体进行连锁§f。§9实体越多§f，§9所需要连锁的时间就越多§f。
execute @e[name="§7§b连锁§e挖矿§7§r",type=armor_stand,c=1] ~~~say §l§9您可以管理世界§f(§9存档§f)§9上所有由该系统生成的盔甲架最大数量§f，§9在聊天执行命令§7"§f/scoreboard players set @s lswk:so_big §b数字§7"§9即可§f。
execute @e[name="§7§b连锁§e挖矿§7§r",type=armor_stand,c=1] ~~~say §l§9如果确定了刚刚设置的值§f，§9在聊天栏执行命令§7"§f/tag @s add lswk:sure§7"§9以提交更改§f。
execute @e[name="§7§b连锁§e挖矿§7§r",type=armor_stand,c=1] ~~~say §l§9§9更改成功提交后§f，§9设置者与其他管理员§f(§9创造模式的玩家§f)§9将会收到提示§f。
execute @e[name="§7§b连锁§e挖矿§7§r",type=armor_stand,c=1] ~~~say §l§9如果不进行设置§f(§9或设置为§f0，§9默认为§f0)§7，§9则不进行管理§f。
execute @e[name="§7§b连锁§e挖矿§7§r",type=armor_stand,c=1] ~~~say §l§9值的有效范围是§f0§7~§f255§7。§9设置成功后§7(§f1~255§7)§f，§9当由该系统生成的盔甲架的数量超过设置的值时§f，§9暂停所有正在进行的连锁进程§f。
execute @e[name="§7§b连锁§e挖矿§7§r",type=armor_stand,c=1] ~~~kill