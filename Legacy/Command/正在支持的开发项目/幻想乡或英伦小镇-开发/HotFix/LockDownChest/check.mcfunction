execute @a[tag=ldc:check] ~ ~ ~ kill @e[type=minecraft:fishing_hook,r=3,c=1]
#1
execute @a[tag=ldc:apply] ^ ^ ^5.0 detect ~ ~1.5 ~ minecraft:chest -1 execute @s ^ ^ ^5.0 detect ~ ~0.5 ~ minecraft:air -1 execute @s ^ ^ ^5.0 detect ~ ~2.5 ~ minecraft:air -1 tag @s add ldc:allow
execute @a[tag=ldc:apply] ^ ^ ^5.0 detect ~ ~1.5 ~ minecraft:chest -1 execute @s ^ ^ ^5.0 detect ~ ~0.5 ~ minecraft:deny -1 execute @s ^ ^ ^5.0 detect ~ ~2.5 ~ minecraft:allow -1 tag @s add ldc:allow
execute @a[tag=ldc:check,tag=ldc:allow] ~ ~ ~ tag @s add ldc:using
execute @a[tag=ldc:check,tag=!ldc:allow] ~ ~ ~ tellraw @s {"rawtext":[{"text":"§c您没有选择到任何箱子或箱子上下方存在非空气方块§f！"}]}
execute @a[tag=ldc:check,tag=!ldc:allow] ~ ~ ~ playsound random.break @s ~ ~ ~ 1.00 1.00 1.00
#2
execute @a[tag=ldc:check] ~ ~ ~ tag @s remove ldc:check
execute @a[tag=ldc:allow] ~ ~ ~ tag @s remove ldc:allow
#3
#check