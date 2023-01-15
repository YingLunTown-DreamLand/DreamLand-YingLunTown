# effectRemoveRequest(
#    "@a[tag=mainBuild:effectRemoveRequest]": Player
# ) -> None

# Install
# in the commandblockplace, as a repeating function

# Start Condition
# testfor @a[tag=mainBuild:effectRemoveRequest,c=1] == Success





execute @a[tag=mainBuild:effectRemoveRequest] ~ ~ ~ effect @s night_vision 0
execute @a[tag=mainBuild:effectRemoveRequest] ~ ~ ~ effect @s instant_health 0
execute @a[tag=mainBuild:effectRemoveRequest] ~ ~ ~ effect @s strength 0
execute @a[tag=mainBuild:effectRemoveRequest] ~ ~ ~ effect @s resistance 0
execute @a[tag=mainBuild:effectRemoveRequest] ~ ~ ~ effect @s fire_resistance 0
execute @a[tag=mainBuild:effectRemoveRequest] ~ ~ ~ effect @s saturation 0
execute @a[tag=mainBuild:effectRemoveRequest] ~ ~ ~ scoreboard players reset @s mainBuild:time
execute @a[tag=mainBuild:effectRemoveRequest] ~ ~ ~ tag @s remove mainBuild:effectRemoveRequest
# 移除药效