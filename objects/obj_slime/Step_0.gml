/// @description Insert description here
// You can write your code in this editors
switch (state) {
	case states.idle:
	actionDur = 0;
	image_speed = 1
	if(distance_to_object(obj_player) <= distance_trigger){
	state = states.chase;
	}
	direction = random(360);
	
	speed=3;
	
	
	break;
	
	case states.chase:
	if (distance_to_object(obj_player) > distance_trigger +10){
	
	state = states.idle;
	
	}else{
	direction = point_direction(x,y,obj_player.x,obj_player.y)
	
	speed = 2;
	}
	break;
}