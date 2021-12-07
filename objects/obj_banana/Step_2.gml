/// @description Insert description here
// You can write your code in this editor

if(distance_to_object(obj_main) < 16 && keyboard_check(vk_space)){
	createDialog("*You got the banana*")
	found = true
}

if (found) {
	x = obj_main.x + 60
	y = obj_main.y - 120
}