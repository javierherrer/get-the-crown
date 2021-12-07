/// @description Insert description here
// You can write your code in this editor

if(distance_to_object(obj_main) < 16 && keyboard_check(vk_space)){
	audio_play_sound(snd_monkey, 2, false);
	if (!instance_exists(obj_banana)) {
		audio_play_sound(snd_eating, 1, false);
		createDialog("Thanks for the banana, I was really hungry")
		if (!instance_exists(obj_key2)) {
			createDialog("Here is a key, you can use it for entering the castle, but you need another one")
			instance_create_layer(obj_main.x + 150,obj_main.y - 150, layer_get_id("instances"), obj_key2)
		}
	} else {
		createDialog("I am really hungry, need some food")	
	}

}