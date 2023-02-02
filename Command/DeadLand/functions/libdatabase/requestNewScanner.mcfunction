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
# 		TagList: []string{"dl_libdb:reqeustNewScanner"},
# 		ScoreBoardMap: map[string]int32{
# 			"dl_libdb:landId": Variable(), // dl_libdb:landId=1..20736; not used at this func
# 			"dl_libdb:reqId":  Variable(), // dl_libdb:reqId=1..65535; not used at this func
# 		},
# 		Type: "minecraft:armor_stand", // have been nerver checked
# 	}
# 	// A is input
# 	A.TagList = []string{
# 		"dl_libdb:scanner",
# 		"dl_libdb:scannerReadData",
# 	}
# 	A.Pos = [3]float32{
# 		Variable(),
# 		-64.0,
# 		Variable(),
# 	}
# 	// change value
# 	return A
# 	// return
# }
# ```

# Description
# 初始化一个扫描器，使得其就绪以读取数据库中的数据

# Install
# in the commandblockplace, as a repeating function but controled by redstone block

# Start Condition
# testfor @e[tag=dl_libdb:reqeustNewScanner,c=1] == Success





execute @e[tag=dl_libdb:reqeustNewScanner,c=1] ~ ~ ~ tag @s add dl_libdb:reqeustNewScanner_apiAccept
# 确定要初始化的扫描器



execute @e[tag=dl_libdb:reqeustNewScanner_apiAccept] ~ ~ ~ scoreboard players operation @s global:memory = @s dl_libdb:landId
execute @e[tag=dl_libdb:reqeustNewScanner_apiAccept] ~ ~ ~ scoreboard players operation @s global:memory %= dl_libdb_size dl:settings
execute @e[tag=dl_libdb:reqeustNewScanner_apiAccept] ~ ~ ~ scoreboard players operation @s dl_libdb:posx = @s global:memory
tag @e[tag=dl_libdb:reqeustNewScanner_apiAccept,scores={global:memory=1..}] add dl_libdb:scannerNeedCeil
execute @e[tag=dl_libdb:reqeustNewScanner_apiAccept] ~ ~ ~ scoreboard players operation @s global:memory = @s dl_libdb:landId
execute @e[tag=dl_libdb:reqeustNewScanner_apiAccept] ~ ~ ~ scoreboard players operation @s global:memory /= dl_libdb_size dl:settings
execute @e[tag=dl_libdb:reqeustNewScanner_apiAccept] ~ ~ ~ scoreboard players operation @s dl_libdb:posz = @s global:memory
scoreboard players add @e[tag=dl_libdb:reqeustNewScanner_apiAccept,tag=dl_libdb:scannerNeedCeil] dl_libdb:posz 1
execute @e[tag=!dl_libdb:reqeustNewScanner_apiAccept,tag=dl_libdb:scannerNeedCeil] ~ ~ ~ scoreboard players operation @s dl_libdb:posx = dl_libdb_size dl:settings
tag @e[tag=dl_libdb:scannerNeedCeil] remove dl_libdb:scannerNeedCeil
# 得到存放对应地皮数据的坐标(相对坐标)



execute @e[tag=dl_libdb:reqeustNewScanner_apiAccept] ~ ~ ~ tp 0.0 -64.0 0.0
# 如果这里的坐标修改了，或者是这个坐标所在行不再是 67 了，那么请同时更新“Development Document.md”中的对应内容



execute @e[tag=dl_libdb:reqeustNewScanner_apiAccept,scores={dl_libdb:posx=128..}] ~ ~ ~ tp ~128 ~ ~
execute @e[tag=dl_libdb:reqeustNewScanner_apiAccept,scores={dl_libdb:posx=128..}] ~ ~ ~ scoreboard players remove @s dl_libdb:posx 128

execute @e[tag=dl_libdb:reqeustNewScanner_apiAccept,scores={dl_libdb:posx=63..}] ~ ~ ~ tp ~63 ~ ~
execute @e[tag=dl_libdb:reqeustNewScanner_apiAccept,scores={dl_libdb:posx=63..}] ~ ~ ~ scoreboard players remove @s dl_libdb:posx 63
execute @e[tag=dl_libdb:reqeustNewScanner_apiAccept,scores={dl_libdb:posx=1..}] ~ ~ ~ tp ~1 ~ ~
execute @e[tag=dl_libdb:reqeustNewScanner_apiAccept,scores={dl_libdb:posx=1..}] ~ ~ ~ scoreboard players remove @s dl_libdb:posx 1

execute @e[tag=dl_libdb:reqeustNewScanner_apiAccept,scores={dl_libdb:posx=32..}] ~ ~ ~ tp ~32 ~ ~
execute @e[tag=dl_libdb:reqeustNewScanner_apiAccept,scores={dl_libdb:posx=32..}] ~ ~ ~ scoreboard players remove @s dl_libdb:posx 32

execute @e[tag=dl_libdb:reqeustNewScanner_apiAccept,scores={dl_libdb:posx=16..}] ~ ~ ~ tp ~16 ~ ~
execute @e[tag=dl_libdb:reqeustNewScanner_apiAccept,scores={dl_libdb:posx=16..}] ~ ~ ~ scoreboard players remove @s dl_libdb:posx 16

execute @e[tag=dl_libdb:reqeustNewScanner_apiAccept,scores={dl_libdb:posx=8..}] ~ ~ ~ tp ~8 ~ ~
execute @e[tag=dl_libdb:reqeustNewScanner_apiAccept,scores={dl_libdb:posx=8..}] ~ ~ ~ scoreboard players remove @s dl_libdb:posx 8

