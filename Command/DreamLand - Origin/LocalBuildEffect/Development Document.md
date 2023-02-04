# `Index`
- [`Build`](#build)
- [`define.mcfunction`](#definemcfunction)
   - [`Scoreboard`](#scoreboard)
- [`main.mcfunction`](#mainmcfunction)
   - [`Func`](#func)
   - [`Install`](#install)
   - [`Tag`](#tag)
- [`effectAddRequest.mcfunction`](#effectaddrequestmcfunction)
   - [`Func`](#func-1)
   - [`Description`](#description)
   - [`Install`](#install-1)
   - [`Start Condition`](#start-condition)
- [`effectRemoveRequest.mcfunction`](#effectremoverequestmcfunction)
   - [`Func`](#func-2)
   - [`Description`](#description-1)
   - [`Install`](#install-2)
   - [`Start Condition`](#start-condition-1)
- [`otherDimensionTest.mcfunction`](#otherdimensiontestmcfunction)
   - [`Func`](#func-3)
   - [`Description`](#description-2)
   - [`Install`](#install-3)
   - [`Delay`](#delay)
   - [`Tag`](#tag-1)



# `Build`
- `Local Build - BlockPos(71,105,-96; r=400)`
   - _`main.mcfunction::Line 10`_
   - _`main.mcfunction::Line 17`_
   - _`otherDimensionTest::Line 13`_



# `define.mcfunction`
## `Scoreboard`
- `mainBuild:time`
   - 标识距离下次刷新主城的 `药水效果` 的时间
   - 单位为 `Tick`
   - 取值范围为 `[0, 100]` 间的 `整数`



# `main.mcfunction`
## `Func`
```go
func main() {
	return
}
```

## `Install`
- 安装在 `命令区` 且循环执行

## `Tag`
- `mainBuild:effectAddRequest`
   - 标识需要被赋予主城 `药水效果` 的玩家
   - 此标签将会在使用后被立即销毁
- `mainBuild:effectRemoveRequest`
   - 标识需要被移除主城 `药水效果` 的玩家
   - 此标签将会在使用后被立即销毁



# `effectAddRequest.mcfunction`
## `Func`
```go
type entity struct {
	TagList    []string
	EffectList []effect
	Type       string
}

type effect struct {
	Name          string
	EffectiveTime int32 // 单位为 tick
	Level         uint8
}

func effectAddRequest() entity {
	var A entity = entity{
		TagList:    []string{"mainBuild:effectAddRequest"},
		Type:       "minecraft:player",
		EffectList: Variable(),
	}
	// A is input
	A.EffectList = append(A.EffectList, effect{
		Name:          "night_vision",
		EffectiveTime: 400,
		Level:         255,
	}, effect{
		Name:          "instant_health",
		EffectiveTime: 400,
		Level:         255,
	}, effect{
		Name:          "strength",
		EffectiveTime: 400,
		Level:         255,
	}, effect{
		Name:          "resistance",
		EffectiveTime: 400,
		Level:         255,
	}, effect{
		Name:          "fire_resistance",
		EffectiveTime: 400,
		Level:         255,
	}, effect{
		Name:          "saturation",
		EffectiveTime: 400,
		Level:         255,
	})
	// change value
	return A
	// return
}
```

## `Description`
- 赋予玩家主城的 `药水效果`

## `Install`
- 安装在 `命令区` 且循环执行，但由其他 `函数` 触发

## `Start Condition`
- 命令 `testfor @a[tag=mainBuild:effectAddRequest,c=1]` 成功时



# `effectRemoveRequest.mcfunction`
## `Func`
```go
type entity struct {
	TagList    []string
	EffectList []effect
	Type       string
}

type effect struct {
	Name          string
	EffectiveTime int32 // 单位为 tick
	Level         uint8
}

func effectRemoveRequest() entity {
	var A entity = entity{
		TagList: []string{"mainBuild:effectAddRequest"},
		Type:    "minecraft:player",
		EffectList: []effect{
			{
				Name:          "night_vision",
				EffectiveTime: Variable(),
				Level:         255,
			},
			{
				Name:          "instant_health",
				EffectiveTime: Variable(),
				Level:         255,
			},
			{
				Name:          "strength",
				EffectiveTime: Variable(),
				Level:         255,
			},
			{
				Name:          "resistance",
				EffectiveTime: Variable(),
				Level:         255,
			},
			{
				Name:          "fire_resistance",
				EffectiveTime: Variable(),
				Level:         255,
			},
			{
				Name:          "saturation",
				EffectiveTime: Variable(),
				Level:         255,
			},
			Variable(),
			...,
			Variable(),
		},
	}
	// A is input
	A.EffectList = A.EffectList[6:]
	// change value
	return A
	// return
}
```

## `Description`
- 移除玩家主城的 `药水效果`

## `Install`
- 安装在 `命令区` 且循环执行，但 `红石控制`

## `Start Condition`
- 命令 `testfor @a[tag=mainBuild:effectRemoveRequest,c=1]` 成功时



# `otherDimensionTest.mcfunction`
## `Func`
```go
func otherDimensionTest() {
	return
}
```

## `Description`
- 检测以前在 `主城` 但现在不在的玩家，并为这些玩家移除 `药水效果`

## `Install`
- 安装在 `命令区` 且循环执行

## `Delay`
- 每 `20 Ticks` 执行 `1` 次

## `Tag`
- `mainBuild:isIn`
   - 标识位于 `主城` 的玩家