scoreboard objectives add fill:uid dummy
#scoreboard_add
execute @e[tag=block1,tag=fill:start] ~ ~ ~ function fill
#fill
execute @e[tag=block1] ~ ~ ~ tp ~ ~ ~
execute @e[tag=block2] ~ ~ ~ tp ~ ~ ~
execute @e[tag=fill:mark] ~ ~ ~ tp ~ ~ ~
execute @e[tag=fill:mark_0] ~ ~ ~ tp ~ ~ ~
#固定实体