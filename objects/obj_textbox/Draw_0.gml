accept_key = keyboard_check_pressed(ord("Z"))
accept_keyx = keyboard_check_pressed(ord("X"))

textbox_x = camera_get_view_x(view_camera[0]) +20;
textbox_y = camera_get_view_y(view_camera[0]) + (camera_get_view_height(view_camera[0]) - textbox_height*24);
//textbox_x = room_width/2-width/2
//textbox
//x = textbox_x
//y = textbox_y
//x

//width = camera_get_view_width(view_camera[0])-100;




//setup
if setup == false{
	setup = true
	//draw_set_font(fon_main_font);
	draw_set_font(fon_game_font);
	draw_set_valign(fa_top)
	draw_set_halign(fa_left);
	
	//loop through pages
	//page_number = array_length(text)
	for(var p = 0; p < page_number; p++){
	text_length[p] = string_length(text[p])
	
	//gat x positon for the textbox
		//no char
	text_a_offset[p] = 20
	}
}
	
//typing the text
if draw_char < text_length[page]{

draw_char +=text_spd
draw_char = clamp(draw_char, 0, text_length[page])
}

//-------------------------flip through pages
if accept_keyx{
	
	//if typing is done enough
	if draw_char == text_length[page]{
		if page < page_number - 1{
		page++
		draw_char = 0;
		}
		else{
		instance_destroy();
		
		}
		
		
	}
	
	//if not done typing
	else{
	draw_char = text_length[page]
	}
}
if accept_key{
	
	//if typing is done enough
	if draw_char == text_length[page]{
		if page < page_number - 1{
		page++
		draw_char = 0;
		
		}
		else{
			if option_number > 0 {
				create_textbox(option_link_id[option_pos]);
			
			
			}
		instance_destroy();
		
		}
		
		
	}
	
	//if not done typing
//else{
//	draw_char = text_length[page]
//	}
}

	
	
	
	
	
	
	
	draw_sprite_ext(spr_main, image_index,textbox_x,textbox_y,textbox_width,textbox_height,0,c_white,1)
	//draw_sprite(spr_main, 1 ,x,y)


//-------------------------------options---------------------------------//
	if draw_char = text_length[page] and page == page_number - 1{
		
		//option selection
		option_pos += keyboard_check_pressed(vk_down) - keyboard_check_pressed(vk_up);
		option_pos = clamp(option_pos, 0, option_number-1)
		
		
		
		
		
		
		var _op_space = 15;
		var _op_border = 4;
		for(var op = 0; op < option_number; op++){
			var _o_w = string_width(option[op]) + _op_border*2;
			draw_sprite_ext(spr_main, image_index, textbox_x + 16 , textbox_y - _op_space*option_number + _op_space*op, _o_w/sprite_get_width(spr_main), (_op_space)/sprite_get_height(spr_main), 0,c_white,1)
		
			if (option_pos ==op){
				//draw_sprite(spr_confuseheart_0, 0 ,textbox_x, textbox_y - _op_space*option_number + _op_space*op)
				draw_sprite_ext(spr_confuseheart_0, 0 ,textbox_x, textbox_y - _op_space*option_number + _op_space*op,0.9,0.9,0,c_white,1)
			
			}
	
	
			//draw opti8on text
			draw_text(textbox_x+_op_border + 16, textbox_y - _op_space*option_number + _op_space*op - 1, option[op])
		}
	}
	
	
	
	//-------------------------------draw text-------------------------//
	var _drawtext = string_copy(text[page], 1, draw_char);
	//draw_text_ext(textbox_x + text_x_offset[page] +border, textbox_y+ border, _drawtext, line_sep,line_width)
	draw_text_ext(textbox_x + border, textbox_y+ border, _drawtext, line_sep,line_width)