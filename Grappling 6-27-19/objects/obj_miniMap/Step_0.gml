scr_Pausing();
scr_buttonMovement();

if (global.pause == true)
{
if (global.inText == false)
{
	if (keyboard_check_released(ord("A")))
	{global.pauseScreenOn -= 1;}
	if (keyboard_check_released(ord("S")))
	{global.pauseScreenOn += 1;}
	
	if (global.pauseScreenOn < 0)
		{global.pauseScreenOn = 4;}
	if (global.pauseScreenOn > 4)
		{global.pauseScreenOn = 0;}
}
	

if (global.pauseScreenOn == 0)
	{
		if (!instance_exists(obj_mmCursor))
		{instance_create_depth(0,0,-100,obj_mmCursor);}
		if (!instance_exists(obj_playerMap))
		{instance_create_depth(0,0,100,obj_playerMap);}
	}
	
if (global.pauseScreenOn == 1)
	{
		if (!instance_exists(obj_mmCursor2))
			{instance_create_depth(0,0,-100,obj_mmCursor2);}
		if ((key_attack_released) && (canReadAgain == true))
			{scr_upgradeStep();}
	}

if (global.pauseScreenOn == 2)
	{
		if (!instance_exists(obj_mmCursor3))
			{instance_create_depth(0,0,-100,obj_mmCursor3);}
		if ((key_attack_released) && (canReadAgain == true))
			{scr_hpStep();}
	}
	
if (global.pauseScreenOn == 3)
	{
		if (!instance_exists(obj_mmCursor4))
			{instance_create_depth(0,0,-100,obj_mmCursor4);}
		if (!instance_exists(obj_tomePapers))
			{instance_create_depth(0,0,-100,obj_tomePapers);}
		if ((key_attack_released) && (canReadAgain == true))
			{scr_tomesStep();}
	}

if (global.pauseScreenOn == 4)
	{
		if (!instance_exists(obj_mmCursor5))
		{
			instance_create_depth(0,0,-100,obj_mmCursor5);
			instance_create_depth(0,0,-100,obj_mmCursor6);
			}
	}






}


//Updating the map
if (global.pause == false)
{
	//if (!instance_exists(obj_mmCursor))
	//{instance_create_layer(x,y,"Instances",obj_mmCursor);}
	local_x = obj_Player.x;
	local_y = obj_Player.y;
	global.mmY = global.gridY+(local_y div 480) - 1;
	global.mmX = global.gridX+(local_x div 640) - 1;
	//mapGrid[(global.gridY+(local_y div 480)),(global.gridX+(local_x div 640))] = 1;
	if (global.isSave == true)
		{scr_saveBigRooms();}
	else if ((global.isBoss == true) && (global.isBossCleared == false))
		{
			mapGrid[(global.gridY+(local_y div 480)),(global.gridX+(local_x div 640))] = 3;

			}
	else if ((global.isBoss == true) && (global.isBossCleared == true))
		{
			mapGrid[(global.gridY+(local_y div 480)),(global.gridX+(local_x div 640))] = 4;

			}
	else
		{
			mapGrid[(global.gridY+(local_y div 480)),(global.gridX+(local_x div 640))] = 1;
			
			}
}


