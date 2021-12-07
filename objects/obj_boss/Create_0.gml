/// @description Insert description here
// You can write your code in this editor

fsm = m_create("normal")

m_rule(fsm, "win", "normal", "happy");
m_rule(fsm, "win", "angry", "normal");
m_rule(fsm, "lose", "normal", "angry");
m_rule(fsm, "lose", "happy", "normal");

m_action(fsm, ">normal", function() {
	sprite_index = spr_boss;
});

m_action(fsm, ">angry", function() {
	sprite_index = spr_boss_angry;
});

m_action(fsm, ">happy", function() {
	sprite_index = spr_boss_happy;
});