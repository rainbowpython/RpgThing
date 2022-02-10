// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_teleport(){
	var _type = argument[0];
		if (_type == 0){
		room_goto(global.target_room);
		obj_player.x = global.target_x;
		obj_player.y = global.target_y;
		} else if (_type == 1){
		room_goto(global.target_room1);
		obj_player.x = global.target_x1;
		obj_player.y = global.target_y1;
		} else if (_type == 2){
		room_goto(global.target_room2);
		obj_player.x = global.target_x2;
		obj_player.y = global.target_y2;
		}
		else if (_type == 3){
		room_goto(global.target_room3);
		obj_player.x = global.target_x3;
		obj_player.y = global.target_y3;
		}
}