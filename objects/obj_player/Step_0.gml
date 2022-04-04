right_key = keyboard_check(vk_right);
left_key = keyboard_check(vk_left);
up_key = keyboard_check(vk_up);
down_key = keyboard_check(vk_down);
//roll_key = keyboard_check_pressed(ord("X"));
//attack_key = keyboard_check_pressed(vk_space);

if(global.state = globalstates.normal){
scr_normal_script()


	

depth = -bbox_bottom;

}else {
	sprite_index = spr_player_right
	image_speed = 0
	}

/*
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
			
			
			