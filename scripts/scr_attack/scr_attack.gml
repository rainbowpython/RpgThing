// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_attack(){
if(image <= 2){
		image_speed = 1;
		
		
		
		}
		//image_index +=1;
		
		image += 0.1
		//x+=hsp
		//y+=vsp
		
		
		
		
		if (image >= 5){
			scr_normal_script()
			image = 0
			state = "Normal"
		}
}
