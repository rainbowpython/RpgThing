// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_game_text(_text_id){
	switch(_text_id){
		//scr_option("the thing that shows up", "(_option), (id - option)")
		#region cookie
		case "cookie":
		scr_text("You got a cookie!!")
		scr_add_item("cookie");
		instance_destroy(obj_cookie);
		break;
		#endregion
		#region trash
	case "trash":
		scr_text("its trash, does not smell to great")
			//scr_text("do you want to eat trash?")
			scr_option("eat", "trash - yes")
			scr_option("take","trash - take")
			scr_option("nothing", "trash - no")
			
	
	break
	case "trash - yes":
		scr_text("its trash, the fuck you did you expect?")
		//scr_text("dash")
			
	
	break
	
	case "trash - no":
	
		scr_text("Fuck you")
	break
	
	case "trash - take":
		//global.inventory[1] = "trash"
		scr_text("You got: Trash!!")
		scr_add_item("trash")
	break
	#endregion
	#region box
	case "box2":
	scr_text("A good place to hide...");
	scr_text("A body");
	break
	
	
	
	case "box":
	scr_text("Its a drawer or something");
	scr_text("There's a knife in it");
	scr_text("Grab the knife");
		scr_option("Yes", "box - yes")
		scr_option("No", "box - no")
	//scr_text("nvm");
	break
	
	case "box - yes":
	scr_text("You got...a Knife!!!");
	scr_text("oh wait thats not in the game");
	scr_text("nvm");
	break
	
	case "box - no":
	//scr_text("You got...a Knife!!!");
	//scr_text("oh wait thats not in the game");
	//scr_text(" ");
	with obj_textbox{
	instance_destroy()
	}
	break
	#endregion
	
	case"books":
	scr_text("Mein Kampf");
	scr_text("Manefesto de communismo");
	break
	case "bed":
	scr_text("C L O S E");
	scr_text("Y O U R  E Y E S");
	break
	
	case "flowers":
	scr_text("Hail marry");
	scr_text("Contrary");
	scr_text("This memory garden flows");
	break
	
	#region fireplace
	case "fireplace":
	scr_text("Jump in the fire?");
			scr_option("yes", "fireplace - yes")
			scr_option("no", "fireplace - no")
			
	break
	
	case "fireplace - yes":
		with(obj_square){
			scr_fade_to_room(state)
		}
	room_goto(Hotland_1)
	obj_player.x = 575;
	obj_player.y = 50;
	break
	
	case "fireplace - no":
	//room_goto("Hotland_1")
	instance_destroy(obj_textbox);
	break;
	#endregion
	
	#region questie
	case "questie":
	scr_text("Hewo! I'm you're best bwuddie questie!");
	scr_text("I like questing!")
	if (scr_check_item("cookie") = true){
		scr_text("oo, cookie");
		scr_text("caan whi have?")
		scr_text("Pweeaaase? >w<");
		scr_option("Here","questie - give");
		scr_option("no", "questie - no");
	}
	break;
	case"questie - give":
	scr_remove_item("cookie")
	scr_text("Thank you :)");
	break;
	case"questie - no":
	scr_text("ookey...")
	break;
	#endregion
	
	}
}

function scr_battle_text(_text_id){
	
	
	
	switch(_text_id){
	#region enemy_type
	case "nothing":
	
	scr_text("e")
	break
	
	case "slime":
	scr_text("A slime approaches!!");
	scr_text("What will you do?");
	scr_option("attack", "attack")
	scr_option("defend", "defend")
	break
	case "lava_slime":
	scr_text("A slime approaches!!");
	break
	#endregion
	
	#region attack
	case "attack":
	scr_text("which one?");
	scr_option(global.enemy.text,"attack_1");
	break
	
	case "attack_1":
	
	scr_text (global.enemy.name + " took " + string(obj_player.attack_damage)+ " damage");
	global.enemy.hp-=obj_player.attack_damage;
	global.state = globalstates.enemy1;
	
	
	
	break
	
	#endregion
	case "defend":
	scr_text("e")
	
	break
	
	
	
	case "enemy_1":
	
	
	//scr_enemy_attack("");
	//attack_type = irandom_range(1,2);
	//if(attack_type == 1){
		obj_player.hp -= global.enemy.attack_damage;
		scr_text("You took " + string(global.enemy.attack_damage) + " damage");

	//}
	
	//if(instance_exists(obj_textbox_battle) != true){

	//create_game_textbox("restart");
	global.state = globalstates.start;
	//}
	
	//create_game_textbox("restart")
	//global.state = globalstates.start;
	break
	
	case "restart":
	//scr_text("e");
	global.state = globalstates.start;
	//scr_text("e");
	break
	
	
	}

	
	
	}

	
