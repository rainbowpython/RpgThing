bob_key = keyboard_check_pressed(ord("Z"))

if (place_meeting(x,y,obj_player) and obj_player.direction == 0){
	if bob_key and instance_exists(obj_textbox) == false{
	global.text = "box"
	instance_create_layer(x,y,"Textbox",obj_textbox)
	//with instance_create_layer(x,y,"Textbox",obj_textbox){
	//scr_game_text("trash")
	//}
	//scr_text("null")
	}

}