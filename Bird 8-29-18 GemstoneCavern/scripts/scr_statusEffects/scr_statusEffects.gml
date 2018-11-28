
if (global.statusBurning == true)
{
	if (global.haveSet1 == false)
	{
	obj_PlayerAlarms.alarm[0] = 5;
	global.haveSet1 = true;
	}
}

if (global.statusPoison == true)
{
	if (global.haveSet2 == false)
	{
	obj_PlayerAlarms.alarm[1] = 5;
	global.haveSet2 = true;
	}
}

if (global.statusDazed == true)
{
	if (global.haveSet3 == false)
	{
	global.dazedOldLeft = global.P1key_left;
	global.dazedOldRight = global.P1key_right;
	
	global.P1key_left = global.dazedOldRight;
	global.P1key_right = global.dazedOldLeft;
	
	scr_buttonMovement();
	obj_PlayerAlarms.alarm[2] = 5;
	global.haveSet3 = true;
	}
}

if (global.statusCursed == true)
{
	if (global.haveSet4 == false)
	{
	obj_PlayerAlarms.alarm[3] = 5;
	global.haveSet4 = true;
	}
}

if (global.statusFrozen == true)
{
	if (global.haveSet5 == false)
	{
	obj_PlayerAlarms.alarm[4] = 5;
	global.haveSet5 = true;
	}
}