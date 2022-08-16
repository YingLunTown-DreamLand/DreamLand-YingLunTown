execute @a[tag=tpa:request_teleport,c=1] ~ ~ ~ function teleport/request
#发起传送请求的处理模块

execute @a[tag=tpa:allow_teleport,c=1] ~ ~ ~ function teleport/allow
#接受传送请求的处理模块

execute @a[tag=tpa:turn_down_teleport,c=1] ~ ~ ~ function teleport/TurnDown
#拒绝传送请求的处理模块

execute @a[tag=tpa:undo_teleport,c=1] ~ ~ ~ function teleport/undo
#撤销传送请求的处理模块

execute @a[tag=tpa:execute_teleport,c=1] ~ ~ ~ function teleport/execute
#执行传送请求的处理模块



#传送模块·主函数