scoreboard players add @a[tag=tpa:user,tag=tpa:u_allow_law] tpa:screen_time 1
tag @a[scores={tpa:screen_time=14..}] add tpa:run_actionbar
scoreboard players reset @a[scores={tpa:screen_time=14..}] tpa:screen_time
#用于菜单延迟显示(减少卡顿)