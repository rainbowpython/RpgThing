/// @description Insert description here
// You can write your code in this editors
switch (state) {
	case states.idle:
	actionDur = 0;
	image_speed = 3
	if(distance_to_object(obj_player) <= distance_trigger){
	state = states.chase;
	}
	dir = random(360);
	
	speed=0;
			hsp= lengthdir_x(0.5,dir);
			vsp= lengthdir_y(0.5,dir);
	
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
	hsp = lengthdir_x(1,direction);
	vsp = lengthdir_y(1,direction);
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
			hitdir = point_direction(_inst.x,_inst.y, x,y);
			hithsp= lengthdir_x(6,hitdir);
			hitvsp= lengthdir_y(6,hitdir);
			health -= 1
		}
			
				if(place_meeting(x + hithsp, y , obj_wall)){
				hithsp=0;
					}
				if(place_meeting(x , y +hitvsp, obj_wall)){
				hitvsp=0;
					}
					
					if(place_meeting(x + hsp, y , obj_wall)){
hsp=0;
}
if(place_meeting(x , y +vsp, obj_wall)){
vsp=0;
}
			x+=hsp + hithsp;
			y+=vsp+hitvsp;
		if(health <=0){
		instance_destroy(self);
		}
		hithsp/=2;
		hitvsp/=2
	