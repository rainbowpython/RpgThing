
joe_key = keyboard_check_pressed(vk_space)
bob_key = keyboard_check_pressed(ord("Z"))

if (place_meeting(x,y,obj_player)){
	if bob_key and instance_exists(obj_textbox) == false{
	//global.text = "trash"
	//instance_create_layer(x,y,"Textbox",obj_textbox)
	create_textbox("trash")
	//with instance_create_layer(x,y,"Textbox",obj_textbox){
	//scr_game_text("trash")
	//}
	//scr_text("null")
	}

}