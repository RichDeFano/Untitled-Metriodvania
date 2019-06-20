/// @description Insert description here
// You can write your code in this editor

size = array_length_1d(option);
//i = 0;
arrayOn = option[i];
boxWidth = (sprite_get_width(spr_box));


if ((obj_Player.key_right) && (haveChanged == false))
	{ 
		haveChanged = true;
		alarm[0] = 1;
		if (i+1 < size)		
		{i += 1;}
		else
		{i = 0;}
		
	}
else if ((abs(obj_Player.key_left)) && (haveChanged == false))
	{ 
		haveChanged = true;
		alarm[1] = 1;
		if (i-1 >= 0)		
		{i -= 1;}
		else
		{i = size-1;}
		
	}
	