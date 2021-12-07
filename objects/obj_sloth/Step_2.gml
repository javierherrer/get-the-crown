/// @description Insert description here
// You can write your code in this editor

if(distance_to_object(obj_main) < 16 && keyboard_check(vk_space)){
	if (obj_tree.sprite_index == spr_tree) {
		// DIALOGO DE ESTAR FELIZ POR EL ARBOL
		if (!instance_exists(obj_key)) {
			// DIALOGO DE DAR LLAVE
			instance_create_layer(0,0, layer_get_id("instances"), obj_key)
		}
	} else {
		if (! instance_exists(obj_bucket)) {
			instance_create_layer(obj_main.x + 4,obj_main.y, layer_get_id("instances"), obj_bucket)
		}
		// DIALOGO DE QUE SE QUIERE SUBIR A UN ARBOL Y NO ESTA
	}
}