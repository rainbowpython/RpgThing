// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_normal_script(){

	global.hsp = (right_key - left_key) * global.move_speed
global.vsp= (down_key - up_key) * global.move_speed
	if(place_meeting(x + hithsp, y , obj_wall)){
hithsp=0;
}
if(place_meeting(x , y +hitvsp, obj_wall)){
hitvsp=0;
}
hsp = global.hsp 
vsp = global.vsp 
sprite_index = sprite[DOWN]
if (vsp == 0){
if hsp > 0 {face = RIGHT};
if hsp < 0 {face = LEFT};
}
if hsp > 0 && face = LEFT {face = RIGHT};
if hsp < 0 && face = RIGHT {face = LEFT};
if (hsp = 0){
if vsp > 0 {face = DOWN};
if vsp < 0 {face = UP};
}
if vsp > 0 and face == UP {face = DOWN}
if vsp< 0 and face == DOWN {face = UP}
sprite_index = sprite[face]

if(place_meeting(x + hsp, y , obj_wall)){
hsp=0;
}
if(place_meeting(x , y +vsp, obj_wall)){
vsp=0;
}

y+=vsp +hitvsp
x+=hsp +hithsp


hithsp /= 1.1
hitvsp /=1.1
//set sprite

mask_index = spr_player_left;
//animate

if hsp==0 && vsp == 0{
	image_index = 0
	} //else{image_index +=0.1}
}