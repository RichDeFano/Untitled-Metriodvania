/////////////////////Player 1/////////////////////
if global.gp[0] = true
{
global.P1key_rightS = (gp_axislh);
global.P1key_leftS = (gp_axislh);
global.P1key_rightD = (gp_padr);
global.P1key_leftD =  (gp_padl);
global.P1key_jump = (gp_face1);
global.P1key_jump_held = (gp_face1);
global.P1key_downS = (gp_axislv);
global.P1key_downD =  (gp_padd);
global.P1key_attack = (gp_face2);
global.P1key_dash = (gp_face4);
}
else
{
global.P1key_right = (vk_right);
global.P1key_left = (vk_left);
global.P1key_jump = (vk_up);
global.P1key_jump_held = (vk_up);
global.P1key_down = vk_down;
global.P1key_attack = (ord("Z"));
global.P1key_dash = (ord("X"))

global.P1key_rightS = (gp_axislh);
global.P1key_leftS = (gp_axislh);
global.P1key_rightD = (gp_padr);
global.P1key_leftD =  (gp_padl);
global.P1key_downS = (gp_axislv);
global.P1key_downD =  (gp_padd);
}
