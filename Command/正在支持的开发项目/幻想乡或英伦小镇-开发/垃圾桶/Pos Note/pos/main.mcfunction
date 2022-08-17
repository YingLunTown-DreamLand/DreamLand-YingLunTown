execute @a[tag=posnote:random,tag=!posnote:had_noted] ~ ~ ~ function pos/getpos
#getpos



execute @a[tag=posnote:random,tag=!posnote:had_noted] ~ ~ ~ scoreboard players reset * posnote:math


execute @a[tag=posnote:random,tag=!posnote:had_noted,scores={posnote:posx=0..}] ~ ~ ~ scoreboard players set num1 posnote:math 62
execute @a[tag=posnote:random,tag=!posnote:had_noted,scores={posnote:posx=..-1}] ~ ~ ~ scoreboard players set num1 posnote:math 63
execute @a[tag=posnote:random,tag=!posnote:had_noted,scores={posnote:posx=0..}] ~ ~ ~ scoreboard players set num2 posnote:math 31
execute @a[tag=posnote:random,tag=!posnote:had_noted,scores={posnote:posx=..-1}] ~ ~ ~ scoreboard players set num2 posnote:math -31

execute @a[tag=posnote:random,tag=!posnote:had_noted] ~ ~ ~ scoreboard players operation @s posnote:math = posnote:posx
execute @a[tag=posnote:random,tag=!posnote:had_noted] ~ ~ ~ scoreboard players operation @s posnote:math /= num1 posnote:math
execute @a[tag=posnote:random,tag=!posnote:had_noted,scores={posnote:posx=0..}] ~ ~ ~ scoreboard players add @s posnote:math 1
execute @a[tag=posnote:random,tag=!posnote:had_noted,scores={posnote:posx=..-1}] ~ ~ ~ scoreboard players operation save posnote:math = @s posnote:math
execute @a[tag=posnote:random,tag=!posnote:had_noted,scores={posnote:posx=..-1}] ~ ~ ~ scoreboard players operation @s posnote:math = @s posnote:posx
execute @a[tag=posnote:random,tag=!posnote:had_noted,scores={posnote:posx=..-1}] ~ ~ ~ scoreboard players operation @s posnote:math %= num1 posnote:math
execute @a[tag=posnote:random,tag=!posnote:had_noted,scores={posnote:posx=..-1,posnote:math=!0}] ~ ~ ~ scoreboard players remove save posnote:math 1
execute @a[tag=posnote:random,tag=!posnote:had_noted,scores={posnote:posx=0..}] ~ ~ ~ scoreboard players operation @s posnote:posx = @s posnote:math
execute @a[tag=posnote:random,tag=!posnote:had_noted,scores={posnote:posx=..-1}] ~ ~ ~ scoreboard players operation @s posnote:posx = save posnote:math

execute @a[tag=posnote:random,tag=!posnote:had_noted] ~ ~ ~ scoreboard players operation @s posnote:math = posnote:posx
execute @a[tag=posnote:random,tag=!posnote:had_noted] ~ ~ ~ scoreboard players operation @s posnote:math *= num1 posnote:math
execute @a[tag=posnote:random,tag=!posnote:had_noted] ~ ~ ~ scoreboard players operation @s posnote:math -= num2 posnote:math
execute @a[tag=posnote:random,tag=!posnote:had_noted] ~ ~ ~ scoreboard players operation save_1 posnote:math = @s posnote:math


execute @a[tag=posnote:random,tag=!posnote:had_noted,scores={posnote:posz=0..}] ~ ~ ~ scoreboard players set num1 posnote:math 62
execute @a[tag=posnote:random,tag=!posnote:had_noted,scores={posnote:posz=..-1}] ~ ~ ~ scoreboard players set num1 posnote:math 63
execute @a[tag=posnote:random,tag=!posnote:had_noted,scores={posnote:posz=0..}] ~ ~ ~ scoreboard players set num2 posnote:math 31
execute @a[tag=posnote:random,tag=!posnote:had_noted,scores={posnote:posz=..-1}] ~ ~ ~ scoreboard players set num2 posnote:math -31

