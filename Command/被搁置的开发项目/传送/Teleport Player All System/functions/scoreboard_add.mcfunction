scoreboard objectives add uid dummy
scoreboard objectives add tpa:math dummy
scoreboard objectives add tpa:panel_int dummy
scoreboard objectives add tpa:uid_save_t dummy
scoreboard objectives add tpa:request_num dummy
scoreboard objectives add tpa:r_num_max dummy
scoreboard objectives add tpa:uid_save_r dummy
scoreboard objectives add tpa:timeout dummy
scoreboard objectives add tpa:wait dummy
scoreboard objectives add tpa:screen dummy
scoreboard objectives add tpa:screen_time dummy
scoreboard objectives add tpa:kill_time dummy
scoreboard objectives add tpa:setting_28 dummy
scoreboard objectives add tpa:data_save dummy
scoreboard objectives add tpa:log_EventId dummy
scoreboard objectives add tpa:log_uid_r dummy
scoreboard objectives add tpa:log_uid_t dummy
scoreboard objectives add tpa:log_posx_r dummy
scoreboard objectives add tpa:log_posy_r dummy
scoreboard objectives add tpa:log_posz_r dummy
scoreboard objectives add tpa:log_posx_t dummy
scoreboard objectives add tpa:log_posy_t dummy
scoreboard objectives add tpa:log_posz_t dummy
scoreboard objectives add tpa:log_d_r dummy
scoreboard objectives add tpa:log_d_t dummy
scoreboard objectives add tpa:log_t_y dummy
scoreboard objectives add tpa:log_t_mo dummy
scoreboard objectives add tpa:log_t_d dummy
scoreboard objectives add tpa:log_t_h dummy
scoreboard objectives add tpa:log_t_mi dummy
scoreboard objectives add tpa:log_t_s dummy
scoreboard objectives add tpa:log_t_t dummy
scoreboard objectives add tpa:setting_26 dummy
scoreboard objectives add tpa:setting_27 dummy
scoreboard objectives add tpa:countdown dummy
#添加计分板

scoreboard players set request tpa:timeout 1
scoreboard players set allow tpa:timeout 5
scoreboard players set ratio tpa:timeout 1200
#初始化计分项