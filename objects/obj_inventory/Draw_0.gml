/// @description Insert description here
// You can write your code in this editor
x = obj_camara.x - width/2;
y = room_height/2 - height/2;


draw_sprite_ext(sprite_index, image_index,x,y,width/sprite_width,height/sprite_height,0,c_white,0.9);

draw_set_font(fon_game_font);
draw_set_valign(fa_top);
draw_set_halign(fa_left);

for(var i = 0; i < item_count;i++){
//global.joe = i
var _c = c_white;
if pos == i {_c = c_yellow}
	draw_text_color(x+op_border,y+op_border + op_space*i, option[menu_level,global.joe], _c, _c, _c,_c, 1);
	}