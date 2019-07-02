/// @description Insert description here
// You can write your code in this editor
scr_buttonMovement();
localx = 97;
localy = 146;
imgspd = 0.5
canGo = true;
canPress = true;
myTextBox = noone;
x = localx + (global.mmX5 * 253);
y = localy + (global.mmY5 * 32);
if (global.pause == false)
{
	instance_destroy();
}