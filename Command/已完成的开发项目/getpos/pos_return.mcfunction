scoreboard objectives add p_r:sound dummy
scoreboard objectives add p_r:online dummy
scoreboard objectives add p_r:entity_time dummy
scoreboard objectives add pos_return dummy
scoreboard objectives add posx dummy
scoreboard objectives add posy dummy
scoreboard objectives add posz dummy
scoreboard objectives add p_r:settings dummy
#scoreboard_add
scoreboard players add @a p_r:online 0
scoreboard players add @a p_r:sound 0
execute @a[scores={p_r:online=0,p_r:sound=!0}] ~ ~ ~ scoreboard players set @s p_r:sound 0
execute @a[tag="pos_return:sound_for_success/player",scores={p_r:online=0}] ~ ~ ~ tag @s remove "pos_return:sound_for_success/player"
scoreboard players reset * p_r:online
scoreboard players set @a p_r:online 1
#test_if_is_unonline_change_to_online
execute @e[tag=pos_return:sound_for_success,tag="pos_return:sound_for_success/entity"] ~ ~ ~ execute @s[y=512,dy=-300000000] ~ ~ ~ tp ~ 32767.0 ~
execute @e[tag=pos_return:sound_for_success,tag="pos_return:sound_for_success/entity"] ~ ~ ~ tag @s[y=512,dy=-30000000] remove "pos_return:sound_for_success/entity"
execute @e[tag=pos_return:sound_for_success] ~ ~ ~ execute @s[y=512,dy=-300000000] ~ ~ ~ tp ~ 524288.0 ~
execute @e[tag=pos_return:sound_for_success] ~ ~ ~ execute @s[y=524287.0,dy=300000000] ~ ~ ~ kill @s
execute @e[tag=pos_return:sound_for_success] ~ ~ ~ scoreboard players remove @a[tag="pos_return:sound_for_success/player",y=-30000000,dy=600000000,x=~-8,dx=16,z=~-8,dz=16] p_r:sound 1
execute @a[tag="pos_return:sound_for_success/player",scores={p_r:sound=..0}] ~ ~ ~ playsound random.orb @s ~ ~ ~ 1 1 1
execute @a[tag="pos_return:sound_for_success/player",scores={p_r:sound=..0}] ~ ~ ~ kill @e[tag=pos_return:sound_for_success,y=-30000000,dy=600000000,x=~-8,dx=16,z=~-8,dz=16,c=1]
execute @a[tag="pos_return:sound_for_success/player",scores={p_r:sound=..0}] ~ ~ ~ scoreboard players set @s p_r:sound 0
execute @a[tag="pos_return:sound_for_success/player",scores={p_r:sound=..0}] ~ ~ ~ tag @s remove "pos_return:sound_for_success/player"
execute @e[tag=pos_return:sound_for_success] ~ ~ ~ scoreboard players add @s p_r:entity_time 1
execute @e[tag=pos_return:sound_for_success,scores={p_r:entity_time=100..}] ~ ~ ~ kill @s
#entity
tag @a[tag=ddtpd,scores={p_r:sound=0}] add pos_return
#tag_set
execute @a[tag=pos_return,scores={posx=-2048..2048,posy=0..255,posz=-2048..2048}] ~ ~ ~ tag @s add pos_return:allow
#test_if_can_return_pos
execute @a[tag=!pos_return:allow,tag=pos_return,tag=pos_return:godmode] ~ ~ ~ tellraw @s {"rawtext":[{"text":"Command Result Return:\n[ERROR|INFO] §cpos.scores.find.unsuccess\n§rPos: ("},{"score":{"objective":"posx","name":"*"}},{"text":","},{"score":{"objective":"posy","name":"*"}},{"text":","},{"score":{"objective":"posz","name":"*"}},{"text":")"}]}
execute @a[tag=!pos_return:allow,tag=pos_return] ~ ~ ~ tellraw @s {"rawtext":[{"text":"§c请确定您已经定点或定点位置在有效范围内§f！"}]}
execute @a[tag=!pos_return:allow,tag=pos_return,tag=pos_return:godmode] ~ ~ ~ tag @s add pos_return:delete
execute @a[tag=!pos_return:allow,tag=pos_return] ~ ~ ~ playsound random.break @s ~ ~ ~ 1 1 1
execute @a[tag=!pos_return:allow,tag=pos_return] ~ ~ ~ tag @s remove ddtpd
execute @a[tag=!pos_return:allow,tag=pos_return] ~ ~ ~ tag @s remove pos_return
execute @a[tag=pos_return:delete] ~ ~ ~ tag @s remove pos_return:godmode
execute @a[tag=pos_return:delete] ~ ~ ~ tag @s remove pos_return:delete
#execute_if_can_not_return_pos
execute @a[tag=pos_return,c=1] ~ ~ ~ gamerule sendcommandfeedback false
execute @a[tag=pos_return] ~ ~ ~ tp 0.5 0.5 0.5
execute @a[tag=pos_return] ~ ~ ~ tp ~ ~ ~ facing ~1 ~ ~
execute @a[tag=pos_return] ~ ~ ~ scoreboard players operation @s pos_return = @s posx
execute @a[tag=pos_return,scores={pos_return=..-1}] ~ ~ ~ tag @s add pos_return:pos_fu
execute @a[tag=pos_return,scores={pos_return=..-1}] ~ ~ ~ scoreboard players add @s pos_return 2048
#prepare_1
execute @a[tag=pos_return,scores={pos_return=1024..}] ~ ~ ~ tp ^ ^ ^1024
execute @a[tag=pos_return,scores={pos_return=1024..}] ~ ~ ~ scoreboard players remove @s pos_return 1024
#1
execute @a[tag=pos_return,scores={pos_return=512..}] ~ ~ ~ tp ^ ^ ^512
execute @a[tag=pos_return,scores={pos_return=512..}] ~ ~ ~ scoreboard players remove @s pos_return 512
#2
execute @a[tag=pos_return,scores={pos_return=256..}] ~ ~ ~ tp ^ ^ ^256
execute @a[tag=pos_return,scores={pos_return=256..}] ~ ~ ~ scoreboard players remove @s pos_return 256
#3
execute @a[tag=pos_return,scores={pos_return=128..}] ~ ~ ~ tp ^ ^ ^128
execute @a[tag=pos_return,scores={pos_return=128..}] ~ ~ ~ scoreboard players remove @s pos_return 128
#4
execute @a[tag=pos_return,scores={pos_return=63..}] ~ ~ ~ tp ^ ^ ^63
execute @a[tag=pos_return,scores={pos_return=63..}] ~ ~ ~ scoreboard players remove @s pos_return 63
#5
execute @a[tag=pos_return,scores={pos_return=32..}] ~ ~ ~ tp ^ ^ ^32
execute @a[tag=pos_return,scores={pos_return=32..}] ~ ~ ~ scoreboard players remove @s pos_return 32
#6
execute @a[tag=pos_return,scores={pos_return=16..}] ~ ~ ~ tp ^ ^ ^16
execute @a[tag=pos_return,scores={pos_return=16..}] ~ ~ ~ scoreboard players remove @s pos_return 16
#7
execute @a[tag=pos_return,scores={pos_return=8..}] ~ ~ ~ tp ^ ^ ^8
execute @a[tag=pos_return,scores={pos_return=8..}] ~ ~ ~ scoreboard players remove @s pos_return 8
#8
execute @a[tag=pos_return,scores={pos_return=4..}] ~ ~ ~ tp ^ ^ ^4
execute @a[tag=pos_return,scores={pos_return=4..}] ~ ~ ~ scoreboard players remove @s pos_return 4
#9
execute @a[tag=pos_return,scores={pos_return=2..}] ~ ~ ~ tp ^ ^ ^2
execute @a[tag=pos_return,scores={pos_return=2..}] ~ ~ ~ scoreboard players remove @s pos_return 2
#10
execute @a[tag=pos_return,scores={pos_return=1..}] ~ ~ ~ tp ^ ^ ^1
execute @a[tag=pos_return,scores={pos_return=1..}] ~ ~ ~ scoreboard players remove @s pos_return 1
#11
execute @a[tag=pos_return,scores={pos_return=1..}] ~ ~ ~ tp ^ ^ ^1
execute @a[tag=pos_return,scores={pos_return=1..}] ~ ~ ~ scoreboard players remove @s pos_return 1
#12
execute @a[tag=pos_return,scores={pos_return=1..}] ~ ~ ~ tp ^ ^ ^1
execute @a[tag=pos_return,scores={pos_return=1..}] ~ ~ ~ scoreboard players remove @s pos_return 1
#13
execute @a[tag=pos_return,tag=pos_return:pos_fu] ~ ~ ~ tp ^ ^ ^-2048
execute @a[tag=pos_return,tag=pos_return:pos_fu] ~ ~ ~ tag @s remove pos_return:pos_fu
#14
execute @a[tag=pos_return] ~ ~ ~ scoreboard players operation @s pos_return = @s posy
#prepare_2
execute @a[tag=pos_return,scores={pos_return=128..}] ~ ~ ~ tp ~ ~128 ~
execute @a[tag=pos_return,scores={pos_return=128..}] ~ ~ ~ scoreboard players remove @s pos_return 128
#1
execute @a[tag=pos_return,scores={pos_return=63..}] ~ ~ ~ tp ~ ~63 ~
execute @a[tag=pos_return,scores={pos_return=63..}] ~ ~ ~ scoreboard players remove @s pos_return 63
#2
execute @a[tag=pos_return,scores={pos_return=32..}] ~ ~ ~ tp ~ ~32 ~
execute @a[tag=pos_return,scores={pos_return=32..}] ~ ~ ~ scoreboard players remove @s pos_return 32
#3
execute @a[tag=pos_return,scores={pos_return=16..}] ~ ~ ~ tp ~ ~16 ~
execute @a[tag=pos_return,scores={pos_return=16..}] ~ ~ ~ scoreboard players remove @s pos_return 16
#4
execute @a[tag=pos_return,scores={pos_return=8..}] ~ ~ ~ tp ~ ~8 ~
execute @a[tag=pos_return,scores={pos_return=8..}] ~ ~ ~ scoreboard players remove @s pos_return 8
#5
execute @a[tag=pos_return,scores={pos_return=4..}] ~ ~ ~ tp ~ ~4 ~
execute @a[tag=pos_return,scores={pos_return=4..}] ~ ~ ~ scoreboard players remove @s pos_return 4
#6
execute @a[tag=pos_return,scores={pos_return=2..}] ~ ~ ~ tp ~ ~2 ~
execute @a[tag=pos_return,scores={pos_return=2..}] ~ ~ ~ scoreboard players remove @s pos_return 2
#7
execute @a[tag=pos_return,scores={pos_return=1..}] ~ ~ ~ tp ~ ~1 ~
execute @a[tag=pos_return,scores={pos_return=1..}] ~ ~ ~ scoreboard players remove @s pos_return 1
#8
execute @a[tag=pos_return] ~ ~ ~ tp ~ ~ ~ facing ~ ~ ~1
execute @a[tag=pos_return] ~ ~ ~ scoreboard players operation @s pos_return = @s posz
execute @a[tag=pos_return,scores={pos_return=..-1}] ~ ~ ~ tag @s add pos_return:pos_fu
execute @a[tag=pos_return,scores={pos_return=..-1}] ~ ~ ~ scoreboard players add @s pos_return 2048
#prepare_3
execute @a[tag=pos_return,scores={pos_return=1024..}] ~ ~ ~ tp ^ ^ ^1024
execute @a[tag=pos_return,scores={pos_return=1024..}] ~ ~ ~ scoreboard players remove @s pos_return 1024
#1
execute @a[tag=pos_return,scores={pos_return=512..}] ~ ~ ~ tp ^ ^ ^512
execute @a[tag=pos_return,scores={pos_return=512..}] ~ ~ ~ scoreboard players remove @s pos_return 512
#2
execute @a[tag=pos_return,scores={pos_return=256..}] ~ ~ ~ tp ^ ^ ^256
execute @a[tag=pos_return,scores={pos_return=256..}] ~ ~ ~ scoreboard players remove @s pos_return 256
#3
execute @a[tag=pos_return,scores={pos_return=128..}] ~ ~ ~ tp ^ ^ ^128
execute @a[tag=pos_return,scores={pos_return=128..}] ~ ~ ~ scoreboard players remove @s pos_return 128
#4
execute @a[tag=pos_return,scores={pos_return=63..}] ~ ~ ~ tp ^ ^ ^63
execute @a[tag=pos_return,scores={pos_return=63..}] ~ ~ ~ scoreboard players remove @s pos_return 63
#5
execute @a[tag=pos_return,scores={pos_return=32..}] ~ ~ ~ tp ^ ^ ^32
execute @a[tag=pos_return,scores={pos_return=32..}] ~ ~ ~ scoreboard players remove @s pos_return 32
#6
execute @a[tag=pos_return,scores={pos_return=16..}] ~ ~ ~ tp ^ ^ ^16
execute @a[tag=pos_return,scores={pos_return=16..}] ~ ~ ~ scoreboard players remove @s pos_return 16
#7
execute @a[tag=pos_return,scores={pos_return=8..}] ~ ~ ~ tp ^ ^ ^8
execute @a[tag=pos_return,scores={pos_return=8..}] ~ ~ ~ scoreboard players remove @s pos_return 8
#8
execute @a[tag=pos_return,scores={pos_return=4..}] ~ ~ ~ tp ^ ^ ^4
execute @a[tag=pos_return,scores={pos_return=4..}] ~ ~ ~ scoreboard players remove @s pos_return 4
#9
execute @a[tag=pos_return,scores={pos_return=2..}] ~ ~ ~ tp ^ ^ ^2
execute @a[tag=pos_return,scores={pos_return=2..}] ~ ~ ~ scoreboard players remove @s pos_return 2
#10
execute @a[tag=pos_return,scores={pos_return=1..}] ~ ~ ~ tp ^ ^ ^1
execute @a[tag=pos_return,scores={pos_return=1..}] ~ ~ ~ scoreboard players remove @s pos_return 1
#11
execute @a[tag=pos_return,scores={pos_return=1..}] ~ ~ ~ tp ^ ^ ^1
execute @a[tag=pos_return,scores={pos_return=1..}] ~ ~ ~ scoreboard players remove @s pos_return 1
#12
execute @a[tag=pos_return,scores={pos_return=1..}] ~ ~ ~ tp ^ ^ ^1
execute @a[tag=pos_return,scores={pos_return=1..}] ~ ~ ~ scoreboard players remove @s pos_return 1
#13
execute @a[tag=pos_return,tag=pos_return:pos_fu] ~ ~ ~ tp ^ ^ ^-2048
execute @a[tag=pos_return,tag=pos_return:pos_fu] ~ ~ ~ tag @s remove pos_return:pos_fu
#14
execute @a[tag=pos_return] ~ ~ ~ structure load pos_return:sound_for_success ~ ~ ~
execute @a[tag=pos_return,c=1] ~ ~ ~ execute @e[tag=pos_return:sound_for_success] ~ ~ ~ tp ~ 32767.0 ~
#end_1
execute @a[tag=pos_return] ~ ~ ~ scoreboard players set @s p_r:sound 5
execute @a[tag=pos_return] ~ ~ ~ scoreboard players reset @s pos_return
execute @a[tag=pos_return] ~ ~ ~ tag @s add "pos_return:sound_for_success/player"
execute @a[tag=pos_return] ~ ~ ~ tellraw @s {"rawtext":[{"text":"§a已成功返回定点§f！"}]}
#end_2
execute @a[tag=pos_return,c=1] ~ ~ ~ scoreboard players add sendcommandfeedback p_r:settings 0
execute @a[tag=pos_return,c=1] ~ ~ ~ tag @s add pos_return:settings_random
execute @a[tag=pos_return:settings_random] ~ ~ ~ scoreboard players operation @s p_r:settings = sendcommandfeedback p_r:settings
execute @a[tag=pos_return:settings_random,scores={p_r:settings=0}] ~ ~ ~ gamerule sendcommandfeedback true
execute @a[tag=pos_return:settings_random] ~ ~ ~ scoreboard players reset @s p_r:settings
execute @a[tag=pos_return:settings_random] ~ ~ ~ tag @s remove pos_return:settings_random
#end_3
execute @a[tag=pos_return:allow] ~ ~ ~ tag @s remove pos_return:allow
execute @a[tag=pos_return] ~ ~ ~ tag @s remove ddtpd
execute @a[tag=pos_return] ~ ~ ~ tag @s remove pos_return
#end_4