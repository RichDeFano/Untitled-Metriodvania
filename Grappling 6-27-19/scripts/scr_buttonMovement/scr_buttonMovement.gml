scr_checkGamepad();

if global.gp[0] = true
{
key_right = ((gamepad_axis_value(0,global.P1key_rightS) > 0) || (gamepad_button_check(0,global.P1key_rightD)));
key_left = -((gamepad_axis_value(0,global.P1key_leftS) < 0) || (gamepad_button_check(0,global.P1key_leftD))) ;
key_jump = gamepad_button_check_pressed(0,global.P1key_jump);
key_jump_held = gamepad_button_check(0,global.P1key_jump_held);
key_down = ((gamepad_axis_value(0,global.P1key_downS) > 0) || (gamepad_button_check(0,global.P1key_downD)));
key_attack = (gamepad_button_check_pressed(0,global.P1key_attack));
key_attack_released = (gamepad_button_check_released(0,global.P1key_attack));
key_dash = (gamepad_button_check(0,global.P1key_dash));
key_dash_released = (gamepad_button_check_released(0,global.P1key_dash));
key_up = ((gamepad_axis_value(0,global.P1key_upS) < 0) || (gamepad_button_check(0,global.P1key_upD)));

key_rtr = (gamepad_button_check_released(0,global.P1key_rtr) || gamepad_button_check_released(0,global.P1key_rsh));
key_ltr = (gamepad_button_check_released(0,global.P1key_ltr) || gamepad_button_check_released(0,global.P1key_lsh));
key_rtrheld = (gamepad_button_check(0,global.P1key_rtr) || gamepad_button_check(0,global.P1key_rsh));
key_ltrheld = (gamepad_button_check(0,global.P1key_ltr) || gamepad_button_check(0,global.P1key_lsh));
key_start = (gamepad_button_check_released(0,global.P1key_start));
key_start_released = (gamepad_button_check_released(0,global.P1key_start));
}
else
{
key_right = keyboard_check(global.P1key_right);
key_left = -keyboard_check(global.P1key_left);
key_jump = keyboard_check_pressed(global.P1key_jump);
key_jump_held = keyboard_check(global.P1key_jump_held);
key_down = keyboard_check(global.P1key_down);	
key_attack = keyboard_check_pressed(global.P1key_attack);
key_attack_released = keyboard_check_released(global.P1key_attack);
key_dash = keyboard_check(global.P1key_dash);
key_dash_released = keyboard_check_released(global.P1key_dash);
key_up = keyboard_check(global.P1key_up);
key_rtr = (mouse_check_button_released(global.P1key_rtr) || (mouse_check_button_released(global.P1key_rsh)));
key_ltr = (mouse_check_button_released(global.P1key_ltr) || (mouse_check_button_released(global.P1key_lsh)));
key_rtrheld = (mouse_check_button(global.P1key_rtr) || (mouse_check_button(global.P1key_rsh)));
key_ltrheld = (mouse_check_button(global.P1key_ltr) || (mouse_check_button(global.P1key_lsh)));
key_start = (keyboard_check_released(global.P1key_start));
key_start_released = (keyboard_check_released(global.P1key_start));


Rkey_right = keyboard_check_released(global.P1key_right);
Rkey_left = keyboard_check_released(global.P1key_left);
Rkey_jump = keyboard_check_released(global.P1key_jump);
Rkey_down = keyboard_check_released(global.P1key_down);
}


//scr_Moving();
