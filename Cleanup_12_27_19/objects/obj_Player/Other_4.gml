/// @description Insert description here
// You can write your code in this editor
alarm[10] = 15;
//scr_darknessZones();
if (x = 99999)
	{x = room_width - 20;}
if (y = 99999)
	{y = room_height - 20;}
if (global.isBoss == false)
{
	global.isBossCleared = false;
}

if ((x = 10000) || (y = 10000))
{
	x = obj_save.x;
	y = obj_save.y;
}
	
	if (!instance_exists(con_masterController))
	{instance_create_layer(0,0,"Text",con_masterController);}
	
if ((global.teleportTimer == true) || (global.justTeleported == true))
{
	instance_activate_object(hud_Healthbar);
	instance_activate_object(hud_dodgeBar);
	instance_activate_object(hud_moneyCounter);
	instance_activate_object(hud_keyCounter);
	alarm[9] = 1;
	alarm[10] = 50;
	//instance_activate_layer("ObjOverPlayer");
	//instance_activate_layer("Text");
}