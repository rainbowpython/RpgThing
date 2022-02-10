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
	if(instance_exists(obj_textbox)){
		global.move_speed = 0
	}
	else global.move_speed = 1.7

