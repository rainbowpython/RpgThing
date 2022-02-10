if place_meeting(x,y,obj_player){
	
	with(obj_square){state = 1}
	global.type =1;
	with(obj_square){if (image_alpha >= 0.5){
		scr_teleport(global.type)
		
		}
	}
//if (global.timer <= 0){
//instance_create_depth(0,0,0, obj_fade);
	
//	}
//scr_fade_to_room(global.target_room1, 10, c_black);
	//room_goto(global.target_room1);
	//obj_player.x = global.target_x1;
	//obj_player.y = global.target_y1;
	//global.type =1;
}