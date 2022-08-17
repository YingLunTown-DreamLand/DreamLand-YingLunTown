execute @a[tag=ldc:apply,tag=!ldc:using] ~ ~ ~ detect ~ ~-1 ~ minecraft:air -1 titleraw @s actionbar {"rawtext":[{"text":"§l§a已成功退出本模块\n§e期待与您§6再次相会§f！"}]}
execute @a[tag=ldc:apply,tag=!ldc:using] ~ ~ ~ detect ~ ~-1 ~ minecraft:air -1 playsound random.orb @s ~ ~ ~ 1.00 1.00 1.00
execute @a[tag=ldc:apply,tag=!ldc:using] ~ ~ ~ detect ~ ~-1 ~ minecraft:air -1 tag @s remove ldc:playsound
execute @a[tag=ldc:apply,tag=!ldc:using] ~ ~ ~ detect ~ ~-1 ~ minecraft:air -1 tag @s remove ldc:apply
#exit