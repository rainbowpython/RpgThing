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
	direction = point_direction(x,y,obj_player.x,obj_player.y)
	if (direction>=90 and direction<=270){
	image_xscale=-1
	}else image_xscale = 1;
	speed = 1;
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
		var _inst = instance_place(x,y,obj_player_attack)
		if _inst != noone{
			//health -= 1
			dir = point_direction(_inst.x,_inst.y, x,y);
			hithsp= lengthdir_x(6,dir);
			hitvsp= lengthdir_y(6,dir);
			//health -= 1
		}
		if(health <=0){
		instance_destroy(self);
		}
	