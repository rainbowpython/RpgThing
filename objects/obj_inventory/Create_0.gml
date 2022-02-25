/// @description Insert description here
// You can write your code in this editor
#macro INVENTORY_SLOTS 15

up_key = keyboard_check_pressed(vk_up);
down_key = keyboard_check_pressed(vk_down);
accept_key = keyboard_check_pressed(ord("Z"));



depth = -999999999999999999999999
//global.inventory = array_create(INVENTORY_SLOTS, "");
randomize();

//global.inventory[1] = "trash"
width = camera_get_view_height(view_camera[0])/2;
height = view_hport[0];
item_count = array_length(global.inventory);

//all the op stuff stands for nothing in this object, im just to lazy to clean it up
op_border = 8
op_space= 10;

pos = 0;


//op_length = array_length(option);
//0=ok, 1 is not ok
ok = 0

op_length = 0;
menu_level = 0;

