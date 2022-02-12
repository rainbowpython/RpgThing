right_key = keyboard_check(vk_right);
left_key = keyboard_check(vk_left);
up_key = keyboard_check(vk_up);
down_key = keyboard_check(vk_down);
roll_key = keyboard_check_pressed(ord("X"));
attack_key = keyboard_check_pressed(ord("Z"));

if(state = "Normal"){
scr_normal_script()


	


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
	if (attack_key and global.move_speed == 1.7){
	switch (sprite_index){
	case spr_player_down :
	sprite_index = spr_player_downa
	with instance_create_depth(x,y,depth,obj_player_attack){
		//global.attack_direction = "down"
	sprite_index = spr_player_attack_slashd
	}
	break;
	
	case spr_player_right :
	sprite_index = spr_player_righta
	with instance_create_depth(x,y,depth,obj_player_attack){
	//	global.attack_direction = "right"
	sprite_index = spr_player_attack_slashr
	}
	break;
	
	case spr_player_left :
	sprite_index = spr_player_lefta
	with instance_create_depth(x,y,depth,obj_player_attack){
	//	global.attack_direction = "left"
	sprite_index = spr_player_attack_slashl
	}
	break;
	
	case spr_player_up :
	sprite_index = spr_player_upa
	with instance_create_depth(x,y,depth,obj_player_attack){
	//	global.attack_direction = "up"
	sprite_index = spr_player_attack_slashu
	}
	break;
	
		}
	state = "Attack"
	}
	
	
//depth
depth = -bbox_bottom;

}
if(state = "Roll"){
	vsp = vsp/2;
	hsp = hsp/2;
	if(image <= 5){
		image_speed = 1;
	switch (sprite_index){
	
	case spr_player_downr:
	vsp = 3;
	
	break;
	case spr_player_leftr:
	hsp = -3;
	break;
	case spr_player_upr:
	vsp = -3;
	
	break;
	case spr_player_rightr:
	hsp = 3;
	break;
	
		}
		if(place_meeting(x + hsp, y , obj_wall)){
		hsp=0;
		}
		if(place_meeting(x , y +vsp, obj_wall)){
		vsp=0;
		}
		x+=hsp
		y+=vsp
		
	}else{//image_speed = 0
		//vsp = 0
		//hsp = 0
		scr_normal_script()
		
		
		}
		//image_index +=1;
		
		image += 0.1
		//x+=hsp
		//y+=vsp
		if(place_meeting(x + hsp, y , obj_wall)){
		hsp=0;
		}
		if(place_meeting(x , y +vsp, obj_wall)){
		vsp=0;
		}
		
		
		
		if (image == 10){
			image = 0
			state = "Normal"
		}
	}
		if state = "Attack"{
		//image = 0
		//if (image >= 5){image_speed = 1}
		image += 0.1
		
		
		if (image == 3){
			//scr_normal_script()
			//image_speed = 0;
			instance_destroy(obj_player_attack);
			state = "Normal"
			image = 0
			
			}
			
		}