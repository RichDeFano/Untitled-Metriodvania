
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


global.isSave = isSave;
global.isBoss = isBoss;

global.lastRoomInX = tempX;
global.lastRoomInY = tempY;