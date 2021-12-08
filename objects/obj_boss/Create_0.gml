/// @description Insert description here
// You can write your code in this editor

health = 200

fsm = m_create("defense")

m_rule(fsm, "defend", "defense", "physical");
m_rule(fsm, "defend", "magic", "defense");
m_rule(fsm, "attack", "defense", "magic");
m_rule(fsm, "attack", "physical", "defense");

m_action(fsm, ">defense", function() {
	sprite_index = spr_boss;
});