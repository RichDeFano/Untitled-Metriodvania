/// @description Insert description here
// You can write your code in this editor

var xcreate, ycreate;
xcreate = camera_get_view_x(view_camera[0]);
ycreate = camera_get_view_y(view_camera[0]);



toX = xcreate+49;
toY = ycreate+55;
/*

if (instance_exists(obj_moneyToWallet))
{
	makeVis = true;
	image_alpha = 1;
}

else
{
	makeVis = false;
}

if ((makeVis == false) && (image_alpha > 0))
{
	image_alpha-=0.05;
}