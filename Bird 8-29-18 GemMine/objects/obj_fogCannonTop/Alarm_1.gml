/// @description Insert description here
// You can write your code in this editor
if (instance_exists(tempFog))
{instance_destroy(tempFog);}

if (height < maxHeight)
{
	instance_create_layer(x,y+16*(height),"ObjUnderPlayer",obj_fogCannon);
	height += 1;
	alarm[1] = 5;
}
else
{
//alarm[1] = 150;
tempFog = instance_create_layer(x,y+16*(height),"ObjOverPlayer",obj_fogBottom);
tempFog.alarm[0] = 100;
//alarm[2] = 25;
}