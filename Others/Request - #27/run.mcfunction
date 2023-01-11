scoreboard objectives add noDeal:coin_save dummy
# add a scoreboard to save player's money(coin)

execute @a[tag=!noDeal:down] ~ ~ ~ scoreboard players add @s money 0
execute @a[tag=!noDeal:down] ~ ~ ~ scoreboard players operation @s noDeal:coin_save = @s money
execute @a[tag=!noDeal:down] ~ ~ ~ scoreboard players reset @s money
execute @a[tag=!noDeal:down] ~ ~ ~ tag @s add noDeal:down
# copy scores to another and clear the original one



# this update may so small, and I think it is no need to tell players what happened about their moeny
# just make an announcement to let them know is ok
# by ——Happy2018new
