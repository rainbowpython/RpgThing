/// @description Insert description here
// You can write your code in this editors
switch (state) {
	case states.idle:
	actionDur = 0;
	image_speed = 3
	if(distance_to_object(obj_player) <= distance_trigger){
	state = states.chase;
	}
	direction = random(360);
	
	speed=0;
	
	
	break;
	
	case states.chase:
	image_speed = 10
	if (distance_to_object(obj_player) > distance_trigger +10){
	
	state = states.idle;
	
	}else{
	direction = random_range(point_direction(x,y,obj_player.x,obj_player.y)-90, point_direction(x,y,obj_player.x,obj_player.y)+45);
	if (direction>=90 and direction<=270){
	image_xscale=-1
	}else image_xscale = 1;
	speed = 2;
	}
	break;
}
if (direction>=90 and direction<=270){
	image_xscale=-1
	}else image_xscale = 1;
	
	if(instance_exists(obj_inventory)){
speed = 0;
image_speed = 0
} 
		
		if(place_meeting(x, y, obj_player_attack)){}
	