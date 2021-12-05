enum boundry {
	top,
	bottom,
	right,
	left
}



function check_collisions(playerXPos, playerYPos, room_width, room_height, collision_to_check) {
	top_margin = 16
	bottom_margin = 144
	right_margin = 48
	left_margin = 16
	wall_collision_margin = 24
	
	switch( collision_to_check )
	{
		case boundry.top:
		  return playerYPos < top_margin || 
					place_meeting( playerXPos, playerYPos - wall_collision_margin, obj_walls );
		break;
		
		case boundry.bottom:
		  return room_height - playerYPos < bottom_margin || 
					place_meeting( playerXPos, playerYPos + wall_collision_margin, obj_walls  );
		break;
		
		case boundry.right:
		  return room_width - playerXPos < right_margin ||
					place_meeting( playerXPos + wall_collision_margin, playerYPos, obj_walls  );
		break;
		
		case boundry.left:
		  return playerXPos < left_margin ||
					place_meeting( playerXPos - wall_collision_margin, playerYPos, obj_walls  );
		break;
	}
}