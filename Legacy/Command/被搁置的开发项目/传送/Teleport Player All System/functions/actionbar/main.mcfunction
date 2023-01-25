<<<<<<< HEAD
execute @a[tag=tpa:wait,c=1] ~ ~ ~ function actionbar/wait
#更改朝向后的延迟处理

scoreboard players reset @a[tag=!tpa:user] tpa:screen_time
scoreboard players reset @a[tag=!tpa:u_allow_law] tpa:screen_time
#重置无关玩家在“菜单延迟显示”上的分数
execute @a[tag=tpa:user,tag=tpa:u_allow_law,c=1] ~ ~ ~ function actionbar/time
#用于菜单延迟显示(减少卡顿)

execute @a[tag=tpa:change_player,c=1] ~ ~ ~ function actionbar/change_player
=======
execute @a[tag=tpa:wait,c=1] ~ ~ ~ function actionbar/wait
#更改朝向后的延迟处理

scoreboard players reset @a[tag=!tpa:user] tpa:screen_time
scoreboard players reset @a[tag=!tpa:u_allow_law] tpa:screen_time
#重置无关玩家在“菜单延迟显示”上的分数
execute @a[tag=tpa:user,tag=tpa:u_allow_law,c=1] ~ ~ ~ function actionbar/time
#用于菜单延迟显示(减少卡顿)

execute @a[tag=tpa:change_player,c=1] ~ ~ ~ function actionbar/change_player
>>>>>>> d95f919c53aa8612409504198bbed77f930d5f64
#切换显示对象