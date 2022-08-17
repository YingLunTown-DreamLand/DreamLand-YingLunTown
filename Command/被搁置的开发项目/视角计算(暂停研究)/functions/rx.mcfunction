<<<<<<< HEAD
scoreboard objectives add data dummy
scoreboard objectives add rx_truly dummy
#add_scoreboard
tag @r[tag=rx,tag=!rx_r] add rx_r
#add_tag
//prepare
execute @a[tag=rx_r,rx=45.0,rxm=-45.0] ~~~tag @s add rx_normally
execute @a[tag=rx_normally] ~~~function rx_normally
//rx_normally
execute @a[tag=rx_r,tag=!rx_normally] ~~~tag @s add rx_error
execute @a[tag=rx_error,y=-10,dy=276] ~~~function rx_error
//rx_error
tag @a[tag=rx_r,tag=rx_normally] remove rx_normally
tag @a[tag=rx_r,tag=rx_error] remove rx_error
tag @a[tag=rx_r,tag=rx] remove rx
tag @a[tag=rx_r] remove rx_r
=======
scoreboard objectives add data dummy
scoreboard objectives add rx_truly dummy
#add_scoreboard
tag @r[tag=rx,tag=!rx_r] add rx_r
#add_tag
//prepare
execute @a[tag=rx_r,rx=45.0,rxm=-45.0] ~~~tag @s add rx_normally
execute @a[tag=rx_normally] ~~~function rx_normally
//rx_normally
execute @a[tag=rx_r,tag=!rx_normally] ~~~tag @s add rx_error
execute @a[tag=rx_error,y=-10,dy=276] ~~~function rx_error
//rx_error
tag @a[tag=rx_r,tag=rx_normally] remove rx_normally
tag @a[tag=rx_r,tag=rx_error] remove rx_error
tag @a[tag=rx_r,tag=rx] remove rx
tag @a[tag=rx_r] remove rx_r
>>>>>>> d95f919c53aa8612409504198bbed77f930d5f64
//remove_tag