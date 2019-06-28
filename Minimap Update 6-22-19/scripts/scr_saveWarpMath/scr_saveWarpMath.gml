var tempX = argument[0];
var tempY = argument[1];

if ((global.mmX >= 10) && (global.mmX <= 14))
{
	if ((global.mmY >= 17) && (global.mmY <= 19))
	{global.teleportZone = "TestZone";}
}
else if ((global.mmX >= 15) && (global.mmX <= 23))
{
	if ((global.mmY >= 19) && (global.mmY <= 27))
	{global.teleportZone = "GemstoneCavern";}
}


if (global.teleportZone == "TestZone")
{
	global.destX = tempX-10;
	global.destY = tempY-17;
}
else if (global.teleportZone == "GemstoneCavern")
{
	global.destX = tempX-15;
	global.destY = tempY-19;
	
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