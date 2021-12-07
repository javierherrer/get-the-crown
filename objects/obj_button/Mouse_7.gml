/// @description Insert description here
// You can write your code in this editor
if (text == "Play") {
	room_goto(rm_scene)	
} else if (text == "Instructions") {
	room_goto(rm_instructions)	
} else {
	game_end()	
}