/// @description Insert description here
// You can write your code in this editor
if (!instance_exists(obj_dialog)) {
	if (text == "Again") {
		room_goto(rm_title)	
	} else {
		game_end()	
	}	
}