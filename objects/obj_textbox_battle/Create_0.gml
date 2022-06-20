//textbox parameters
depth = -9999999999999999999999999

textbox_width = 20
//textbox_width = camera_get_view_width(view_camera[0])/40 -20
textbox_height = 5
//textbox_height = camera_get_view_width(view_camera[0])/200+2
border = 5;

line_sep = 15;
line_width = textbox_width*20 - border*2
txtb_spr = spr_main;

page = 0;
page_number = 0
draw_char = 0

text_spd = 1;
text_length[0] = 0
setup = false;

//options
option[0] = "";
option_link_id[0] = -1;
option_pos = 0;
option_number = 0;

scr_battle_text(global.text);


