/// @description Insert description here
// You can write your code in this editor
image_index++;
if (image_index < 5)
{
	alarm[0] = 1*room_speed;
}
else
{
	instance_destroy();
	anyPressed = 0;
}