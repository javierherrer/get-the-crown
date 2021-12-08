/// @description Insert description here
// You can write your code in this editor

if (!instance_exists(obj_dialog)) {

	if (text == "attack") {
		with (inst_boss) {
			if (m_is_state(fsm, "defense")) {
				audio_play_sound(snd_shield, 1, false);
				createDialog("The oponent defended himself, so your attack did not do anything")
			} else if (m_is_state(fsm, "magic")) {
				audio_play_sound(snd_sword, 1, false);
				createDialog("The oponent made a magical attack")
				obj_boss.health -= 50
				obj_main_boss.health -= 100
			} else if (m_is_state(fsm, "physical")) {
				audio_play_sound(snd_sword, 1, false);
				createDialog("The oponent made a physical attack")
				obj_boss.health -= 50
				obj_main_boss.health -= 25
			}
			m_send(fsm, "attack");
		}

		if (obj_boss.health < 1 && obj_main_boss.health < 1) {
			room_goto(rm_end)
		} else if (obj_boss.health < 1) {
			room_goto(rm_win)
		} else if (obj_main_boss.health < 1) {
			room_goto(rm_lose)	
		}
	} else if (text == "defend") {
		with (inst_boss) {
			audio_play_sound(snd_shield, 1, false);
			if (m_is_state(fsm, "defense")) {
				createDialog("The oponent defended himself too")
			} else if (m_is_state(fsm, "magic")) {
				createDialog("The oponent made a magical attack, but you defended")
			} else if (m_is_state(fsm, "physical")) {
				createDialog("The oponent made a physical attack, but you defended")
			}
	
			m_send(fsm, "defend");
		}	
	}

}