/// @description Insert description here
// You can write your code in this editor
// map is 32 columns, 20 r
scr_buttonMovement();
image_speed = 0.1;
x = localx + (global.mmX2 * 253);
y = localy + (global.mmY2 * 32);
if (global.inText == false)
{

if (canGo == true)
{
	
if ((key_right) && (global.mmX2 < 0))
	{
		if (global.mmY2 <=6)
		{
		global.mmX2 += 1;
		canGo = false;
		alarm[0] = 4;
		}
	}

else if (-(key_left) && (global.mmX2 > 0))
	{
		global.mmX2 -= 1;
		canGo = false;
		alarm[0] = 4;
	}
	
	if ((key_up) && (global.mmY2 > 0))
	{
		global.mmY2 -= 1;
		canGo = false;
		alarm[0] = 4;
	}

else if ((key_down) && (global.mmY2 < 9))
	{
		if ((global.mmX2 == 1) && (global.mmY2 <= 4))
		{
			global.mmY2 += 1;
			canGo = false;
			alarm[0] = 4;
		}
		if (global.mmX2 < 1)
		{
			global.mmY2 += 1;
			canGo = false;
			alarm[0] = 4;
		}
	}
	
}
	
}


//draw_sprite(spr_mmCursor,imgspd,localx + (global.mmX * 16), localy + (global.mmY * 16));
if ((global.pause == false) || (global.pauseScreenOn != 1))
{instance_destroy();}