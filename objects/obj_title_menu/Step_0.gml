up_key = keyboard_check_pressed(vk_up);
down_key = keyboard_check_pressed(vk_down);
accept_key = keyboard_check_pressed(ord("Z"));


//store op length
op_length = array_length(option[menu_level])

pos += down_key - up_key;
if pos >= op_length{
pos = 0;

}
if pos < 0{
pos = op_length-1
}




if (accept_key){
	
	var _sml = menu_level;
	switch(menu_level){
		
	case 0:
		switch(pos){
		case 0:room_goto_next();break

		case 1:
		pos = 0
		ok = 1
		menu_level = 1 
		ok=0
		break;

		case 2:	game_end() break;
	
		case 3: audio_play_sound(made_in_heaven_test_animationyoutubetomp3,1,0) break;
	
	
		}
	break;
	//settings
	case 1:
		switch(pos){
		//winow size
		case 0:
		
		break;
		
		case 1:
		
		break;
		case 2:
		
		break;
		case 3:
		menu_level = 0;
		pos = 0;
		break;
		}
	break;
	}
		if _sml != menu_level {pos = 0}
		
		//correct_op lenght
		op_length = array_length(option[menu_level])
}