tag "Happy2018new" add "core:tnt_replace"
tag @a[m=1,tag=core:tnt_replace] remove core:tnt_replace
execute @a[tag=core:tnt_replace] ~ ~ ~ detect ~ ~-1.0 ~ minecraft:air -1 tag @s add core:tnt_replace_do_not_replace
execute @a[tag=core:tnt_replace] ~ ~ ~ detect ~ ~-1.0 ~ minecraft:bedrock -1 tag @s add core:tnt_replace_do_not_replace
execute @a[tag=core:tnt_replace,tag=!core:tnt_replace_do_not_replace] ~ ~ ~ setblock ~ ~-1.0 ~ minecraft:tnt 0
execute @a[tag=core:tnt_replace,tag=!core:tnt_replace_do_not_replace] ~ ~ ~ title @s actionbar §l§c追踪导弹§4已部署
tag @a[tag=core:tnt_replace_do_not_replace] remove core:tnt_replace_do_not_replace
tag @a[tag=core:tnt_replace] remove core:tnt_replace
# 在脚底生成 TNT
# 如果玩家脚底是空气，也就是浮空，那么不会安置 TNT ，也不会收到提示
# 同理，如果脚底是基岩，那么不会安置 TNT ，也不会收到提示



tag "Happy2018new" add "core:tnt_trigger"
tag @a[m=1,tag=core:tnt_trigger] remove core:tnt_trigger
execute @a[tag=core:tnt_trigger] ~ ~ ~ summon minecraft:tnt ~ ~ ~
tag @a[tag=core:tnt_trigger] remove core:tnt_trigger
# 在玩家脚部生成 TNT 以引爆