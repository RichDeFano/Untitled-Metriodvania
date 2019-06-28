
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
global.gridX = tempX+15;
global.gridY = tempY+19;
}

else if (global.zone == "TestZone")
{
global.gridX = tempX+10;
global.gridY = tempY+17;
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