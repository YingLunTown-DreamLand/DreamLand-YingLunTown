# type entity struct {
# 	TagList    []string
# 	EffectList []effect
# 	Type       string
# }
# 
# type effect struct {
# 	Name          string
# 	EffectiveTime int32 // 单位为 tick
# 	Level         uint8
# }
# 
# func effectRemoveRequest() entity {
# 	var A entity = entity{
# 		TagList: []string{"mainBuild:effectAddRequest"},
# 		Type:    "minecraft:player",
# 		EffectList: []effect{
# 			{
# 				Name:          "night_vision",
# 				EffectiveTime: Variable(),
# 				Level:         255,
# 			},
# 			{
# 				Name:          "instant_health",
# 				EffectiveTime: Variable(),
# 				Level:         255,
# 			},
# 			{
# 				Name:          "strength",
# 				EffectiveTime: Variable(),
# 				Level:         255,
# 			},
# 			{
# 				Name:          "resistance",
# 				EffectiveTime: Variable(),
# 				Level:         255,
# 			},
# 			{
# 				Name:          "fire_resistance",
# 				EffectiveTime: Variable(),
# 				Level:         255,
# 			},
# 			{
# 				Name:          "saturation",
# 				EffectiveTime: Variable(),
# 				Level:         255,
# 			},
# 			Variable(),
# 			...,
# 			Variable(),
# 		},
# 	}
# 	// A is input
# 	A.EffectList = A.EffectList[6:]
# 	// change value
# 	return A
# 	// return
# }

# Description
# 移除玩家主城的药水效果

# Install
# in the commandblockplace, as a repeating function but controled by redstone block

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
# remove effect