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
if(instance_exists(obj_slime)){
image_alpha = 1;
}else image_alpha = 0;


i_timer++
if(i_timer >= 120){
//if(place_meeting(x,y,obj_slime)){
var _inst = instance_place(x, y, obj_slime);
if _inst != noone{
//if(instance_place(x,y,obj_slime)){
	i_timer = 0;
	with(obj_player){
		//fly_timer++
	direction = -point_direction(x,y,-obj_slime.x, obj_slime.y);
	//while(fly_timer <= 120){
	speed = 8;
	health = health - _inst.attack_damage;
	//obj_player.x = -point_direction(x,0,-obj_slime.x, 0)
	//obj_player.y = -point_direction(0,y,0, obj_slime.y)
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