execute @e[type=minecraft:command_block_minecart,c=1] ~ ~ ~ scoreboard objectives add cbm:rz_js_shiwan dummy
execute @e[type=minecraft:command_block_minecart,c=1] ~ ~ ~ scoreboard objectives add cbm:rz_js_wan dummy
execute @e[type=minecraft:command_block_minecart,c=1] ~ ~ ~ scoreboard objectives add cbm:rz_js_qian dummy
execute @e[type=minecraft:command_block_minecart,c=1] ~ ~ ~ scoreboard objectives add cbm:rz_js_bai dummy
execute @e[type=minecraft:command_block_minecart,c=1] ~ ~ ~ scoreboard objectives add cbm:rz_js_shi dummy
execute @e[type=minecraft:command_block_minecart,c=1] ~ ~ ~ scoreboard objectives add cbm:rz_js_ge dummy
execute @e[type=minecraft:command_block_minecart,c=1] ~ ~ ~ scoreboard objectives add cbm:rz_js_all dummy
execute @e[type=minecraft:command_block_minecart,c=1] ~ ~ ~ scoreboard objectives add cbm:rz_js_unall dummy
execute @e[type=minecraft:command_block_minecart,c=1] ~ ~ ~ scoreboard objectives add cbm:rz_js_allall dummy
execute @e[type=minecraft:command_block_minecart,c=1] ~ ~ ~ scoreboard objectives add cbm:rj_all dummy
execute @e[type=minecraft:command_block_minecart,c=1] ~ ~ ~ scoreboard objectives add cbm:rj_all_n dummy
execute @e[type=minecraft:command_block_minecart,c=1] ~ ~ ~ scoreboard objectives add cbm:rj_allall dummy
execute @e[type=minecraft:command_block_minecart,c=1] ~ ~ ~ scoreboard objectives add cbm:rz_js dummy
#scoreboards_added
execute @e[type=minecraft:command_block_minecart] ~ ~ ~ scoreboard players operation @s cbm:rz_js_shiwan = @s cbm:cbm_save
execute @e[type=minecraft:command_block_minecart,c=1] ~ ~ ~ scoreboard players set shiwan cbm:rz_js 100000
execute @e[type=minecraft:command_block_minecart] ~ ~ ~ scoreboard players operation @s cbm:rz_js_shiwan /= shiwan cbm:rz_js
#shiwan
execute @e[type=minecraft:command_block_minecart] ~ ~ ~ scoreboard players operation @s cbm:rz_js_wan = @s cbm:cbm_save
execute @e[type=minecraft:command_block_minecart,c=1] ~ ~ ~ scoreboard players set wan cbm:rz_js 10000
execute @e[type=minecraft:command_block_minecart,c=1] ~ ~ ~ scoreboard players set shi cbm:rz_js 10
execute @e[type=minecraft:command_block_minecart] ~ ~ ~ scoreboard players operation @s cbm:rz_js_wan /= wan cbm:rz_js
execute @e[type=minecraft:command_block_minecart] ~ ~ ~ scoreboard players operation @s cbm:rz_js_wan %= shi cbm:rz_js
#wan
execute @e[type=minecraft:command_block_minecart] ~ ~ ~ scoreboard players operation @s cbm:rz_js_qian = @s cbm:cbm_save
execute @e[type=minecraft:command_block_minecart,c=1] ~ ~ ~ scoreboard players set qian cbm:rz_js 1000
execute @e[type=minecraft:command_block_minecart] ~ ~ ~ scoreboard players operation @s cbm:rz_js_qian /= qian cbm:rz_js
execute @e[type=minecraft:command_block_minecart] ~ ~ ~ scoreboard players operation @s cbm:rz_js_qian %= shi cbm:rz_js
#qian
execute @e[type=minecraft:command_block_minecart] ~ ~ ~ scoreboard players operation @s cbm:rz_js_bai = @s cbm:cbm_save
execute @e[type=minecraft:command_block_minecart,c=1] ~ ~ ~ scoreboard players set bai cbm:rz_js 100
execute @e[type=minecraft:command_block_minecart] ~ ~ ~ scoreboard players operation @s cbm:rz_js_bai /= bai cbm:rz_js
execute @e[type=minecraft:command_block_minecart] ~ ~ ~ scoreboard players operation @s cbm:rz_js_bai %= shi cbm:rz_js
#bai
execute @e[type=minecraft:command_block_minecart] ~ ~ ~ scoreboard players operation @s cbm:rz_js_shi = @s cbm:cbm_save
execute @e[type=minecraft:command_block_minecart] ~ ~ ~ scoreboard players operation @s cbm:rz_js_shi /= shi cbm:rz_js
execute @e[type=minecraft:command_block_minecart] ~ ~ ~ scoreboard players operation @s cbm:rz_js_shi %= shi cbm:rz_js
#shi
execute @e[type=minecraft:command_block_minecart] ~ ~ ~ scoreboard players operation @s cbm:rz_js_ge = @s cbm:cbm_save
execute @e[type=minecraft:command_block_minecart] ~ ~ ~ scoreboard players operation @s cbm:rz_js_ge %= shi cbm:rz_js
#ge
execute @e[type=minecraft:command_block_minecart] ~ ~ ~ scoreboard players operation @s cbm:rz_js_all = @s cbm:rz_js_shiwan
execute @e[type=minecraft:command_block_minecart] ~ ~ ~ scoreboard players operation @s cbm:rz_js_all += @s cbm:rz_js_wan
execute @e[type=minecraft:command_block_minecart] ~ ~ ~ scoreboard players operation @s cbm:rz_js_all += @s cbm:rz_js_qian
execute @e[type=minecraft:command_block_minecart] ~ ~ ~ scoreboard players operation @s cbm:rz_js_all += @s cbm:rz_js_bai
execute @e[type=minecraft:command_block_minecart] ~ ~ ~ scoreboard players operation @s cbm:rz_js_all += @s cbm:rz_js_shi
execute @e[type=minecraft:command_block_minecart] ~ ~ ~ scoreboard players operation @s cbm:rz_js_all += @s cbm:rz_js_ge
#all
execute @e[type=minecraft:command_block_minecart] ~ ~ ~ scoreboard players operation @s cbm:rz_js_unall = @s cbm:rz_js_shiwan
execute @e[type=minecraft:command_block_minecart] ~ ~ ~ scoreboard players operation @s cbm:rz_js_unall -= @s cbm:rz_js_wan
execute @e[type=minecraft:command_block_minecart] ~ ~ ~ scoreboard players operation @s cbm:rz_js_unall -= @s cbm:rz_js_qian
execute @e[type=minecraft:command_block_minecart] ~ ~ ~ scoreboard players operation @s cbm:rz_js_unall -= @s cbm:rz_js_bai
execute @e[type=minecraft:command_block_minecart] ~ ~ ~ scoreboard players operation @s cbm:rz_js_unall -= @s cbm:rz_js_shi
execute @e[type=minecraft:command_block_minecart] ~ ~ ~ scoreboard players operation @s cbm:rz_js_unall -= @s cbm:rz_js_ge
#unall
execute @e[type=minecraft:command_block_minecart] ~ ~ ~ scoreboard players operation @s cbm:rz_js_allall = @s cbm:rz_js_shiwan
execute @e[type=minecraft:command_block_minecart,scores={cbm:rz_js_wan=1..9}] ~ ~ ~ scoreboard players operation @s cbm:rz_js_allall *= @s cbm:rz_js_wan
execute @e[type=minecraft:command_block_minecart,scores={cbm:rz_js_qian=1..9}] ~ ~ ~ scoreboard players operation @s cbm:rz_js_allall *= @s cbm:rz_js_qian
execute @e[type=minecraft:command_block_minecart,scores={cbm:rz_js_bai=1..9}] ~ ~ ~ scoreboard players operation @s cbm:rz_js_allall *= @s cbm:rz_js_bai
execute @e[type=minecraft:command_block_minecart,scores={cbm:rz_js_shi=1..9}] ~ ~ ~ scoreboard players operation @s cbm:rz_js_allall *= @s cbm:rz_js_shi
execute @e[type=minecraft:command_block_minecart,scores={cbm:rz_js_ge=1..9}] ~ ~ ~ scoreboard players operation @s cbm:rz_js_allall *= @s cbm:rz_js_ge
#allall
execute @e[type=minecraft:command_block_minecart] ~ ~ ~ scoreboard players operation @s cbm:rj_all = @s cbm:rz_js_all
execute @e[type=minecraft:command_block_minecart] ~ ~ ~ scoreboard players operation @s cbm:rj_all += @s cbm:rz_js_unall
execute @e[type=minecraft:command_block_minecart] ~ ~ ~ scoreboard players operation @s cbm:rj_all += @s cbm:rz_js_allall
#all_0
execute @e[type=minecraft:command_block_minecart] ~ ~ ~ scoreboard players operation @s cbm:rj_all_n = @s cbm:rj_all
execute @e[type=minecraft:command_block_minecart,c=1] ~ ~ ~ scoreboard players set number cbm:rz_js 3
execute @e[type=minecraft:command_block_minecart] ~ ~ ~ scoreboard players operation @s cbm:rj_all_n /= number cbm:rz_js
#all_n
execute @e[type=minecraft:command_block_minecart] ~ ~ ~ scoreboard players operation @s cbm:rj_allall = @s cbm:rz_js_all
execute @e[type=minecraft:command_block_minecart,scores={cbm:rz_js_unall=!0}] ~ ~ ~ scoreboard players operation @s cbm:rj_allall *= @s cbm:rz_js_unall
execute @e[type=minecraft:command_block_minecart] ~ ~ ~ scoreboard players operation @s cbm:rj_allall *= @s cbm:rz_js_allall
#allall_0
execute @e[type=minecraft:command_block_minecart,c=1] ~ ~ ~ scoreboard players set fu cbm:rz_js -1
execute @e[type=minecraft:command_block_minecart,scores={cbm:rj_all=..-1}] ~ ~ ~ scoreboard players operation @s cbm:rj_all *= fu cbm:rz_js
execute @e[type=minecraft:command_block_minecart,scores={cbm:rj_all_n=..-1}] ~ ~ ~ scoreboard players operation @s cbm:rj_all_n *= fu cbm:rz_js
execute @e[type=minecraft:command_block_minecart,scores={cbm:rj_allall=..-1}] ~ ~ ~ scoreboard players operation @s cbm:rj_allall *= fu cbm:rz_js
execute @e[type=minecraft:command_block_minecart] ~ ~ ~ scoreboard players operation @s cbm:rj_allall += @s cbm:rj_all_n
execute @e[type=minecraft:command_block_minecart] ~ ~ ~ scoreboard players operation @s cbm:rj_allall += @s cbm:rj_all
execute @e[type=minecraft:command_block_minecart] ~ ~ ~ scoreboard players operation @s cbm:rj_allall -= @s cbm:c_s_r
execute @e[type=minecraft:command_block_minecart,scores={cbm:rj_allall=!0}] ~ ~ ~ kill @s
#test
execute @e[type=minecraft:command_block_minecart,c=1] ~ ~ ~ scoreboard objectives remove cbm:rz_js_shiwan
execute @e[type=minecraft:command_block_minecart,c=1] ~ ~ ~ scoreboard objectives remove cbm:rz_js_wan
execute @e[type=minecraft:command_block_minecart,c=1] ~ ~ ~ scoreboard objectives remove cbm:rz_js_qian
execute @e[type=minecraft:command_block_minecart,c=1] ~ ~ ~ scoreboard objectives remove cbm:rz_js_bai
execute @e[type=minecraft:command_block_minecart,c=1] ~ ~ ~ scoreboard objectives remove cbm:rz_js_shi
execute @e[type=minecraft:command_block_minecart,c=1] ~ ~ ~ scoreboard objectives remove cbm:rz_js_ge
execute @e[type=minecraft:command_block_minecart,c=1] ~ ~ ~ scoreboard objectives remove cbm:rz_js_all
execute @e[type=minecraft:command_block_minecart,c=1] ~ ~ ~ scoreboard objectives remove cbm:rz_js_unall
execute @e[type=minecraft:command_block_minecart,c=1] ~ ~ ~ scoreboard objectives remove cbm:rz_js_allall
execute @e[type=minecraft:command_block_minecart,c=1] ~ ~ ~ scoreboard objectives remove cbm:rj_all
execute @e[type=minecraft:command_block_minecart,c=1] ~ ~ ~ scoreboard objectives remove cbm:rj_all_n
execute @e[type=minecraft:command_block_minecart,c=1] ~ ~ ~ scoreboard objectives remove cbm:rj_allall
execute @e[type=minecraft:command_block_minecart,c=1] ~ ~ ~ scoreboard objectives remove cbm:rz_js
#scoreboards_removed