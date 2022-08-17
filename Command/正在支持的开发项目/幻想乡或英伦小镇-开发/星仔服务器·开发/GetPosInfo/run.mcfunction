scoreboard objectives add cre:posx dummy
scoreboard objectives add cre:posy dummy
scoreboard objectives add cre:posz dummy
scoreboard objectives add cre:uid dummy
scoreboard objectives add cre:math dummy
scoreboard objectives add cre:statistic dummy
#scoreboard_add


execute @a[tag=cre:GetPosInfo,c=1] ~ ~ ~ function getpos
#getpos

execute @a[tag=cre:GetPosInfo,c=1] ~ ~ ~ function dimension
#GetDimension

execute @a[tag=cre:GetPosInfo,c=1] ~ ~ ~ function sendmessage
#sendmessage

execute @a[tag=cre:GetPosInfo,c=1] ~ ~ ~ function end
#end



#Author:Happy2018new
#Version:1.0
#Type:开发者/创造者 模块·仅Beta渠道·已封装的api/system