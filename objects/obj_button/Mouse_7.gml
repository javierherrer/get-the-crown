/// @description Insert description here
// You can write your code in this editor
if (text == "Play") {
	room_goto(rm_scene)	
} else if (text == "Instructions") {
	//TODO change with rm_instructions
	room_goto(rm_scene)	
} else {
	game_end()	
}