
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

