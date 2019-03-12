
if ((global.teleporting == true) && (obj_miniMap.map == false))
{
room_goto(asset_get_index(string(global.roomGoto)));
global.pause = false;
instance_create_layer(x,y,"Text",con_saveWarpTransition);
x = 50;
y = 50;
hsp = 0;
vsp = 0;
grav = 0;
move_lock = true;
alarm[9] = 3;
}

if ((distance_to_object(obj_save) > 250) && (global.teleporting = true))
{
	global.teleporting = false;
}

if ((distance_to_object(obj_save) < 250))
{
	global.canteleport = true;
}
else
{global.canteleport = false;}
	



