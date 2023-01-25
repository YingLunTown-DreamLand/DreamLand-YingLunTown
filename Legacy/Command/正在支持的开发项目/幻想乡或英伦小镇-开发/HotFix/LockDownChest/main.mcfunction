execute @a[tag=ldc:apply] ^ ^ ^5.0 particle minecraft:balloon_gas_particle ~-0.5 ~2.0 ~0.5
execute @a[tag=ldc:apply] ^ ^ ^5.0 particle minecraft:balloon_gas_particle ~ ~2.0 ~0.5
execute @a[tag=ldc:apply] ^ ^ ^5.0 particle minecraft:balloon_gas_particle ~0.5 ~2.0 ~0.5
execute @a[tag=ldc:apply] ^ ^ ^5.0 particle minecraft:balloon_gas_particle ~-0.5 ~2.0 ~
execute @a[tag=ldc:apply] ^ ^ ^5.0 particle minecraft:balloon_gas_particle ~ ~2.0 ~
execute @a[tag=ldc:apply] ^ ^ ^5.0 particle minecraft:balloon_gas_particle ~0.5 ~2.0 ~
execute @a[tag=ldc:apply] ^ ^ ^5.0 particle minecraft:balloon_gas_particle ~-0.5 ~2.0 ~-0.5
execute @a[tag=ldc:apply] ^ ^ ^5.0 particle minecraft:balloon_gas_particle ~ ~2.0 ~-0.5
execute @a[tag=ldc:apply] ^ ^ ^5.0 particle minecraft:balloon_gas_particle ~0.5 ~2.0 ~-0.5
#1
execute @a[tag=ldc:apply] ^ ^ ^5.0 particle minecraft:balloon_gas_particle ~-0.5 ~1.5 ~0.5
execute @a[tag=ldc:apply] ^ ^ ^5.0 particle minecraft:balloon_gas_particle ~ ~1.5 ~0.5
execute @a[tag=ldc:apply] ^ ^ ^5.0 particle minecraft:balloon_gas_particle ~0.5 ~1.5 ~0.5
execute @a[tag=ldc:apply] ^ ^ ^5.0 particle minecraft:balloon_gas_particle ~-0.5 ~1.5 ~
execute @a[tag=ldc:apply] ^ ^ ^5.0 particle minecraft:balloon_gas_particle ~ ~1.5 ~
execute @a[tag=ldc:apply] ^ ^ ^5.0 particle minecraft:balloon_gas_particle ~0.5 ~1.5 ~
execute @a[tag=ldc:apply] ^ ^ ^5.0 particle minecraft:balloon_gas_particle ~-0.5 ~1.5 ~-0.5
execute @a[tag=ldc:apply] ^ ^ ^5.0 particle minecraft:balloon_gas_particle ~ ~1.5 ~-0.5
execute @a[tag=ldc:apply] ^ ^ ^5.0 particle minecraft:balloon_gas_particle ~0.5 ~1.5 ~-0.5
#2
execute @a[tag=ldc:apply] ^ ^ ^5.0 particle minecraft:balloon_gas_particle ~-0.5 ~1.0 ~0.5
execute @a[tag=ldc:apply] ^ ^ ^5.0 particle minecraft:balloon_gas_particle ~ ~1.0 ~0.5
execute @a[tag=ldc:apply] ^ ^ ^5.0 particle minecraft:balloon_gas_particle ~0.5 ~1.0 ~0.5
execute @a[tag=ldc:apply] ^ ^ ^5.0 particle minecraft:balloon_gas_particle ~-0.5 ~1.0 ~
execute @a[tag=ldc:apply] ^ ^ ^5.0 particle minecraft:balloon_gas_particle ~ ~1.0 ~
execute @a[tag=ldc:apply] ^ ^ ^5.0 particle minecraft:balloon_gas_particle ~0.5 ~1.0 ~
execute @a[tag=ldc:apply] ^ ^ ^5.0 particle minecraft:balloon_gas_particle ~-0.5 ~1.0 ~-0.5
execute @a[tag=ldc:apply] ^ ^ ^5.0 particle minecraft:balloon_gas_particle ~ ~1.0 ~-0.5
execute @a[tag=ldc:apply] ^ ^ ^5.0 particle minecraft:balloon_gas_particle ~0.5 ~1.0 ~-0.5
#3
#print_particle

execute @a[tag=ldc:apply,tag=!ldc:playsound] ~ ~ ~ playsound random.orb @s ~ ~ ~ 1.00 1.00 1.00
execute @a[tag=ldc:apply,tag=!ldc:playsound] ~ ~ ~ tag @s add ldc:playsound
#playsound

execute @a[tag=ldc:apply] ~ ~1.5 ~ detect ^ ^ ^5 minecraft:chest -1 tag @s add ldc:IsChest
execute @a[tag=ldc:IsChest] ~ ~ ~ titleraw @s actionbar {"rawtext":[{"text":"§l§a您 §b已选中 §a箱子\n§e扔出钓鱼竿以 §b锁定§f/§b解锁 §d箱子\n§e跳起以退出本模块"}]}
execute @a[tag=!ldc:IsChest,tag=ldc:apply] ~ ~ ~ titleraw @s actionbar {"rawtext":[{"text":"§l§a您 §c未选中 §a箱子\n§e跳起以退出本模块"}]}
execute @a[tag=ldc:IsChest] ~ ~ ~ tag @s remove ldc:IsChest
#Titleraw-Actionbar