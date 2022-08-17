execute @e[scores={c_e:entity_time=0..},c=1,tag=!c_e:kill] ~ ~ ~ scoreboard objectives add c_e:math dummy
#scoreboard_add
execute @e[scores={c_e:entity_time=0..},tag=!c_e:kill] ~ ~ ~ scoreboard players operation @s c_e:math = @s c_e:entity_time
execute @e[scores={c_e:entity_time=0..},tag=!c_e:kill] ~ ~ ~ scoreboard players operation @s c_e:math -= ticks c_e:time
execute @e[scores={c_e:entity_time=0..,c_e:math=..0},tag=!c_e:will_kill,tag=!c_e:kill] ~ ~ ~ tag @a[x=~-24,dx=48,y=0,dy=511,z=~-24,dz=48] add c_e:need_tellraw
execute @e[scores={c_e:entity_time=0..,c_e:math=..0},c=1,tag=!c_e:will_kill,tag=!c_e:kill] ~ ~ ~ execute @a[tag=c_e:need_tellraw] ~ ~ ~ tellraw @s {"rawtext":[{"text":"§l§f===========\n§e通§6知\n§r§a以下生物由于存在时间已超过 §l§b15 §r§a分钟而将会在 §l§b60 §r§a秒后被清理§f：\n§l§b"},{"selector":"@e[x=~-24,dx=48,y=0,dy=511,z=~-24,dz=48,scores={c_e:entity_time=0..,c_e:math=..0},tag=!c_e:will_kill]"},{"text":"\n§f==========="}]}
execute @e[scores={c_e:entity_time=0..,c_e:math=..0},c=1,tag=!c_e:will_kill,tag=!c_e:kill] ~ ~ ~ execute @a[tag=c_e:need_tellraw] ~ ~ ~ playsound random.toast @s ~ ~ ~ 1 1 1
execute @e[scores={c_e:entity_time=0..,c_e:math=..0},tag=!c_e:will_kill,tag=!c_e:kill] ~ ~ ~ scoreboard players operation @s c_e:entity_time = ticks c_e:time
execute @e[scores={c_e:entity_time=0..,c_e:math=..0},tag=!c_e:will_kill,tag=!c_e:kill] ~ ~ ~ scoreboard players add @s c_e:entity_time 1200
execute @e[scores={c_e:entity_time=0..,c_e:math=..0},tag=c_e:will_kill,tag=!c_e:kill] ~ ~ ~ tag @s add c_e:kill
execute @e[scores={c_e:entity_time=0..,c_e:math=..0},tag=!c_e:will_kill,tag=!c_e:kill] ~ ~ ~ tag @s add c_e:will_kill
tp @e[scores={c_e:entity_time=0..,c_e:math=..0},tag=c_e:kill] 0 4 0
execute @e[scores={c_e:entity_time=0..,c_e:math=..0},tag=c_e:kill] ~ ~ ~ scoreboard players reset @s
#确定是否可以清理
scoreboard objectives remove c_e:math
execute @a[tag=c_e:need_tellraw] ~ ~ ~ tag @s remove c_e:need_tellraw
#删除计分板和标签