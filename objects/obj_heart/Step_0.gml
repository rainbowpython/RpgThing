if (instance_exists(follow)){
	xTo = follow.x
	yTo = follow.y
}

hsp = xTo-x;
vsp = yTo-y ;

x += hsp//(xTo-x) / 1;
y += vsp//(yTo-y) / 1;
if(instance_exists(obj_enemy)){
image_alpha = 1;
}else image_alpha = 0;


i_timer++

if(i_timer >= 120 and obj_player.state !="Roll"){

var _inst = instance_place(x, y, obj_enemy);
if _inst != noone{
	global.enemy = _inst.object_index.battleo
	global.state = globalstates.start
	} 
}else{
with(obj_player){
	
	
}}

		
		
