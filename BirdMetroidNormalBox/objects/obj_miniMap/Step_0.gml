/////////////////////////////////////////////////////Minimap////////////////////////
//Updating the map
if (!map)
{
	local_x = obj_Player.x;
	local_y = obj_Player.y;
	mapGrid[(global.gridY+(local_y div 480)),(global.gridX+(local_x div 640))] = 1;
}

//Bringing Up the Map
if keyboard_check_pressed(vk_space)
{
	if (!map)
	{
		map = true;
		instance_deactivate_all(true);
	}
	else
	{
		map = false;
		instance_activate_all();
	}
}
/////////////////////////////////////////////////////Minimap////////////////////////