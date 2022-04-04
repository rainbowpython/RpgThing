#region random stuff
	if(instance_exists(obj_textbox or obj_inventory)){
		global.move_speed = 0
	}
	else global.move_speed = 1.7
	
	if(keyboard_check_pressed(ord("C"))){
		if(instance_exists(obj_inventory) ){
		
		instance_destroy(obj_inventory)
		}else instance_create_depth(0,0,0,obj_inventory);
	
	}
	
	if(instance_exists(obj_inventory)){
global.move_speed = 0;
}
#endregion





#region fight
if(global.state = globalstates.start){
instance_create_depth(0,0,0,obj_textbox_battle)
if(room != battle){
room_goto(battle)
	}
obj_player.x = 100
obj_player.y = 100
obj_player.image_xscale = 2;
obj_player.image_yscale = 2;
}
#endregion

