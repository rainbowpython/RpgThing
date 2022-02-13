if (instance_exists(follow)){
	xTo = follow.x
	yTo = follow.y
}
//else{ xTo = camera_get_view_width(view_camera[0])/2
//	yTo = camera_get_view_height(view_camera[0])/2
//}
//update object position

x += (xTo-x) / 1;
y += (yTo-y) / 1;


i_timer++
if(i_timer >= 120){
if(place_meeting(x,y,obj_slime)){
	i_timer = 0;
	with(obj_player){
		//fly_timer++
	direction = -point_direction(x,y,-obj_slime.x, obj_slime.y);
	//while(fly_timer <= 120){
	speed = 8;
	health--;
	//	}
	//	speed = 0;
	
	
		if(health == 0){
		game_end();
		}
	}
	
	
} 
}else{
with(obj_player){
	
	speed = 0;
		}

	}