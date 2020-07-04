
///@function scr_roomSetup(gridX,gridY,isSave,isBoss

var tempZone,tempX,tempY,isSave,isBoss;
tempZone = argument[0];
tempX = argument[1];
tempY = argument[2];
isSave = argument[3];
isBoss = argument[4] ;
global.zone = tempZone;

if (global.zone == "GemstoneCavern")
{
global.gridX = tempX+27;
global.gridY = tempY+31;
}

else if (global.zone == "TestZone")
{
global.gridX = tempX+22;
global.gridY = tempY+29;
}

else if (global.zone == "FalconsDen")
{
global.gridX = tempX+31;
global.gridY = tempY+11;
}

else
{
global.gridX = tempX;
global.gridY = tempY;
}

if (global.zoneWarping == true)
{
obj_Player.x = obj_zoneTeleporter.x+(obj_Player.move*50);
obj_Player.y = obj_zoneTeleporter.y;
			instance_create_layer(obj_zoneTeleporter.x,obj_zoneTeleporter.y,"ObjOverPlayer",obj_warpGlow2);
			obj_Player.sprite_index = obj_Player.spr_player_warp;
			obj_Player.sprite_index = obj_Player.spr_player_warp;
			obj_Player.image_index = 0;
			obj_Player.image_speed = 1.2;

			obj_Player.grav = 0.2;
			obj_Player.move_lock = true;
global.zoneWarping = false;
}


global.isSave = isSave;
global.isBoss = isBoss;

global.lastRoomInX = tempX;
global.lastRoomInY = tempY;