//Updating the map
if (!map)
{
	//if (!instance_exists(obj_mmCursor))
	//{instance_create_layer(x,y,"Instances",obj_mmCursor);}
	local_x = obj_Player.x;
	local_y = obj_Player.y;
	//mapGrid[(global.gridY+(local_y div 480)),(global.gridX+(local_x div 640))] = 1;
	if (global.isSave == true)
		{scr_saveBigRooms();}
	else if ((global.isBoss == true) && (global.isBossCleared == false))
		{mapGrid[(global.gridY+(local_y div 480)),(global.gridX+(local_x div 640))] = 3;}
	else if (global.isBossCleared == true)
		{mapGrid[(global.gridY+(local_y div 480)),(global.gridX+(local_x div 640))] = 4;}
	else
		{mapGrid[(global.gridY+(local_y div 480)),(global.gridX+(local_x div 640))] = 1;}
}

