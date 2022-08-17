scoreboard objectives add posx dummy
scoreboard objectives add posy dummy
scoreboard objectives add posz dummy
scoreboard objectives add b_d_p dummy
*########################################################
scoreboard objectives add posjs dummy
scoreboard objectives add random dummy
scoreboard objectives add random_0 dummy
scoreboard objectives add timejs dummy
scoreboard objectives add godmode dummy
scoreboard objectives add t_pos_posx dummy
scoreboard objectives add t_pos_posy dummy
scoreboard objectives add t_pos_posz dummy
scoreboard objectives add t_pos_actionbar dummy
scoreboard objectives add t_pos_jz dummy
scoreboard objectives add t_pos_js_ge dummy
scoreboard objectives add t_pos_js_shi dummy
scoreboard objectives add t_pos_js_bai dummy
scoreboard objectives add t_pos_js_qian dummy
scoreboard objectives add t_pos_js_wan dummy
scoreboard objectives add t_pos_js_shiwan dummy
scoreboard objectives add t_pos_js_ge_0 dummy
scoreboard objectives add t_pos_js_shi_0 dummy
scoreboard objectives add t_pos_js_bai_0 dummy
scoreboard objectives add t_pos_js_qian_0 dummy
scoreboard objectives add t_pos_js_wan_0 dummy
scoreboard objectives add t_pos_js_sw dummy
scoreboard objectives add t_pos_js_ge_1 dummy
scoreboard objectives add t_pos_js_shi_1 dummy
scoreboard objectives add t_pos_js_bai_1 dummy
scoreboard objectives add t_pos_js_x dummy
scoreboard objectives add t_pos_js_y dummy
scoreboard objectives add t_pos_js_z dummy
scoreboard objectives add random_posx dummy
scoreboard objectives add random_posy dummy
scoreboard objectives add random_posz dummy
scoreboard objectives add top_y dummy
scoreboard objectives add top_y_0 dummy
gamerule commandblockoutput false
give @p chain_command_block
summon armor_stand "§f§7返回死亡点系统§f§r" ~ 32767~
execute @e[name="§f§7返回死亡点系统§f§r"] ~~~say §l§a已经完成初始化§f！
execute @e[name="§f§7返回死亡点系统§f§r"] ~~~say §b在命令方块中输入§f"§7/function play§f"，§b并让其以"保持开启-无条件的-重复"的方式运行即可§f！§c扔雪球返回死亡点§f。§d若需卸载该系统§f，§d请将§f"§7/function play§f"§d改为§f"§7/function until§f"。§e若要进入开发者模式§f，§e在聊天栏输入§f"§7/tag @s add godmode§f"。
kill @e[name="§f§7返回死亡点系统§f§r"]