/// @description Insert description here
// You can write your code in this editor

if(distance_to_object(obj_main) < 16 && keyboard_check(vk_space)){
	createDialog("*You got the banana*")
	found = true
}

if (found) {
	x = camera_get_view_x(view_camera[0]) + 170
	y = camera_get_view_y(view_camera[0]) + 5
}