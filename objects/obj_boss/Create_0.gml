/// @description Insert description here
// You can write your code in this editor


fsm = m_create("defense")

m_rule(fsm, "defend", "defense", "physical");
m_rule(fsm, "defend", "magic", "defense");
m_rule(fsm, "attack", "defense", "magic");
m_rule(fsm, "attack", "physical", "defense");

m_action(fsm, ">defense", function() {
	sprite_index = spr_boss_defense;
});

m_action(fsm, ">physical", function() {
	sprite_index = spr_boss_physical;
});

m_action(fsm, ">magic", function() {
	sprite_index = spr_boss_magical;
});