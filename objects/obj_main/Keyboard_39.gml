/// @description Insert description here
// You can write your code in this editor

sprite_index = spr_main_walking_right

if (! check_collisions(x, y, room_width, room_height, boundry.right)) {
	x += mspeed
}