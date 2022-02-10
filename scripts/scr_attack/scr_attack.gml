// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_attack(){
	if (roll_key){
	switch (sprite_index){
	
	case spr_player_down :
	sprite_index = spr_player_downr
	
	break;
	
	case spr_player_right :
	sprite_index = spr_player_rightr
	
	break;
	
	case spr_player_left :
	sprite_index = spr_player_leftr
	
	break;
	
	case spr_player_up :
	sprite_index = spr_player_upr
	
	break;
		}
	state = "Roll"
	}
}
