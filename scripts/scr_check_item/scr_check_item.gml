// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_check_item(item){
	var i;
for( i = 0; i< INVENTORY_SLOTS; i++){
	if (global.inventory[i] == item){
			return true;
			break;
		}
		
	}
}