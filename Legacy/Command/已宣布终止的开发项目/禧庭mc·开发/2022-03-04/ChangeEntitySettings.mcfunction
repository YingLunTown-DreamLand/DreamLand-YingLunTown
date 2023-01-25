tag @e[tag=!ces:HaveBeenChanged,family=undead,c=10,type=!minecraft:wither,type=!minecraft:zombie_horse,type=!minecraft:skeleton_horse,type=!minecraft:phantom,type=!minecraft:zoglin] add ces:ergodic
#添加标签

| function translate //转译用
execute @e[tag=ces:ergodic] ~ ~ ~ function cesExecute
#替换生物

execute @e[tag=ces:ergodic] ~ ~ ~ tp ~ -32767.0 ~
execute @e[tag=ces:ergodic] ~ ~ ~ kill @s
#清理生物