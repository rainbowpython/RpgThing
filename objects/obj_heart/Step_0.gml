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

var _inst = instance_place(x, y, obj_enemy);
if _inst != noone{
	global.enemy = _inst.object_index
	global.state = globalstates.start
	//_inst.object_index.x = 300;
	//room_goto(battle)
	
} 
}else{
with(obj_player){
	
	
}}

		
		
