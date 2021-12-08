/// @description Insert description here
// You can write your code in this editor

if(instance_exists(obj_bucket) && distance_to_object(obj_wells) <= 32 && keyboard_check(vk_space)){
	createDialog("*You fulfilled the bucket with water*")
	obj_bucket.sprite_index = spr_full_bucket
}