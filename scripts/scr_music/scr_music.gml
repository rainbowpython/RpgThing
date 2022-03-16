// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_music(song){
	if(audio_is_playing(song)){
		audio_stop_all();
		
	}else{

audio_stop_all()
}
	
	audio_play_sound(song,2,true)
}