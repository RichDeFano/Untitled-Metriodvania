/// @description Insert description here
// You can write your code in this editor
//global.debugNumb++;
scr_buttonMovement();
localx = camera_get_view_x(view_camera[0]) + 6 +59;
localy = camera_get_view_y(view_camera[0]) - 12 +75;
//localx = 72;
//localy = 91;
imgspd = 0.5
canGo = true;
if (global.pause == false)
{
	instance_destroy();
}


scr_calcMapOffset();
x = localx + ((global.mmX-global.mapOffsetX-1) * 15)
y = localy + ((global.mmY-global.mapOffsetY-1) * 15)