/////////////////////////////////////////////////////Minimap////////////////////////
//Updating the map
if (!map)
{
	local_x = obj_Player.x;
	local_y = obj_Player.y;
	//mapGrid[(global.gridY+(local_y div 480)),(global.gridX+(local_x div 640))] = 1;
	if (global.isSave == true)
		{mapGrid[(global.gridY+(local_y div 480)),(global.gridX+(local_x div 640))] = 2;}
	else if ((global.isBoss == true) && (global.isBossCleared == false))
		{mapGrid[(global.gridY+(local_y div 480)),(global.gridX+(local_x div 640))] = 3;}
	else if (global.isBossCleared == true)
		{mapGrid[(global.gridY+(local_y div 480)),(global.gridX+(local_x div 640))] = 4;}
	else
		{mapGrid[(global.gridY+(local_y div 480)),(global.gridX+(local_x div 640))] = 1;}
}


//Bringing Up the Map
if keyboard_check_pressed(vk_space)
{
	if (!map)
	{
		map = true;
		instance_deactivate_all(true);
		instance_create_depth(x,y,-9,obj_mmCursor);
	}
	else
	{
		map = false;
		instance_activate_all();
		instance_deactivate_object(obj_mmCursor);
	}
}
/////////////////////////////////////////////////////Minimap////////////////////////