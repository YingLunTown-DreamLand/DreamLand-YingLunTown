testfor @a[x=-230.5,y=61.0,z=-313.5,r=30,tag=!spa:IsAdv,m=!1]
 setblock x y z minecraft:chain_command_block 1

setblock x' y' z' air
tellraw @a[x=-230.5,y=61.0,z=-313.5,r=30,m=0] {"rawtext":[{"text":"§a您当前正在受保护的§o§2出生点§r§a区域§f，§a因此您的游戏模式已被切换为 §b冒险模式 §f！"}]}
execute @a[x=-230.5,y=61.0,z=-313.5,r=30,m=0] ~ ~ ~ playsound random.toast @s ~ ~ ~ 1.00 1.00 1.00
tag @a[x=-230.5,y=61.0,z=-313.5,r=30,m=!1] add spa:IsAdv
gamemode 2 @a[x=-230.5,y=61.0,z=-313.5,r=30,m=0]
# Chain_1

tag @a[x=-230.5,y=61.0,z=-313.5,rm=40,tag=spa:IsAdv] add ReturnGamemode
testfor @a[tag=ReturnGamemode]
 setblock X Y Z minecraft:chain_command_block 1

setblock X' Y' Z' air
tellraw @a[tag=ReturnGamemode,m=2] {"rawtext":[{"text":"§a已将您恢复到 §b生存模式 §f！"}]}
execute @a[tag=ReturnGamemode,m=2] ~ ~ ~ playsound random.orb @s ~ ~ ~ 1.00 1.00 1.00
gamemode 0 @a[tag=ReturnGamemode,m=2]
tag @a[tag=ReturnGamemode] remove spa:IsAdv
tag @a[tag=ReturnGamemode] remove ReturnGamemode
# Chain_2

tag @a[tag=InOverworld] remove InOverworld
tag @a[rm=0] add InOverworld
tag @a[tag=!InOverworld,tag=spa:IsAdv] add ReturnGamemode
titleraw @a[x=-230.5,y=61.0,z=-313.5,r=40,m=2] actionbar {"rawtext":[{"text":"§l§e您当前正在受保护的§o§6出生点§r§l§e区域\n请离开此处约 §b40 §e格以恢复到 §b生存模式 §f！"}]}
# Chain_3



#指令前带有空格的代表该命令对应的命令方块应当被设置为“有条件的”
#Author:Happy2018new
#Version:1.0
#type:热修复包(Hot Fix)