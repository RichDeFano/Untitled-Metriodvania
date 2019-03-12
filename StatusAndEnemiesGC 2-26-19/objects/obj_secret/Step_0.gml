/// @description Insert description here
// You can write your code in this editor
if (place_meeting(x,y,obj_Player))
{
	//fading = true;
	if (image_alpha > 0)
		{image_alpha -= fadeSpd;}
}

else
{
	//fading = false;
	if (image_alpha < 1)
		{image_alpha += fadeSpd;}
}