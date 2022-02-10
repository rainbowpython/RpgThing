/*
if (state == 0){
	timer+=0.1;
	//image_alpha+=0.05;
	//change room
	if (timer >= duration){
	//state = 1;
	
	room_goto(target_room);
	obj_player.x = global.target_x;
	obj_player.y = global.target_y;
	
	state = 1;
	}

}
else if (state == 1){
	timer-=0.1;
	
	if (timer <= 0){
	instance_destroy();
	
	}


}*/
//global.timer = timer;
alpha = timer/duration;
//global.timer = timer;
global.alpha = alpha
state = global.state