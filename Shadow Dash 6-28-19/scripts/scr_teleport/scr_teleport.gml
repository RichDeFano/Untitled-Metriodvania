
if ((global.teleporting == true) && (obj_miniMap.map == false))
{
room_goto(asset_get_index(string(global.roomGoto)));
global.pause = false;
//instance_activate_all();
instance_create_layer(x,y,"Text",con_saveWarpTransition);
x = 50;
y = 50;
hsp = 0;
vsp = 0;
grav = 0;
move_lock = true;
global.justTeleported = true;
alarm[9] = 3;
}

if ((distance_to_object(obj_save) > 50) && (global.teleporting = true))
{
	global.teleporting = false;
}




if ((distance_to_object(obj_save) < 50))
{
	if ((global.saveWarpUnlocked == true) && (global.teleportTimer == false) && (global.justTeleported == false))
	{
		global.canteleport = true;
		if (key_attack)
		{ 
			if (global.pause == false)
				{
					scr_countUpgrades();
					global.pause = true;
					global.teleportTimer = true;
					move_lock = true;
					//instance_deactivate_all(false);
					//instance_activate_object(obj_miniMap);
					instance_deactivate_layer("ObjOverPlayer");
					instance_deactivate_layer("Text");
					instance_activate_object(obj_miniMap);
					instance_deactivate_object(hud_Healthbar);
					instance_deactivate_object(hud_dodgeBar);
					instance_deactivate_object(hud_moneyCounter);
					instance_deactivate_object(hud_keyCounter);
				}
		}
	}
}

else
	{global.canteleport = false;}
	
