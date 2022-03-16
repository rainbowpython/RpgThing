if (instance_exists(follow)){
	xTo = follow.x
	yTo = follow.y
}
//else{ xTo = camera_get_view_width(view_camera[0])/2
//	yTo = camera_get_view_height(view_camera[0])/2
//}
//update object position
hsp = xTo-x;
vsp = yTo-y ;


x += hsp//(xTo-x) / 1;
y += vsp//(yTo-y) / 1;
if(instance_exists(obj_enemy)){
image_alpha = 1;
}else image_alpha = 0;


i_timer++

if(i_timer >= 120 and obj_player.state !="Roll"){

var _inst = instance_place(x, y, obj_slime);
if _inst != noone{

	i_timer = 0;
	with(obj_player){
	
	//dir = point_direction(obj_heart.x,obj_heart.y,_inst.x, _inst.y);
	dir = point_direction(_inst.x, _inst.y,obj_heart.x,obj_heart.y);
	//direction = dir
		hithsp= lengthdir_x(6,dir);
		hitvsp= lengthdir_y(6,dir);
		
	
	
	health  -= _inst.attack_damage;
	
	
	
		if(health <= 0){
		game_end();
		}
	}
	
	
} 
}else{
with(obj_player){
	
	
}}

		
		
