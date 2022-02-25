/// @description Insert description here
// You can write your code in this editor

//x = obj_camara.x  - width/2;
x = camera_get_view_x(view_camera[0]);
y = obj_camara.y - camera_get_view_height(view_camera[0])/2;
y = clamp(y,y,room_height-camera_get_view_height(view_camera[0]))
//x = clamp(x, camera_get_view_width(view_camera[0]),room_width-camera_get_view_width(view_camera[0]))
//x = clamp(x,width,x)
//view_hport[]

draw_sprite_ext(sprite_index, image_index,x,y,width/sprite_width,camera_get_view_height(view_camera[0]),0,c_white,1);

draw_set_font(fon_game_font);
draw_set_valign(fa_top);
draw_set_halign(fa_left);

for(var i = 0; i < item_count;i++){
global.joe = i
var _c = c_white;
//if pos == i {_c = c_yellow}
	draw_text_color(x+op_border,y+op_border + op_space*i, global.inventory[i], _c, _c, _c,_c, 1);
	}