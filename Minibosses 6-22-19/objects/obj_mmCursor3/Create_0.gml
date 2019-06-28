/// @description Insert description here
// You can write your code in this editor
scr_buttonMovement();
localx = 79;
localy = 104;
imgspd = 0.5
canGo = true;
myTextBox = noone;
x = localx + (global.mmX3 * 253);
y = localy + (global.mmY3 * 32);
if (global.pause == false)
{
	instance_destroy();
}