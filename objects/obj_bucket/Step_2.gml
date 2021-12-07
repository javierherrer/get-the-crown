/// @description Insert description here
// You can write your code in this editor

x = obj_main.x + 4
y = obj_main.y

if(distance_to_object(obj_walls) < 16 && keyboard_check(vk_space)){
	createDialog("*You fulfilled the bucket with water*")
	sprite_index = spr_full_bucket
}