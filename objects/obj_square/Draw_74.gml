/*
if (state == 1){
	//room_goto(global.target_room);
	image_alpha+=0.1
	
		if(image_alpha >= 1){
		//state = 0;
		
		state = 2;
		}
}
else if (state == 2){
	image_alpha-=0.1
		//scr_teleport()
		//room_goto(global.target_room);
		//obj_player.x = global.target_x;
		//obj_player.y = global.target_y;

}
*/
scr_fade_to_room(state);