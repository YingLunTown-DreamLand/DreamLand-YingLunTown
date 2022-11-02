# Ban "kono远古哒(gameUUID=00000000-0000-4000-8000-0000789f4ba6,qqid=3337501468)" froma all the
# DreamLand servers.
#
# This function should install in the command block place
#
# Start command is "testfor @a[name=kono远古哒,c=1]"
# Start command can also be "testfor @a[name=我系远古,c=1]" or "testfor @a[name=我不是远古,c=1]"



testfor @a[name=kono远古哒,c=1]
testfor @a[name=我系远古,c=1]
testfor @a[name=我不是远古,c=1]
# start command

setblock ~ ~-1.0 ~ minecraft:air
# reset state

tag @e[type=minecraft:armor_stand] add banYG:unselect
summon minecraft:armor_stand "https://github.c"
tag @e[type=minecraft:armor_stand,tag="",c=1] add banYG:part1
summon minecraft:armor_stand "om/Happy2018new/DreamLand-YingLunTown/issues/12"
tag @e[type=minecraft:armor_stand,tag="",c=1] add banYG:part2
# text

tag @a[name=kono远古哒] add banYG:tag
tag @a[name=我系远古] add banYG:tag
tag @a[name=我不是远古] add banYG:tag
# tag add(Not use)

kick kono远古哒 You have banned from this server because of issue 12.\nSee @e[tag=banYG:part1]@e[tag=banYG:part2] for more infomation.
kick 我系远古 You have banned from this server because of issue 12.\nSee @e[tag=banYG:part1]@e[tag=banYG:part2] for more infomation.
kick 我不是远古 You have banned from this server because of issue 12.\nSee @e[tag=banYG:part1]@e[tag=banYG:part2] for more infomation.
# send message

execute @e[type=minecraft:armor_stand,tag=!banYG:unselect] ~ ~ ~ tp ~ -32767.0 ~
execute @e[type=minecraft:armor_stand,tag=!banYG:unselect] ~ ~ ~ kill @s
execute @e[type=minecraft:armor_stand,tag=banYG:unselect] ~ ~ ~ tag @s remove banYG:unselect
# end

execute @e[tag=banYG:tag] ~ ~ ~ tag @s add kick:selector
# be sure that the target player is banned
# this command must execute after 20 ticks