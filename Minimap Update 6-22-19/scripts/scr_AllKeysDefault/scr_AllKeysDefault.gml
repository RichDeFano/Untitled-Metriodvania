/////////////////////Player 1/////////////////////
var connected = scr_isGamepadConnected();
if (connected == true)
{
global.P1key_rightS = (gp_axislh);
global.P1key_leftS = (gp_axislh);
global.P1key_rightD = (gp_padr);
global.P1key_leftD =  (gp_padl);
global.P1key_jump = (gp_face1);
global.P1key_jump_held = (gp_face1);
global.P1key_downS = (gp_axislv);
global.P1key_downD =  (gp_padd);
global.P1key_upS = (gp_axislv);
global.P1key_upD =  (gp_padd);
global.P1key_attack = (gp_face2);
global.P1key_dash = (gp_face4);

global.P1key_lsh = (gp_shoulderl);
global.P1key_rsh = (gp_shoulderr);
global.P1key_rtr = (gp_shoulderrb);
global.P1key_ltr = (gp_shoulderlb);
global.P1key_start = (gp_start);
}
else
{
global.P1key_right = (vk_right);
global.P1key_left = (vk_left);
global.P1key_jump = (vk_up);
global.P1key_jump_held = (vk_up);
global.P1key_up = (vk_up);
global.P1key_down = vk_down;
global.P1key_attack = (ord("Z"));
global.P1key_dash = (ord("X"))

global.P1key_rightS = (gp_axislh);
global.P1key_leftS = (gp_axislh);
global.P1key_rightD = (gp_padr);
global.P1key_leftD =  (gp_padl);
global.P1key_downS = (gp_axislv);
global.P1key_downD =  (gp_padd);

global.P1key_lsh = (ord("A"));
global.P1key_rsh = (ord("A"));
global.P1key_rtr = (ord("S"));
global.P1key_ltr = (ord("S"));
global.P1key_start = (vk_enter);
}


/*
global.P1Key_down || global.P1Key_downS || global.P1Key_downD
global.P1Key_up || global.P1Key_upS || global.P1Key_upD
