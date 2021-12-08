/// @description Insert description here
// You can write your code in this editor

if(distance_to_object(obj_main) < 16 && keyboard_check(vk_space)){
	audio_play_sound(snd_monkey, 2, false);
	if ((instance_exists(obj_banana) && obj_banana.found) || !instance_exists(obj_banana)) {
		audio_play_sound(snd_eating, 1, false);
		sentence = "Thanks for the banana, I was really hungry. "
		if (!instance_exists(obj_key2)) {
			sentence = sentence + "Here is a key, you can use it for entering the castle, but you need another one"
			instance_create_layer(camera_get_view_x(view_camera[0]) + 220,camera_get_view_x(view_camera[0]) +5, layer_get_id("instances"), obj_key2)
			instance_destroy(obj_banana)
		}
		createDialog(sentence)
	} else {
		createDialog("I am really hungry, need some food")	
	}

}