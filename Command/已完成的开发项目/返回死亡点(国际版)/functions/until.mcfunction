scoreboard objectives remove posx
scoreboard objectives remove posy
scoreboard objectives remove posz
scoreboard objectives remove posx_0
scoreboard objectives remove posy_0
scoreboard objectives remove posz_0
scoreboard objectives remove posjs
scoreboard objectives remove random
scoreboard objectives remove random_0
scoreboard objectives remove timejs
scoreboard objectives remove godmode
scoreboard objectives remove t_pos_posx
scoreboard objectives remove t_pos_posy
scoreboard objectives remove t_pos_posz
scoreboard objectives remove t_pos_actionbar
scoreboard objectives remove t_pos_jz
scoreboard objectives remove t_pos_js_ge
scoreboard objectives remove t_pos_js_shi
scoreboard objectives remove t_pos_js_bai
scoreboard objectives remove t_pos_js_qian
scoreboard objectives remove t_pos_js_wan
scoreboard objectives remove t_pos_js_shiwan
scoreboard objectives remove t_pos_js_ge_0
scoreboard objectives remove t_pos_js_shi_0
scoreboard objectives remove t_pos_js_bai_0
scoreboard objectives remove t_pos_js_qian_0
scoreboard objectives remove t_pos_js_wan_0
scoreboard objectives remove t_pos_js_sw
scoreboard objectives remove t_pos_js_ge_1
scoreboard objectives remove t_pos_js_shi_1
scoreboard objectives remove t_pos_js_bai_1
scoreboard objectives remove t_pos_js_x
scoreboard objectives remove t_pos_js_y
scoreboard objectives remove t_pos_js_z
scoreboard objectives remove random_posx
scoreboard objectives remove random_posy
scoreboard objectives remove random_posz
scoreboard objectives remove top_y
scoreboard objectives remove top_y_0
tag @a[tag=godmode_true] remove godmode_true
tag @a[tag=t_pos] remove t_pos
tag @a[tag=tell] remove tell
tickingarea remove back_to_the_die_place
setblock ~ ~ ~ air
clear @p chain_command_block 0 1
gamerule commandblockoutput true
summon armor_stand "§f§7返回死亡点系统§f§r" ~ 32767~
execute @e[name="§f§7返回死亡点系统§f§r"] ~~~say §l§a已成功§c卸载§b该系统§f！
kill @e[name="§f§7返回死亡点系统§f§r"]