/// @description Insert description here
// You can write your code in this editor

if(distance_to_object(obj_main) < 16 && keyboard_check(vk_space)){
	
	if (!instance_exists(obj_banana)) {
		// DIALOGO DE QUE YA LE HEMOS DADO EL PLATANO
		instance_create_layer(0,0, layer_get_id("instances"), obj_key2)
	}
	
	// DIALOGO DE MONO CON HAMBRE QUE QUIERE PLATANO

}