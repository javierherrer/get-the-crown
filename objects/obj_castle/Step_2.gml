/// @description Insert description here
// You can write your code in this editor


if(distance_to_object(obj_main) < 16 && keyboard_check(vk_space)){
	if (instance_exists(obj_key) && instance_exists(obj_key2)) {
		room_goto(rm_boss)
	}
}