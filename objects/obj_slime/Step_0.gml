/// @description Insert description here
// You can write your code in this editors
switch (state) {
	case states.idle:
	
	if(distance_to_object(obj_player) <= distance_trigger){
	state = states.chase;
	}
	speed=0
	actionDur = 0;
	break;
}