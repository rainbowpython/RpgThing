/// @description Insert description here
// You can write your code in this editors
if(global.state = globalstates.normal){
switch (state) {
	case states.idle:
	actionDur = 0;
	image_speed = 3
	if(distance_to_object(obj_player) <= distance_trigger){
	state = states.chase;
	}
	//dir = random(360);
			hsp= lengthdir_x(0,dir);
			vsp= lengthdir_y(0,dir);
	image_speed = 1;
	break;
	
	case states.chase:
	image_speed = 5
	if(distance_to_object(obj_player)<distance_trigger-50){
		state = states.charge
		charge = 0
		}
	
	if (distance_to_object(obj_player) > distance_trigger +10){
	
	state = states.idle;
	
	}else{
	direction = point_direction(x,y,obj_player.x,obj_player.y)
	if (direction>=90 and direction<=270){
	image_xscale=-1
	}else image_xscale = 1;
	hsp = lengthdir_x(0.5,direction);
	vsp = lengthdir_y(0.5,direction);
	}
	break;
	case states.charge:
	hsp = 0
	vsp = 0
	charge++
	if(charge = 20){
	state = states.attack
	}
	break;
	case states.attack:
	hsp = lengthdir_x(2,direction);
	vsp = lengthdir_y(2,direction);
	//state = states.chase
	if(place_meeting(x,y,obj_wall) or place_meeting(x,y,obj_fall_wall) or place_meeting(x,y,obj_wall2)){state = states.idle}
	//if(place_meeting(x,y,obj_wall)){state = states.idle}
	break
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
			hitdir = point_direction(_inst.x,_inst.y, x,y);
			hithsp= lengthdir_x(2,hitdir);
			hitvsp= lengthdir_y(2,hitdir);
			hp -= 1
		}
			
				if(place_meeting(x + hithsp, y , obj_wall)){
				hithsp*=-0.5;
					}
				if(place_meeting(x , y +hitvsp, obj_wall)){
				hitvsp*=-0.5;
					}
					
					if(place_meeting(x + hsp, y , obj_wall)){
					hsp*=-1;
					}
				if(place_meeting(x , y +vsp, obj_wall)){
				vsp*=-1;
					}
					/*if(place_meeting(x+hithsp,y+hitvsp,obj_fall_wall)){
					instance_destroy(id);
					}*/
					if(state != states.charge){
			x+=hsp;
			y+=vsp;
			x+=hithsp;
			y+=hitvsp;
			}
}else {
image_speed =5;
}
		/*if(hp <=0){
		instance_destroy(id);
		}
		hithsp/=1.5;
		hitvsp/=1.5*/
		if (direction>=90 and direction<=270){
	image_xscale=-1
	}else image_xscale = 1;
	