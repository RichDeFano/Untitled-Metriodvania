
if ((global.teleporting == true))// && (obj_miniMap.map == false))
{
room_goto(asset_get_index(string(global.roomGoto)));
//global.pause = false;
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
		if ((key_attack) && (obj_Player.jumps == obj_Player.jumpsmax))
		{ 
			if (global.pause == false)
				{
					//x = obj_save.x;
					//y = obj_save.y;
					global.pauseScreenOn = 0;
					scr_countUpgrades();
					instance_deactivate_layer("ObjOverPlayer");
					instance_deactivate_layer("Text");
					instance_activate_object(obj_miniMap);
					instance_deactivate_object(hud_Healthbar);
					instance_deactivate_object(hud_dodgeBar);
					instance_deactivate_object(hud_moneyCounter);
					instance_deactivate_object(hud_keyCounter);
					global.pause = true;
					global.teleportTimer = true;
					move_lock = true;
					move = 0;
					hsp = 0;
					vsp = 0;
					speed = 0;
					
					//instance_deactivate_all(false);
					//instance_activate_object(obj_miniMap);
				}
		}
	}
}

else
	{global.canteleport = false;}
	
