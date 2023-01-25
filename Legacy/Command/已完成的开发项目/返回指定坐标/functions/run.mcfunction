scoreboard objectives add bp:scores dummy
scoreboard objectives add bp:time dummy
scoreboard objectives add bp:math dummy
scoreboard objectives add bp:situation dummy
scoreboard objectives add bp:keyboard dummy
scoreboard objectives add bp:ws dummy
scoreboard objectives add bp:wait dummy
scoreboard objectives add bp:gb dummy
scoreboard objectives add posx dummy
scoreboard objectives add posy dummy
scoreboard objectives add posz dummy
#scoreboard_add

tickingarea add circle ~ ~ ~ 4 bp_system_need
#tickingarea_add

execute @a[tag=bp:using] ~ ~ ~ function time
#time

execute @a[tag=bp:random] ~ ~ ~ function screen/main
#screen

execute @a[tag=bp:using,c=1] ~ ~ ~ function change/main
#change

function back_point/main
#back_point