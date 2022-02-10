// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
///@param text
function scr_text(_text){

text[page_number] = _text;
//global.text = _text
page_number++
		}

 function create_textbox(_text_id){
	
	global.text = _text_id
	//instance_create_layer(x,y,"Textbox",obj_textbox)
	instance_create_depth(x,y,-9999999999999999999999999999999999999999999,obj_textbox)
 
	}
	
	// param option
	// param link_id
	function scr_option(_option, _link_id){
	
	option[option_number] = _option;
	option_link_id[option_number] = _link_id;
	
	option_number++
	
	}
