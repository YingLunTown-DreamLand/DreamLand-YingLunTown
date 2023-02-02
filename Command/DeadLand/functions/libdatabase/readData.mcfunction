# ```go
# type entity struct {
# 	TagList       []string
# 	ScoreBoardMap map[string]int32
# 	Pos           [3]float32
# 	Type          string
# }
# 
# func readData() entity {
# 	var A entity = entity{
# 		TagList: []string{
# 			"dl_libdb:scanner", // not used at this func
# 			"dl_libdb:scannerReadData",
# 		},
# 		ScoreBoardMap: map[string]int32{
# 			"dl_libdb:landId": Variable(), // dl_libdb:landId=1..20736; not used at this func
# 			"dl_libdb:reqId":  Variable(), // dl_libdb:reqId=1..65535; not used at this func
# 			"dl_libdb:posy":   Variable(), // dl_libdb:posy=1..65536
# 		},
# 		Pos: [3]float32{
# 			Variable(),
# 			Variable(),
# 			Variable(),
# 		},
# 		Type: "minecraft:armor_stand", // have been nerver checked
# 	}
# 	// A is input
# 	A.TagList = []string{
# 		"dl_libdb:scanner", // not used at this func
# 		"dl_libdb:scannerReadDataDown",
# 	}
# 	A.ScoreBoardMap["dl_libdb:math"] = Variable() // dl_libdb:math=1..65535
# 	A.ScoreBoardMap["dl_libdb:posy"]++
# 	A.Pos[1]++
# 	// change value
# 	return A
# 	// return
# }
# ```

# Description
# 让扫描器读入下一个 uint16 的整数，整个过程会持续至少 4 ticks 的时间

# Install
# in the commandblockplace, as a repeating function but controled by redstone block

# Start Condition
# testfor @e[tag=dl_libdb:scannerReadData,c=1] == Success



@e[
    tag=dl_libdb:scannerReadData,
    type=armor_stand
]
scoreboard players add @e[tag=dl_libdb:scannerReadData] dl_libdb:byte 0
scoreboard players add @e[tag=dl_libdb:scannerReadData] dl_libdb:process 0
scoreboard players add @e[tag=dl_libdb:scannerReadData] dl_libdb:math 0
scoreboard players add @e[tag=dl_libdb:scannerReadData] dl_libdb:posy 0
scoreboard players add @e[tag=dl_libdb:scannerReadData,scores={dl_libdb:process=0..3}] dl_libdb:process 1
# init



execute @e[tag=dl_libdb:scannerReadData] ~ ~ ~ detect ~ ~ ~ minecraft:wool 0 scoreboard players set @s dl_libdb:byte 0
execute @e[tag=dl_libdb:scannerReadData] ~ ~ ~ detect ~ ~ ~ minecraft:wool 1 scoreboard players set @s dl_libdb:byte 1
execute @e[tag=dl_libdb:scannerReadData] ~ ~ ~ detect ~ ~ ~ minecraft:wool 2 scoreboard players set @s dl_libdb:byte 2
execute @e[tag=dl_libdb:scannerReadData] ~ ~ ~ detect ~ ~ ~ minecraft:wool 3 scoreboard players set @s dl_libdb:byte 3
execute @e[tag=dl_libdb:scannerReadData] ~ ~ ~ detect ~ ~ ~ minecraft:wool 4 scoreboard players set @s dl_libdb:byte 4
execute @e[tag=dl_libdb:scannerReadData] ~ ~ ~ detect ~ ~ ~ minecraft:wool 5 scoreboard players set @s dl_libdb:byte 5
execute @e[tag=dl_libdb:scannerReadData] ~ ~ ~ detect ~ ~ ~ minecraft:wool 6 scoreboard players set @s dl_libdb:byte 6
execute @e[tag=dl_libdb:scannerReadData] ~ ~ ~ detect ~ ~ ~ minecraft:wool 7 scoreboard players set @s dl_libdb:byte 7
execute @e[tag=dl_libdb:scannerReadData] ~ ~ ~ detect ~ ~ ~ minecraft:wool 8 scoreboard players set @s dl_libdb:byte 8
execute @e[tag=dl_libdb:scannerReadData] ~ ~ ~ detect ~ ~ ~ minecraft:wool 9 scoreboard players set @s dl_libdb:byte 9
execute @e[tag=dl_libdb:scannerReadData] ~ ~ ~ detect ~ ~ ~ minecraft:wool 10 scoreboard players set @s dl_libdb:byte 10
execute @e[tag=dl_libdb:scannerReadData] ~ ~ ~ detect ~ ~ ~ minecraft:wool 11 scoreboard players set @s dl_libdb:byte 11
execute @e[tag=dl_libdb:scannerReadData] ~ ~ ~ detect ~ ~ ~ minecraft:wool 12 scoreboard players set @s dl_libdb:byte 12
execute @e[tag=dl_libdb:scannerReadData] ~ ~ ~ detect ~ ~ ~ minecraft:wool 13 scoreboard players set @s dl_libdb:byte 13
execute @e[tag=dl_libdb:scannerReadData] ~ ~ ~ detect ~ ~ ~ minecraft:wool 14 scoreboard players set @s dl_libdb:byte 14
execute @e[tag=dl_libdb:scannerReadData] ~ ~ ~ detect ~ ~ ~ minecraft:wool 15 scoreboard players set @s dl_libdb:byte 15
# get uint4



execute @e[tag=dl_libdb:scannerReadData,scores={dl_libdb:process=1}] ~ ~ ~ scoreboard players operation @s dl_libdb:byte *= _4096 dl:settings
execute @e[tag=dl_libdb:scannerReadData,scores={dl_libdb:process=2}] ~ ~ ~ scoreboard players operation @s dl_libdb:byte *= _256 dl:settings
execute @e[tag=dl_libdb:scannerReadData,scores={dl_libdb:process=3}] ~ ~ ~ scoreboard players operation @s dl_libdb:byte *= _16 dl:settings

execute @e[tag=dl_libdb:scannerReadData,scores={dl_libdb:process=1..4}] ~ ~ ~ scoreboard players operation @s dl_libdb:math += @s dl_libdb:byte
# get uint8(or in progress)


execute @e[tag=dl_libdb:scannerReadData,scores={dl_libdb:process=4..}] ~ ~ ~ tp ~ ~1 ~
scoreboard players add @e[tag=dl_libdb:scannerReadData,scores={dl_libdb:process=4..}] dl_libdb:posy 1
tag @e[tag=dl_libdb:scannerReadData,scores={dl_libdb:process=4..}] add dl_libdb:scannerReadDataDown

scoreboard players reset @e[tag=dl_libdb:scannerReadData,tag=dl_libdb:scannerReadDataDown] dl_libdb:byte
scoreboard players reset @e[tag=dl_libdb:scannerReadData,tag=dl_libdb:scannerReadDataDown] dl_libdb:process
tag @e[tag=dl_libdb:scannerReadData,tag=dl_libdb:scannerReadDataDown] remove dl_libdb:scannerReadData
# return