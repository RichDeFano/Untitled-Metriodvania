/// @description Insert description here
// You can write your code in this editor
// map is 32 columns, 20 r
if (global.inText == false)
{
scr_buttonMovement();
image_speed = 0.1;
x = localx + (global.mmX3 * 253);
y = localy + (global.mmY3 * 32);


if (canGo == true)
{
	
if ((key_right) && (global.mmX3 < 1))
	{
		global.mmX3 += 1;
		canGo = false;
		alarm[0] = 4;
	}

else if (-(key_left) && (global.mmX3 > 0))
	{
		global.mmX3 -= 1;
		canGo = false;
		alarm[0] = 4;
	}
	
	if ((key_up) && (global.mmY3 > 0))
	{
		global.mmY3 -= 1;
		canGo = false;
		alarm[0] = 4;
	}

else if ((key_down) && (global.mmY3 < 9))
	{
		global.mmY3 += 1;
		canGo = false;
		alarm[0] = 4;
	}
	
	
	
}

}
//draw_sprite(spr_mmCursor,imgspd,localx + (global.mmX * 16), localy + (global.mmY * 16));
if ((global.pause == false) || (global.pauseScreenOn != 2))
{instance_destroy();}