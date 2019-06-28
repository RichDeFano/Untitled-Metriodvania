/// @description Insert description here
// You can write your code in this editor

var xcreate, ycreate;
xcreate = camera_get_view_x(view_camera[0]);
ycreate = camera_get_view_y(view_camera[0]);



toX = xcreate+49;
toY = ycreate+55;


if (instance_exists(obj_moneyToWallet))
{
	makeVis = true;
	alph = 1;
}

else
{
	if (startFade == false)
	{
		alarm[0] = 50;
		startFade = true;
	}
}


if ((makeVis == false) && (alph > 0))
{
	alph-=0.025;
}

if (alph <= 0)
{
	startFade = false;
}