/// @description Insert description here
// You can write your code in this editor

with (inst_boss) {
	
	if (m_is_state(fsm, "defense")) {
		createDialog("The oponent defended himself too")
	} else if (m_is_state(fsm, "magic")) {
		createDialog("The oponent made a magical attack, but you defended")
	} else if (m_is_state(fsm, "physical")) {
		createDialog("The oponent made a physical attack, but you defended")
	}
	
	m_send(fsm, "defend");
}