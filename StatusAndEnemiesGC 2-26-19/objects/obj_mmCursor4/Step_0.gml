/// @description Insert description here
// You can write your code in this editor
// map is 32 columns, 20 r
scr_buttonMovement();
image_speed = 0.1;
x = localx + (global.mmX4 * 253);
y = localy + (global.mmY4 * 32);
if (global.inText == false)
{

if (canGo == true)
{
	
if ((key_right) && (global.mmX4 < 0))
	{
		if (global.mmY4 <=6)
		{
		global.mmX4 += 1;
		canGo = false;
		alarm[0] = 4;
		}
	}

else if (-(key_left) && (global.mmX4 > 0))
	{
		global.mmX4 -= 1;
		canGo = false;
		alarm[0] = 4;
	}
	
	if ((key_up) && (global.mmY4 > 0))
	{
		global.mmY4 -= 1;
		canGo = false;
		alarm[0] = 4;
	}

else if ((key_down) && (global.mmY4 < 9))
	{
		if ((global.mmX4 == 1) && (global.mmY4 <= 4))
		{
			global.mmY4 += 1;
			canGo = false;
			alarm[0] = 4;
		}
		if (global.mmX4 < 1)
		{
			global.mmY4 += 1;
			canGo = false;
			alarm[0] = 4;
		}
	}
	
}
	
}


//draw_sprite(spr_mmCursor,imgspd,localx + (global.mmX * 16), localy + (global.mmY * 16));
if ((global.pause == false) || (global.pauseScreenOn != 3))
{instance_destroy();}