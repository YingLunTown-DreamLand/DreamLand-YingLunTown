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
# func effectAddRequest() entity {
# 	var A entity = entity{
# 		TagList:    []string{"mainBuild:effectAddRequest"},
# 		Type:       "minecraft:player",
# 		EffectList: Variable(),
# 	}
# 	// A is input
# 	A.EffectList = append(A.EffectList, effect{
# 		Name:          "night_vision",
# 		EffectiveTime: 400,
# 		Level:         255,
# 	}, effect{
# 		Name:          "instant_health",
# 		EffectiveTime: 400,
# 		Level:         255,
# 	}, effect{
# 		Name:          "strength",
# 		EffectiveTime: 400,
# 		Level:         255,
# 	}, effect{
# 		Name:          "resistance",
# 		EffectiveTime: 400,
# 		Level:         255,
# 	}, effect{
# 		Name:          "fire_resistance",
# 		EffectiveTime: 400,
# 		Level:         255,
# 	}, effect{
# 		Name:          "saturation",
# 		EffectiveTime: 400,
# 		Level:         255,
# 	})
# 	// change value
# 	return A
# 	// return
# }

# Description
# 赋予玩家主城的药水效果

# Install
# in the commandblockplace, as a repeating function but activated by other functions

# Start Condition
# testfor @a[tag=mainBuild:effectAddRequest,c=1] == Success





execute @a[tag=mainBuild:effectAddRequest] ~ ~ ~ effect @s night_vision 20 255 true
execute @a[tag=mainBuild:effectAddRequest] ~ ~ ~ effect @s instant_health 400 255 false
execute @a[tag=mainBuild:effectAddRequest] ~ ~ ~ effect @s strength 20 255 true
execute @a[tag=mainBuild:effectAddRequest] ~ ~ ~ effect @s resistance 20 255 true
execute @a[tag=mainBuild:effectAddRequest] ~ ~ ~ effect @s fire_resistance 20 255 true
execute @a[tag=mainBuild:effectAddRequest] ~ ~ ~ effect @s saturation 20 255 true
execute @a[tag=mainBuild:effectAddRequest] ~ ~ ~ tag @s remove mainBuild:effectAddRequest
# add effect