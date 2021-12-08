/// @description Insert description here
// You can write your code in this editor

if(distance_to_object(obj_main) < 16 && keyboard_check(vk_space)){
	audio_play_sound(snd_sloth, 1, false);
	if (obj_tree.sprite_index == spr_tree) {
		sentence = "Thanks for growing the tree, now I can rest in there. "
		if (!instance_exists(obj_key)) {
			sentence = sentence + "Here is a key, you can use it for entering the castle, but you need another one"
			instance_create_layer(camera_get_view_x(view_camera[0]) + 190,camera_get_view_y(view_camera[0]) + 5, layer_get_id("instances"), obj_key)
		}
	} else {
		sentence = "I wiss I could rest in a tree, but there is any tree near. "
		if (! instance_exists(obj_bucket)) {
			sentence = sentence + "Here is a bucket, if you need it for anything"
			instance_create_layer(camera_get_view_x(view_camera[0]) + 150,camera_get_view_y(view_camera[0]) + 5, layer_get_id("instances"), obj_bucket)
		}
	}
	createDialog(sentence)
}