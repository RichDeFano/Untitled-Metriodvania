/// @description Insert description here
// You can write your code in this editor
// map is 32 columns, 20 r
scr_buttonMovement();
image_speed = 0.1;
x = localx + (global.mmX5 * 253);
y = localy + (global.mmY5 * 23);

if (global.menuLayer2 == false)
{
if (global.inText == false) 
{

if (canGo == true)
{
/*	
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
*/
	if ((key_up) && (global.mmY5 > 0))
	{
		global.mmY5 -= 1;
		canGo = false;
		alarm[0] = 4;
	}

else if ((key_down) && (global.mmY5 < 4))
	{
		global.mmY5 += 1;
		canGo = false;
		alarm[0] = 4;
	}
	
}
	


if ((key_attack_released) && (canPress == true))
{
	canPress = false;
	alarm[1] = 4;
	if (global.mmY5 == 0){game_restart();}
	if (global.mmY5 == 1)
		{
		global.menuLayer2 = true;
		global.controlChange = true;
		}
	if (global.mmY5 == 2)
		{
		}
	if (global.mmY5 == 3){game_end();}
	if (global.mmY5 == 4){game_end();}
}

}
		
}

if (!instance_exists(obj_menuTimer))
{
if ((key_dash_released) && (global.controlChange == true))
{
	alarm[2] = 3;
}
}
//draw_sprite(spr_mmCursor,imgspd,localx + (global.mmX * 16), localy + (global.mmY * 16));
if ((global.pause == false) || (global.pauseScreenOn != 4))
{instance_destroy();}