scoreboard objectives add posx_save dummy
scoreboard objectives add posy_save dummy
scoreboard objectives add posz_save dummy
#scoreboard_add
scoreboard players operation @s posx_save = @s pwb:posx
scoreboard players operation @s posy_save = @s pwb:posy
scoreboard players operation @s posz_save = @s pwb:posz
#scores_operation_=
execute @s[scores={posx_save=..-1}] ~ ~ ~ tag @s add pwb:move_return_posfu
execute @s[scores={posx_save=..-1}] ~ ~ ~ scoreboard players add @s posx_save 1000000
#1
execute @s[scores={posx_save=1000000..}] ~ ~ ~ tp ~1 ~ ~
execute @s[scores={posx_save=1000000..}] ~ ~ ~ scoreboard players remove @s posx_save 1000000
#2
execute @s[scores={posx_save=800000..}] ~ ~ ~ tp ~0.8 ~ ~
execute @s[scores={posx_save=800000..}] ~ ~ ~ scoreboard players remove @s posx_save 800000
#3
execute @s[scores={posx_save=400000..}] ~ ~ ~ tp ~0.4 ~ ~
execute @s[scores={posx_save=400000..}] ~ ~ ~ scoreboard players remove @s posx_save 400000
#4
execute @s[scores={posx_save=200000..}] ~ ~ ~ tp ~0.2 ~ ~
execute @s[scores={posx_save=200000..}] ~ ~ ~ scoreboard players remove @s posx_save 200000
#5
execute @s[scores={posx_save=100000..}] ~ ~ ~ tp ~0.1 ~ ~
execute @s[scores={posx_save=100000..}] ~ ~ ~ scoreboard players remove @s posx_save 100000
#6
execute @s[scores={posx_save=80000..}] ~ ~ ~ tp ~0.08 ~ ~
execute @s[scores={posx_save=80000..}] ~ ~ ~ scoreboard players remove @s posx_save 80000
#7
execute @s[scores={posx_save=40000..}] ~ ~ ~ tp ~0.04 ~ ~
execute @s[scores={posx_save=40000..}] ~ ~ ~ scoreboard players remove @s posx_save 40000
#8
execute @s[scores={posx_save=20000..}] ~ ~ ~ tp ~0.02 ~ ~
execute @s[scores={posx_save=20000..}] ~ ~ ~ scoreboard players remove @s posx_save 20000
#9
execute @s[scores={posx_save=10000..}] ~ ~ ~ tp ~0.01 ~ ~
execute @s[scores={posx_save=10000..}] ~ ~ ~ scoreboard players remove @s posx_save 10000
#10
execute @s[scores={posx_save=8000..}] ~ ~ ~ tp ~0.008 ~ ~
execute @s[scores={posx_save=8000..}] ~ ~ ~ scoreboard players remove @s posx_save 8000
#11
execute @s[scores={posx_save=4000..}] ~ ~ ~ tp ~0.004 ~ ~
execute @s[scores={posx_save=4000..}] ~ ~ ~ scoreboard players remove @s posx_save 4000
#12
execute @s[scores={posx_save=2000..}] ~ ~ ~ tp ~0.002 ~ ~
execute @s[scores={posx_save=2000..}] ~ ~ ~ scoreboard players remove @s posx_save 2000
#13
execute @s[scores={posx_save=1000..}] ~ ~ ~ tp ~0.001 ~ ~
execute @s[scores={posx_save=1000..}] ~ ~ ~ scoreboard players remove @s posx_save 1000
#14
execute @s[scores={posx_save=800..}] ~ ~ ~ tp ~0.0008 ~ ~
execute @s[scores={posx_save=800..}] ~ ~ ~ scoreboard players remove @s posx_save 800
#15
execute @s[scores={posx_save=400..}] ~ ~ ~ tp ~0.0004 ~ ~
execute @s[scores={posx_save=400..}] ~ ~ ~ scoreboard players remove @s posx_save 400
#16
execute @s[scores={posx_save=200..}] ~ ~ ~ tp ~0.0002 ~ ~
execute @s[scores={posx_save=200..}] ~ ~ ~ scoreboard players remove @s posx_save 200
#17
execute @s[scores={posx_save=100..}] ~ ~ ~ tp ~0.0001 ~ ~
execute @s[scores={posx_save=100..}] ~ ~ ~ scoreboard players remove @s posx_save 100
#18
execute @s[scores={posx_save=80..}] ~ ~ ~ tp ~0.00008 ~ ~
execute @s[scores={posx_save=80..}] ~ ~ ~ scoreboard players remove @s posx_save 80
#19
execute @s[scores={posx_save=40..}] ~ ~ ~ tp ~0.00004 ~ ~
execute @s[scores={posx_save=40..}] ~ ~ ~ scoreboard players remove @s posx_save 40
#20
execute @s[scores={posx_save=20..}] ~ ~ ~ tp ~0.00002 ~ ~
execute @s[scores={posx_save=20..}] ~ ~ ~ scoreboard players remove @s posx_save 20
#21
execute @s[scores={posx_save=10..}] ~ ~ ~ tp ~0.00001 ~ ~
execute @s[scores={posx_save=10..}] ~ ~ ~ scoreboard players remove @s posx_save 10
#22
execute @s[scores={posx_save=8..}] ~ ~ ~ tp ~0.000008 ~ ~
execute @s[scores={posx_save=8..}] ~ ~ ~ scoreboard players remove @s posx_save 8
#23
execute @s[scores={posx_save=4..}] ~ ~ ~ tp ~0.000004 ~ ~
execute @s[scores={posx_save=4..}] ~ ~ ~ scoreboard players remove @s posx_save 4
#24
execute @s[scores={posx_save=2..}] ~ ~ ~ tp ~0.000002 ~ ~
execute @s[scores={posx_save=2..}] ~ ~ ~ scoreboard players remove @s posx_save 2
#25
execute @s[scores={posx_save=1..}] ~ ~ ~ tp ~0.000001 ~ ~
execute @s[scores={posx_save=1..}] ~ ~ ~ scoreboard players remove @s posx_save 1
#26
execute @s[tag=pwb:move_return_posfu] ~ ~ ~ tp ~-1 ~ ~
execute @s[tag=pwb:move_return_posfu] ~ ~ ~ tag @s remove pwb:move_return_posfu
#27
execute @s[scores={posy_save=..-1}] ~ ~ ~ tag @s add pwb:move_return_posfu
execute @s[scores={posy_save=..-1}] ~ ~ ~ scoreboard players add @s posy_save 1000000
#1
execute @s[scores={posy_save=1000000..}] ~ ~ ~ tp ~ ~1 ~
execute @s[scores={posy_save=1000000..}] ~ ~ ~ scoreboard players remove @s posy_save 1000000
#2
execute @s[scores={posy_save=800000..}] ~ ~ ~ tp ~ ~0.8 ~
execute @s[scores={posy_save=800000..}] ~ ~ ~ scoreboard players remove @s posy_save 800000
#3
execute @s[scores={posy_save=400000..}] ~ ~ ~ tp ~ ~0.4 ~
execute @s[scores={posy_save=400000..}] ~ ~ ~ scoreboard players remove @s posy_save 400000
#4
execute @s[scores={posy_save=200000..}] ~ ~ ~ tp ~ ~0.2 ~
execute @s[scores={posy_save=200000..}] ~ ~ ~ scoreboard players remove @s posy_save 200000
#5
execute @s[scores={posy_save=100000..}] ~ ~ ~ tp ~ ~0.1 ~
execute @s[scores={posy_save=100000..}] ~ ~ ~ scoreboard players remove @s posy_save 100000
#6
execute @s[scores={posy_save=80000..}] ~ ~ ~ tp ~ ~0.08 ~
execute @s[scores={posy_save=80000..}] ~ ~ ~ scoreboard players remove @s posy_save 80000
#7
execute @s[scores={posy_save=40000..}] ~ ~ ~ tp ~ ~0.04 ~
execute @s[scores={posy_save=40000..}] ~ ~ ~ scoreboard players remove @s posy_save 40000
#8
execute @s[scores={posy_save=20000..}] ~ ~ ~ tp ~ ~0.02 ~
execute @s[scores={posy_save=20000..}] ~ ~ ~ scoreboard players remove @s posy_save 20000
#9
execute @s[scores={posy_save=10000..}] ~ ~ ~ tp ~ ~0.01 ~
execute @s[scores={posy_save=10000..}] ~ ~ ~ scoreboard players remove @s posy_save 10000
#10
execute @s[scores={posy_save=8000..}] ~ ~ ~ tp ~ ~0.008 ~
execute @s[scores={posy_save=8000..}] ~ ~ ~ scoreboard players remove @s posy_save 8000
#11
execute @s[scores={posy_save=4000..}] ~ ~ ~ tp ~ ~0.004 ~
execute @s[scores={posy_save=4000..}] ~ ~ ~ scoreboard players remove @s posy_save 4000
#12
execute @s[scores={posy_save=2000..}] ~ ~ ~ tp ~ ~0.002 ~
execute @s[scores={posy_save=2000..}] ~ ~ ~ scoreboard players remove @s posy_save 2000
#13
execute @s[scores={posy_save=1000..}] ~ ~ ~ tp ~ ~0.001 ~
execute @s[scores={posy_save=1000..}] ~ ~ ~ scoreboard players remove @s posy_save 1000
#14
execute @s[scores={posy_save=800..}] ~ ~ ~ tp ~ ~0.0008 ~
execute @s[scores={posy_save=800..}] ~ ~ ~ scoreboard players remove @s posy_save 800
#15
execute @s[scores={posy_save=400..}] ~ ~ ~ tp ~ ~0.0004 ~
execute @s[scores={posy_save=400..}] ~ ~ ~ scoreboard players remove @s posy_save 400
#16
execute @s[scores={posy_save=200..}] ~ ~ ~ tp ~ ~0.0002 ~
execute @s[scores={posy_save=200..}] ~ ~ ~ scoreboard players remove @s posy_save 200
#17
execute @s[scores={posy_save=100..}] ~ ~ ~ tp ~ ~0.0001 ~
execute @s[scores={posy_save=100..}] ~ ~ ~ scoreboard players remove @s posy_save 100
#18
execute @s[scores={posy_save=80..}] ~ ~ ~ tp ~ ~0.00008 ~
execute @s[scores={posy_save=80..}] ~ ~ ~ scoreboard players remove @s posy_save 80
#19
execute @s[scores={posy_save=40..}] ~ ~ ~ tp ~ ~0.00004 ~
execute @s[scores={posy_save=40..}] ~ ~ ~ scoreboard players remove @s posy_save 40
#20
execute @s[scores={posy_save=20..}] ~ ~ ~ tp ~ ~0.00002 ~
execute @s[scores={posy_save=20..}] ~ ~ ~ scoreboard players remove @s posy_save 20
#21
execute @s[scores={posy_save=10..}] ~ ~ ~ tp ~ ~0.00001 ~
execute @s[scores={posy_save=10..}] ~ ~ ~ scoreboard players remove @s posy_save 10
#22
execute @s[scores={posy_save=8..}] ~ ~ ~ tp ~ ~0.000008 ~
execute @s[scores={posy_save=8..}] ~ ~ ~ scoreboard players remove @s posy_save 8
#23
execute @s[scores={posy_save=4..}] ~ ~ ~ tp ~ ~0.000004 ~
execute @s[scores={posy_save=4..}] ~ ~ ~ scoreboard players remove @s posy_save 4
#24
execute @s[scores={posy_save=2..}] ~ ~ ~ tp ~ ~0.000002 ~
execute @s[scores={posy_save=2..}] ~ ~ ~ scoreboard players remove @s posy_save 2
#25
execute @s[scores={posy_save=1..}] ~ ~ ~ tp ~ ~0.000001 ~
execute @s[scores={posy_save=1..}] ~ ~ ~ scoreboard players remove @s posy_save 1
#26
execute @s[tag=pwb:move_return_posfu] ~ ~ ~ tp ~ ~-1 ~
execute @s[tag=pwb:move_return_posfu] ~ ~ ~ tag @s remove pwb:move_return_posfu
#27
execute @s[scores={posz_save=..-1}] ~ ~ ~ tag @s add pwb:move_return_posfu
execute @s[scores={posz_save=..-1}] ~ ~ ~ scoreboard players add @s posz_save 1000000
#1
execute @s[scores={posz_save=1000000..}] ~ ~ ~ tp ~ ~ ~1
execute @s[scores={posz_save=1000000..}] ~ ~ ~ scoreboard players remove @s posz_save 1000000
#2
execute @s[scores={posz_save=800000..}] ~ ~ ~ tp ~ ~ ~0.8
execute @s[scores={posz_save=800000..}] ~ ~ ~ scoreboard players remove @s posz_save 800000
#3
execute @s[scores={posz_save=400000..}] ~ ~ ~ tp ~ ~ ~0.4
execute @s[scores={posz_save=400000..}] ~ ~ ~ scoreboard players remove @s posz_save 400000
#4
execute @s[scores={posz_save=200000..}] ~ ~ ~ tp ~ ~ ~0.2
execute @s[scores={posz_save=200000..}] ~ ~ ~ scoreboard players remove @s posz_save 200000
#5
execute @s[scores={posz_save=100000..}] ~ ~ ~ tp ~ ~ ~0.1
execute @s[scores={posz_save=100000..}] ~ ~ ~ scoreboard players remove @s posz_save 100000
#6
execute @s[scores={posz_save=80000..}] ~ ~ ~ tp ~ ~ ~0.08
execute @s[scores={posz_save=80000..}] ~ ~ ~ scoreboard players remove @s posz_save 80000
#7
execute @s[scores={posz_save=40000..}] ~ ~ ~ tp ~ ~ ~0.04
execute @s[scores={posz_save=40000..}] ~ ~ ~ scoreboard players remove @s posz_save 40000
#8
execute @s[scores={posz_save=20000..}] ~ ~ ~ tp ~ ~ ~0.02
execute @s[scores={posz_save=20000..}] ~ ~ ~ scoreboard players remove @s posz_save 20000
#9
execute @s[scores={posz_save=10000..}] ~ ~ ~ tp ~ ~ ~0.01
execute @s[scores={posz_save=10000..}] ~ ~ ~ scoreboard players remove @s posz_save 10000
#10
execute @s[scores={posz_save=8000..}] ~ ~ ~ tp ~ ~ ~0.008
execute @s[scores={posz_save=8000..}] ~ ~ ~ scoreboard players remove @s posz_save 8000
#11
execute @s[scores={posz_save=4000..}] ~ ~ ~ tp ~ ~ ~0.004
execute @s[scores={posz_save=4000..}] ~ ~ ~ scoreboard players remove @s posz_save 4000
#12
execute @s[scores={posz_save=2000..}] ~ ~ ~ tp ~ ~ ~0.002
execute @s[scores={posz_save=2000..}] ~ ~ ~ scoreboard players remove @s posz_save 2000
#13
execute @s[scores={posz_save=1000..}] ~ ~ ~ tp ~ ~ ~0.001
execute @s[scores={posz_save=1000..}] ~ ~ ~ scoreboard players remove @s posz_save 1000
#14
execute @s[scores={posz_save=800..}] ~ ~ ~ tp ~ ~ ~0.0008
execute @s[scores={posz_save=800..}] ~ ~ ~ scoreboard players remove @s posz_save 800
#15
execute @s[scores={posz_save=400..}] ~ ~ ~ tp ~ ~ ~0.0004
execute @s[scores={posz_save=400..}] ~ ~ ~ scoreboard players remove @s posz_save 400
#16
execute @s[scores={posz_save=200..}] ~ ~ ~ tp ~ ~ ~0.0002
execute @s[scores={posz_save=200..}] ~ ~ ~ scoreboard players remove @s posz_save 200
#17
execute @s[scores={posz_save=100..}] ~ ~ ~ tp ~ ~ ~0.0001
execute @s[scores={posz_save=100..}] ~ ~ ~ scoreboard players remove @s posz_save 100
#18
execute @s[scores={posz_save=80..}] ~ ~ ~ tp ~ ~ ~0.00008
execute @s[scores={posz_save=80..}] ~ ~ ~ scoreboard players remove @s posz_save 80
#19
execute @s[scores={posz_save=40..}] ~ ~ ~ tp ~ ~ ~0.00004
execute @s[scores={posz_save=40..}] ~ ~ ~ scoreboard players remove @s posz_save 40
#20
execute @s[scores={posz_save=20..}] ~ ~ ~ tp ~ ~ ~0.00002
execute @s[scores={posz_save=20..}] ~ ~ ~ scoreboard players remove @s posz_save 20
#21
execute @s[scores={posz_save=10..}] ~ ~ ~ tp ~ ~ ~0.00001
execute @s[scores={posz_save=10..}] ~ ~ ~ scoreboard players remove @s posz_save 10
#22
execute @s[scores={posz_save=8..}] ~ ~ ~ tp ~ ~ ~0.000008
execute @s[scores={posz_save=8..}] ~ ~ ~ scoreboard players remove @s posz_save 8
#23
execute @s[scores={posz_save=4..}] ~ ~ ~ tp ~ ~ ~0.000004
execute @s[scores={posz_save=4..}] ~ ~ ~ scoreboard players remove @s posz_save 4
#24
execute @s[scores={posz_save=2..}] ~ ~ ~ tp ~ ~ ~0.000002
execute @s[scores={posz_save=2..}] ~ ~ ~ scoreboard players remove @s posz_save 2
#25
execute @s[scores={posz_save=1..}] ~ ~ ~ tp ~ ~ ~0.000001
execute @s[scores={posz_save=1..}] ~ ~ ~ scoreboard players remove @s posz_save 1
#26
execute @s[tag=pwb:move_return_posfu] ~ ~ ~ tp ~ ~ ~-1
execute @s[tag=pwb:move_return_posfu] ~ ~ ~ tag @s remove pwb:move_return_posfu
#27
scoreboard objectives remove posx_save
scoreboard objectives remove posy_save
scoreboard objectives remove posz_save
#scoreboard_remove