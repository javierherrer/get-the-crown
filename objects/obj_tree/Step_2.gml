/// @description Insert description here
// You can write your code in this editor


if(distance_to_object(obj_main) < 16 && keyboard_check(vk_space)){
	if (instance_exists(obj_bucket) && obj_bucket.sprite_index == spr_full_bucket) {
			// DIALOGO DE EL ARBOL CRECIO
			sprite_index = spr_tree
			y -= 50
			x -= 20
			instance_destroy(obj_bucket)
	}
}