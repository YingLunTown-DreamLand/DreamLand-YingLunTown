scoreboard objectives add coin dummy
scoreboard objectives add coin_sidebar dummy "§l§f英§c伦§f币"
scoreboard objectives add coin_belowname dummy "§l§f英§c伦§f币"
#scoreboards_add
execute @a[tag=!time_changed_to_coin,c=1] ~ ~ ~ scoreboard objectives add coin:math dummy
execute @a[tag=!time_changed_to_coin] ~ ~ ~ scoreboard players operation @s coin:math = @s time_min
execute @a[tag=!time_changed_to_coin,c=1] ~ ~ ~ scoreboard players set number coin:math 5
execute @a[tag=!time_changed_to_coin] ~ ~ ~ scoreboard players operation @s coin:math *= number coin:math
#math
execute @a[tag=!time_changed_to_coin] ~ ~ ~ scoreboard players operation @s coin += @s coin:math
execute @a[tag=!time_changed_to_coin] ~ ~ ~ scoreboard objectives remove coin:math
execute @a[tag=!time_changed_to_coin] ~ ~ ~ tag @s add time_changed_to_coin
#善后
scoreboard players add time coin 1
summon minecraft:armor_stand coin_give ~ 32767 ~
tag @e[name=coin_give,type=minecraft:armor_stand,y=32767,dy=0] add coin_give
scoreboard players operation @e[tag=coin_give] coin = time coin
execute @e[scores={coin=24000..},tag=coin_give] ~ ~ ~ scoreboard players add @a coin 100
execute @e[scores={coin=24000..},tag=coin_give] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§a以下在线奖励已发放到您的账户中§f：\n§l§f英§c伦§f币 §r§b* §l§7100"}]}
execute @e[scores={coin=24000..},tag=coin_give] ~ ~ ~ execute @a ~ ~ ~ playsound random.orb @s ~ ~ ~ 1 0.5 1
execute @e[scores={coin=24000..},tag=coin_give] ~ ~ ~ scoreboard players set time coin 0
execute @e[tag=coin_give] ~ ~ ~ scoreboard players reset @s coin
execute @e[tag=coin_give] ~ ~ ~ kill @s
#gave_encourage