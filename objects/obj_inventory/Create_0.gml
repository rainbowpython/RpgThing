/// @description Insert description here
// You can write your code in this editor
#macro INVENTORY_SLOTS 15

up_key = keyboard_check_pressed(vk_up);
down_key = keyboard_check_pressed(vk_down);
accept_key = keyboard_check_pressed(ord("Z"));

item_count = 0

row_length = 6;
inventory = array_create(INVENTORY_SLOTS, -1);
randomize();
inventory[0] = 0;
inventory[1] = 0;
inventory[2] = 1;
width = room_width/4;
height = 208;

//all the op stuff stands for nothing in this object, im just to lazy to clean it up
op_border = 8
op_space= 24;

pos = 0;


//op_length = array_length(option);
//0=ok, 1 is not ok
ok = 0

op_length = 0;
menu_level = 0;

