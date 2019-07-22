/// @description Insert description here
// You can write your code in this editor
scr_saveBigRooms();

if (!(instance_exists(obj_canTeleport)))
{
	instance_create_layer(x-5,y-30,"ObjUnderPlayer",obj_canTeleport);
}