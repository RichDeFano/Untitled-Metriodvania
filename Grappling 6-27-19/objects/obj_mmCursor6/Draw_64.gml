/// @description Insert description here
// You can write your code in this editor
draw_self();
scr_checkGamepad();


var connected = scr_isGamepadConnected();
if (connected == true)
	{
		draw_sprite(spr_gamepadDetected,0,421,111);
	}

