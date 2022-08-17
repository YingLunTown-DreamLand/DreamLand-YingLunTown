execute @s ~ ~ ~ structure load ces:Entity ~ ~ ~
#加载结构

execute @s[type=minecraft:skeleton] ~ ~ ~ tp @e[tag=ces:Entity,type=!minecraft:skeleton] ~ -32767.0 ~
execute @s[type=minecraft:stray] ~ ~ ~ tp @e[tag=ces:Entity,type=!minecraft:stray] ~ -32767.0 ~
execute @s[type=minecraft:wither_skeleton] ~ ~ ~ tp @e[tag=ces:Entity,type=!minecraft:wither_skeleton] ~ -32767.0 ~
execute @s[type=minecraft:zombie] ~ ~ ~ tp @e[tag=ces:Entity,type=!minecraft:zombie] ~ -32767.0 ~
execute @s[type=minecraft:husk] ~ ~ ~ tp @e[tag=ces:Entity,type=!minecraft:husk] ~ -32767.0 ~
execute @s[type=minecraft:zombie_pigman] ~ ~ ~ tp @e[tag=ces:Entity,type=!minecraft:zombie_pigman] ~ -32767.0 ~
execute @s[type=minecraft:zombie_villager] ~ ~ ~ tp @e[tag=ces:Entity,type=!minecraft:zombie_villager] ~ -32767.0 ~
execute @s[type=minecraft:drowned] ~ ~ ~ tp @e[tag=ces:Entity,type=!minecraft:drowned] ~ -32767.0 ~
#筛选实体
#依赖标签“ces:Entity”

execute @e[tag=ces:Entity] ~ ~ ~ kill @s[y=-1,dy=-30000000]
#清理不满足条件的实体

tag @e[tag=ces:Entity] remove ces:Entity
#善后
#依赖标签“HaveBeenChanged”