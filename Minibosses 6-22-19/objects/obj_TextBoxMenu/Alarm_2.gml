/// @description Insert description here
// You can write your code in this editor
if (instance_exists(obj_cursorTextParent))
{
	alarm[2] = 1;
}
else
{
	alarm[2] = -1;
		if (creator != noone)
		{creator.alarm[0] = 1;}
		global.inText = false;
		//instance_destroy();
}