var tempX = argument[0];
var tempY = argument[1];

if ((global.mmX >= 22) && (global.mmX <= 26))
{
	if ((global.mmY >= 29) && (global.mmY <= 31))
	{global.teleportZone = "TestZone";}
}
else if ((global.mmX >= 27) && (global.mmX <= 35))
{
	if ((global.mmY >= 31) && (global.mmY <= 39))
	{global.teleportZone = "GemstoneCavern";}
}


if (global.teleportZone == "TestZone")
{
	global.destX = tempX-22;
	global.destY = tempY-29;
}
else if (global.teleportZone == "GemstoneCavern")
{
	global.destX = tempX-27;
	global.destY = tempY-31;
	
	if ((global.destX == 6) && (global.destY == 9))
	{
		global.destX = 6;
		global.destY = 7;
	}
	
}




/*
if (global.zone == "GemstoneCavern")
{
global.destX = tempX-15;
global.destY = tempY-19;
}

else if (global.zone == "TestZone")
{
global.destX = tempX-10;
global.destY = tempY-17;
}

else
{
global.destX = tempX;
global.destY = tempY;
}