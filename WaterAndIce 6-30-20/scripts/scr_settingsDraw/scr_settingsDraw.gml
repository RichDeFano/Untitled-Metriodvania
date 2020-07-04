
global.upStr = scr_buttonToString(global.P1key_up);
global.downStr = scr_buttonToString(global.P1key_down);
global.rightStr = scr_buttonToString(global.P1key_right);
global.leftStr = scr_buttonToString(global.P1key_left);
global.jumpStr = scr_buttonToString(global.P1key_jump);
global.attackStr = scr_buttonToString(global.P1key_attack);
global.dashStr = scr_buttonToString(global.P1key_dash);
global.startStr = scr_buttonToString(global.P1key_start);
global.lStr = scr_buttonToString(global.P1key_lsh);
global.rStr = scr_buttonToString(global.P1key_ltr);

if (global.controlChange == true)
{
	draw_sprite(spr_controlSettings,0,400,148);

		draw_set_font(global.Font);
		draw_text(463,149,global.upStr);
		draw_text(463,167,global.downStr);
		draw_text(463,185,global.rightStr);
		draw_text(463,203,global.leftStr);
		draw_text(463,221,global.jumpStr);
		draw_text(463,239,global.attackStr);
		draw_text(463,257,global.dashStr);
		draw_text(463,275,global.startStr);
		draw_text(463,293,global.lStr);
		draw_text(463,311,global.rStr);
		draw_text(463,329,global.keyOrGamepad);
		if (global.countdownButton == true)
			{
				draw_text(420,350,global.countdownString);
			}
		//draw_text(420,360,global.newKey);
}
