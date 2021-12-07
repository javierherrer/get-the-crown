/// @description Insert description here
// You can write your code in this editor

if(distance_to_object(obj_main) < 16 && keyboard_check(vk_space)){
	createDialog("*You got the banana*")
	instance_destroy()
}