execute @a[tag=posnote:random,tag=!posnote:had_noted] ~ ~ ~ scoreboard players operation @s posnote:math = posnote:posz
execute @a[tag=posnote:random,tag=!posnote:had_noted] ~ ~ ~ scoreboard players operation @s posnote:math /= num1 posnote:math
execute @a[tag=posnote:random,tag=!posnote:had_noted,scores={posnote:posz=0..}] ~ ~ ~ scoreboard players add @s posnote:math 1
execute @a[tag=posnote:random,tag=!posnote:had_noted,scores={posnote:posz=..-1}] ~ ~ ~ scoreboard players operation save posnote:math = @s posnote:math
execute @a[tag=posnote:random,tag=!posnote:had_noted,scores={posnote:posz=..-1}] ~ ~ ~ scoreboard players operation @s posnote:math = @s posnote:posz
execute @a[tag=posnote:random,tag=!posnote:had_noted,scores={posnote:posz=..-1}] ~ ~ ~ scoreboard players operation @s posnote:math %= num1 posnote:math
execute @a[tag=posnote:random,tag=!posnote:had_noted,scores={posnote:posz=..-1,posnote:math=!0}] ~ ~ ~ scoreboard players remove save posnote:math 1
execute @a[tag=posnote:random,tag=!posnote:had_noted,scores={posnote:posz=0..}] ~ ~ ~ scoreboard players operation @s posnote:posz = @s posnote:math
execute @a[tag=posnote:random,tag=!posnote:had_noted,scores={posnote:posz=..-1}] ~ ~ ~ scoreboard players operation @s posnote:posz = save posnote:math

execute @a[tag=posnote:random,tag=!posnote:had_noted] ~ ~ ~ scoreboard players operation @s posnote:math = posnote:posz
execute @a[tag=posnote:random,tag=!posnote:had_noted] ~ ~ ~ scoreboard players operation @s posnote:math *= num1 posnote:math
execute @a[tag=posnote:random,tag=!posnote:had_noted] ~ ~ ~ scoreboard players operation @s posnote:math -= num2 posnote:math
execute @a[tag=posnote:random,tag=!posnote:had_noted] ~ ~ ~ scoreboard players operation save_2 posnote:math = @s posnote:math


execute @a[tag=posnote:random,tag=!posnote:had_noted] ~ ~ ~ scoreboard players operation save_1 posnote:math -= @s posnote:posx
execute @a[tag=posnote:random,tag=!posnote:had_noted] ~ ~ ~ scoreboard players operation save_2 posnote:math -= @s posnote:posz


execute @a[tag=posnote:random,tag=!posnote:had_noted] ~ ~ ~ function pos/pos_return
#summon_note_entity



execute @a[tag=posnote:random,tag=!posnote:had_noted] ~ ~ ~ scoreboard players operation @s posnote:math = @s posnote:x
execute @a[tag=posnote:random,tag=!posnote:had_noted] ~ ~ ~ scoreboard players operation @s posnote:math -= @s posnote:posx
execute @a[tag=posnote:random,tag=!posnote:had_noted,scores={posnote:math=!0}] ~ ~ ~ tag @s add posnote:need_add_log

execute @a[tag=posnote:random,tag=!posnote:had_noted] ~ ~ ~ scoreboard players operation @s posnote:math = @s posnote:z
execute @a[tag=posnote:random,tag=!posnote:had_noted] ~ ~ ~ scoreboard players operation @s posnote:math -= @s posnote:posz
execute @a[tag=posnote:random,tag=!posnote:had_noted,scores={posnote:math=!0}] ~ ~ ~ tag @s add posnote:need_add_log


execute @a[tag=posnote:random,tag=!posnote:had_noted,tag=!posnote:need_add_log] ~ ~ ~ tag @s remove posnote:random
execute @a[tag=posnote:random,tag=!posnote:had_noted,tag=posnote:need_add_log] ~ ~ ~ function pos/add_log
#add_log_and_end