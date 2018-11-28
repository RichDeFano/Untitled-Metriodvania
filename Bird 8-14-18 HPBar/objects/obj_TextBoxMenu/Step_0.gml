/// @description Insert description here
// You can write your code in this editor
if (!instance_exists(obj_cursorTextParent))
{
if (keyboard_check(global.P1key_attack))
{

	if (charCount < string_length(text[page]))
	{charCount = string_length(text[page]);}
 
	else if (page+1 < (array_length_1d(text)))
	{
		page +=1;
		charCount = 0;
	}
	else
	{

		if (creator != noone)
		{creator.alarm[0] = 1;}
		global.inText = false;
		instance_destroy();

	}
}
}
else
{
	if ((keyboard_check(global.P1key_attack)) && (alarm[1] <= 0))
		{
			alarm[2] = 1;
			//instance_destroy();
		}
}


