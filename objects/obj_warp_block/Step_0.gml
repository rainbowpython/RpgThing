if place_meeting(x,y,obj_player){
	with(obj_square){state = 1}
	global.type =0
	with(obj_square){if (image_alpha >= 0.5 ){
		scr_teleport(global.type)
		
		}
	
	}
	//with(obj_square){state = 2}
	
//if (global.timer <= 0){

	
//	}
//scr_fade_to_room(global.target_room, 10, c_black);
	/*
	room_goto(global.target_room);
	obj_player.x = global.target_x;
	obj_player.y = global.target_y;
	*/
	//global.type =0
}