execute @e[tag=dl_libdb:reqeustNewScanner_apiAccept,scores={dl_libdb:posx=4..}] ~ ~ ~ tp ~4 ~ ~
execute @e[tag=dl_libdb:reqeustNewScanner_apiAccept,scores={dl_libdb:posx=4..}] ~ ~ ~ scoreboard players remove @s dl_libdb:posx 4

execute @e[tag=dl_libdb:reqeustNewScanner_apiAccept,scores={dl_libdb:posx=2..}] ~ ~ ~ tp ~2 ~ ~
execute @e[tag=dl_libdb:reqeustNewScanner_apiAccept,scores={dl_libdb:posx=2..}] ~ ~ ~ scoreboard players remove @s dl_libdb:posx 2

execute @e[tag=dl_libdb:reqeustNewScanner_apiAccept,scores={dl_libdb:posx=1..}] ~ ~ ~ tp ~1 ~ ~
execute @e[tag=dl_libdb:reqeustNewScanner_apiAccept,scores={dl_libdb:posx=1..}] ~ ~ ~ scoreboard players remove @s dl_libdb:posx 1
# posx



execute @e[tag=dl_libdb:reqeustNewScanner_apiAccept,scores={dl_libdb:posz=128..}] ~ ~ ~ tp ~ ~ ~128
execute @e[tag=dl_libdb:reqeustNewScanner_apiAccept,scores={dl_libdb:posz=128..}] ~ ~ ~ scoreboard players remove @s dl_libdb:posz 128

execute @e[tag=dl_libdb:reqeustNewScanner_apiAccept,scores={dl_libdb:posz=63..}] ~ ~ ~ tp ~ ~ ~63
execute @e[tag=dl_libdb:reqeustNewScanner_apiAccept,scores={dl_libdb:posz=63..}] ~ ~ ~ scoreboard players remove @s dl_libdb:posz 63
execute @e[tag=dl_libdb:reqeustNewScanner_apiAccept,scores={dl_libdb:posz=1..}] ~ ~ ~ tp ~ ~ ~1
execute @e[tag=dl_libdb:reqeustNewScanner_apiAccept,scores={dl_libdb:posz=1..}] ~ ~ ~ scoreboard players remove @s dl_libdb:posz 1

execute @e[tag=dl_libdb:reqeustNewScanner_apiAccept,scores={dl_libdb:posz=32..}] ~ ~ ~ tp ~ ~ ~32
execute @e[tag=dl_libdb:reqeustNewScanner_apiAccept,scores={dl_libdb:posz=32..}] ~ ~ ~ scoreboard players remove @s dl_libdb:posz 32

execute @e[tag=dl_libdb:reqeustNewScanner_apiAccept,scores={dl_libdb:posz=16..}] ~ ~ ~ tp ~ ~ ~16
execute @e[tag=dl_libdb:reqeustNewScanner_apiAccept,scores={dl_libdb:posz=16..}] ~ ~ ~ scoreboard players remove @s dl_libdb:posz 16

execute @e[tag=dl_libdb:reqeustNewScanner_apiAccept,scores={dl_libdb:posz=8..}] ~ ~ ~ tp ~ ~ ~8
execute @e[tag=dl_libdb:reqeustNewScanner_apiAccept,scores={dl_libdb:posz=8..}] ~ ~ ~ scoreboard players remove @s dl_libdb:posz 8

execute @e[tag=dl_libdb:reqeustNewScanner_apiAccept,scores={dl_libdb:posz=4..}] ~ ~ ~ tp ~ ~ ~4
execute @e[tag=dl_libdb:reqeustNewScanner_apiAccept,scores={dl_libdb:posz=4..}] ~ ~ ~ scoreboard players remove @s dl_libdb:posz 4

execute @e[tag=dl_libdb:reqeustNewScanner_apiAccept,scores={dl_libdb:posz=2..}] ~ ~ ~ tp ~ ~ ~2
execute @e[tag=dl_libdb:reqeustNewScanner_apiAccept,scores={dl_libdb:posz=2..}] ~ ~ ~ scoreboard players remove @s dl_libdb:posz 2

execute @e[tag=dl_libdb:reqeustNewScanner_apiAccept,scores={dl_libdb:posz=1..}] ~ ~ ~ tp ~ ~ ~1
execute @e[tag=dl_libdb:reqeustNewScanner_apiAccept,scores={dl_libdb:posz=1..}] ~ ~ ~ scoreboard players remove @s dl_libdb:posz 1
# posz



scoreboard players reset @e[tag=dl_libdb:reqeustNewScanner_apiAccept] dl_libdb:posx
scoreboard players set @e[tag=dl_libdb:reqeustNewScanner_apiAccept] dl_libdb:posy -64
scoreboard players reset @e[tag=dl_libdb:reqeustNewScanner_apiAccept] dl_libdb:posz

tag @e[tag=dl_libdb:reqeustNewScanner_apiAccept] add dl_libdb:scanner
tag @e[tag=dl_libdb:reqeustNewScanner_apiAccept] add dl_libdb:scannerReadData
tag @e[tag=dl_libdb:reqeustNewScanner_apiAccept] remove dl_libdb:reqeustNewScanner
tag @e[tag=dl_libdb:reqeustNewScanner_apiAccept] remove dl_libdb:reqeustNewScanner_apiAccept
# return