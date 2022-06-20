// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_enemy_attack(enemy){
	attack_type = irandom_range(1,2);
	if(attack_type == 1){
		obj_player.hp -= global.enemy.attack_damage;
		scr_text("You took " + string(global.enemy.attack_damage) + " damage");

	}
}