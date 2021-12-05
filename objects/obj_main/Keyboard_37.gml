/// @description Insert description here
// You can write your code in this editor

sprite_index = spr_main_walking_left

if (! check_collisions(x, y, room_width, room_height, boundry.left)) {
	x -= 1
}