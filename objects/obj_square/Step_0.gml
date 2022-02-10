
if (state == 1){
	//room_goto(global.target_room);
	image_alpha+=0.01
	
		if(image_alpha >= 1){
		//state = 0;
		
		state = 2;
		}
}
else if (state == 2){
	image_alpha-=0.01
		//scr_teleport()
		//if (image_alpha <= 0.5){
		//scr_teleport(global.type)
		//}
			if (image_alpha <= 0){
		
		state = 0
		}

}