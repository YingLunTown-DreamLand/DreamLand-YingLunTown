execute @a[tag=tpa:rte_false,tag=!tpa:rte_allow_1] ~ ~ ~ tellraw @s {"rawtext":[{"text":"§c未能找到目标玩家§fUID§3-§b"},{"score":{"objective":"tpa:panel_int","name":"@s"}},{"text":"§f！"}]}
execute @a[tag=tpa:rte_false,tag=tpa:rte_allow_2] ~ ~ ~ tellraw @s {"rawtext":[{"text":"§c您曾向这个玩家发送过传送请求§f，§c请等待该请求失效后再试§f！"}]}
execute @a[tag=tpa:rte_false,tag=!tpa:rte_allow_3] ~ ~ ~ tellraw @s {"rawtext":[{"text":"§c当前已提交的仍尚未失效的传送请求总数已达最大上限§b"},{"score":{"objective":"tpa:r_num_max","name":"@s"}},{"text":"§f，§c请稍后再试§f！"}]}
#返回错误信息

execute @a[tag=tpa:rte_false] ~ ~ ~ tp ~ ~ ~ ~ 0.01
execute @a[tag=tpa:rte_false] ~ ~ ~ scoreboard players set @s tpa:wait 7
execute @a[tag=tpa:rte_false] ~ ~ ~ tag @s add tpa:wait
#更改朝向

execute @a[tag=tpa:rte_false] ~ ~ ~ playsound random.break @s ~ ~ ~ 1.00 1.00 1.00
#播放音效

execute @a[tag=tpa:rte_false,tag=tpa:rte_allow_3,scores={tpa:screen=7}] ~ ~ ~ tag @s add tpa:change_player
execute @a[tag=tpa:rte_false,tag=tpa:rte_allow_3,scores={tpa:screen=7}] ~ ~ ~ tag @s add tpa:change_player_system
#切换当前显示对象

execute @a[tag=tpa:rte_false,tag=!tpa:rte_allow_3] ~ ~ ~ scoreboard players set @s tpa:screen 1
execute @a[tag=tpa:rte_false,tag=!tpa:rte_allow_3] ~ ~ ~ tag @s add tpa:run_actionbar
#重定向页面

execute @a[tag=tpa:rte_false] ~ ~ ~ tag @s remove tpa:rte_allow_1
execute @a[tag=tpa:rte_false] ~ ~ ~ tag @s remove tpa:rte_allow_2
execute @a[tag=tpa:rte_false] ~ ~ ~ tag @s remove tpa:rte_allow_3
execute @a[tag=tpa:rte_false] ~ ~ ~ tag @s remove tpa:request_teleport
execute @a[tag=tpa:rte_false] ~ ~ ~ tag @s remove tpa:rt_ergodic
execute @a[tag=tpa:rte_false] ~ ~ ~ tag @s remove tpa:rte_false
#清理标签并结束遍历状态