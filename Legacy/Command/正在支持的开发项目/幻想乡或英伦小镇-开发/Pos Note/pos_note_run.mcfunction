scoreboard objectives add uid dummy
#添加计分板

scoreboard players add @a uid 0
execute @a[scores={uid=0},c=1] ~ ~ ~ function pos_note/uid
#分配UID

execute @a[c=1] 0.0 0.0 0.0 execute @a[c=1] ~ ~ ~ function pos_note/pos/run
#向临时缓冲区写入坐标日志