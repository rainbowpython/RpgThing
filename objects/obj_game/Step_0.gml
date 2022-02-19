/*
joe_key = keyboard_check_pressed(vk_space)
bob_key = keyboard_check_pressed(ord("Z"))

if joe_key and instance_exists(obj_textbox) == false{
	global.text = "nulll"
		instance_create_depth(x,y,0,obj_textbox)
	//scr_text("null")
	}
	if bob_key and instance_exists(obj_textbox) == false{
	global.text = "null"
		instance_create_depth(x,y,0,obj_textbox)
	//scr_text("null")
	}
	*/
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

