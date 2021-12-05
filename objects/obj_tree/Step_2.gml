/// @description Insert description here
// You can write your code in this editor


if(distance_to_object(obj_main) < 16 && keyboard_check(vk_space)){
	if (instance_exists(obj_bucket) && obj_bucket.sprite_index == spr_full_bucket) {
			sprite_index = spr_tree
			instance_destroy(obj_bucket)
	}
}