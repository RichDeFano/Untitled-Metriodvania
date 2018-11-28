scr_checkGamepad();

if global.gp[0] = true
{
key_right = ((gamepad_axis_value(0,global.P1key_rightS) > 0) || (gamepad_button_check(0,global.P1key_rightD)));
key_left = -((gamepad_axis_value(0,global.P1key_leftS) < 0) || (gamepad_button_check(0,global.P1key_leftD))) ;
key_jump = gamepad_button_check_pressed(0,global.P1key_jump);
key_jump_held = gamepad_button_check(0,global.P1key_jump_held);
key_down = ((gamepad_axis_value(0,global.P1key_downS) > 0) || (gamepad_button_check(0,global.P1key_downD)));
key_attack = (gamepad_button_check_pressed(0,global.P1key_attack));
key_dash = (gamepad_button_check(0,global.P1key_dash));

}
else
{
key_right = keyboard_check(global.P1key_right);
key_left = -keyboard_check(global.P1key_left);
key_jump = keyboard_check_pressed(global.P1key_jump);
key_jump_held = keyboard_check(global.P1key_jump_held);
key_down = keyboard_check(global.P1key_down);	
key_attack = keyboard_check_pressed(global.P1key_attack);
key_dash = keyboard_check(global.P1key_dash);

Rkey_right = keyboard_check_released(global.P1key_right);
Rkey_left = keyboard_check_released(global.P1key_left);
Rkey_jump = keyboard_check_released(global.P1key_jump);
Rkey_down = keyboard_check_released(global.P1key_down);
}



scr_Moving();
