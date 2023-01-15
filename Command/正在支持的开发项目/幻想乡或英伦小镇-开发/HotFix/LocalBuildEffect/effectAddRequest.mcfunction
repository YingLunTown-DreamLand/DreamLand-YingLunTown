# effectAddRequest(
#    "@a[tag=mainBuild:effectAddRequest]": Player
# ) -> None

# Install
# in the commandblockplace, as a repeating function

# Start Condition
# testfor @a[tag=mainBuild:effectAddRequest,c=1] == Success





execute @a[tag=mainBuild:effectAddRequest] ~ ~ ~ effect @s night_vision 20 255 true
execute @a[tag=mainBuild:effectAddRequest] ~ ~ ~ effect @s instant_health 400 255 false
execute @a[tag=mainBuild:effectAddRequest] ~ ~ ~ effect @s strength 20 255 true
execute @a[tag=mainBuild:effectAddRequest] ~ ~ ~ effect @s resistance 20 255 true
execute @a[tag=mainBuild:effectAddRequest] ~ ~ ~ effect @s fire_resistance 20 255 true
execute @a[tag=mainBuild:effectAddRequest] ~ ~ ~ effect @s saturation 20 255 true
execute @a[tag=mainBuild:effectAddRequest] ~ ~ ~ tag @s remove mainBuild:effectAddRequest
# 添加药效