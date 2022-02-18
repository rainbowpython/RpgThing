var _i = id

bob_key = keyboard_check_pressed(ord("Z"))
/*
if (place_meeting(x,y,obj_player)){
	if bob_key and instance_exists(obj_textbox) == false{
	
	create_textbox(id.text_id)
	}

}*/

bob_key = keyboard_check_pressed(ord("Z"))

if (place_meeting(x,y,obj_player)  and bob_key and instance_exists(obj_textbox) == false){
	
	
	create_textbox(id.text_id)
	}

