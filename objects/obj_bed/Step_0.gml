bob_key = keyboard_check_pressed(ord("Z"))
//0 is right
if (place_meeting(x-10,y,obj_player)){
	if bob_key and instance_exists(obj_textbox) == false{
	global.text = "bed"
	instance_create_layer(x,y,"Textbox",obj_textbox)
	//with instance_create_layer(x,y,"Textbox",obj_textbox){
	//scr_game_text("trash")
	//}
	//scr_text("null")
	}

}
if(instance_exists(obj_inventory)){
depth = 0;
}