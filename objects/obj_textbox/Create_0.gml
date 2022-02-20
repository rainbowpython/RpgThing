//textbox parameters
depth = -9999999999999999999999999

//textbox_width = 48
textbox_width = camera_get_view_width(view_camera[0])/20 -2
//textbox_height = 6
textbox_height = camera_get_view_width(view_camera[0])/200+2
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

scr_game_text(global.text);

/*
switch (global.text){
	
case "":
//text[0] = "joe wake";
//text[1] = "joe wake sfasdfasdfa";
//text[2] = "joewakesfasdfasdfa";
//text[3] = "There is a line and it brings this world..... INTO MY HAND!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"
break;	

case "trash":
//scr_text("its trash, the fuck you did you expect?")
scr_game_text(global.text);
//text[0] = "its trash, the fuck you did you expect?";
//text[1] = "joe wake sfasdfasdfa";
//text[2] = "joewakesfasdfasdfa";
//text[3] = "There is a line and it brings this world..... INTO MY HAND!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"
break;

case "box2":
scr_game_text(global.text);
//text[0] = "A good place to hide...";
//text[1] = "A body";
//text[2] = "joewakesfasdfasdfa";
//text[3] = "There is a line and it brings this world..... INTO MY HAND!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"
break;
}
*/

//text_length[0] = string_length(text[0])

