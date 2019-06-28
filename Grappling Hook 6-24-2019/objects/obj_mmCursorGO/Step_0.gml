/// @description Insert description here
// You can write your code in this editor
// map is 32 columns, 20 r
scr_buttonMovement();
image_speed = 0.1;
x = localx; 
y = localy + (global.mmY7 * 23);


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
	if ((key_up) && (global.mmY7 > 0))
	{
		global.mmY7 -= 1;
		canGo = false;
		alarm[0] = 4;
	}

else if ((key_down) && (global.mmY7 < 2))
	{
		global.mmY7 += 1;
		canGo = false;
		alarm[0] = 4;
	}
	
}
	


if ((key_attack_released) && (canPress == true))
{
	canPress = false;
	alarm[1] = 4;
	if (global.mmY7 == 0){game_restart();}
	if (global.mmY7 == 1){game_end();}
	if (global.mmY7 == 2){game_end();}
}


		


