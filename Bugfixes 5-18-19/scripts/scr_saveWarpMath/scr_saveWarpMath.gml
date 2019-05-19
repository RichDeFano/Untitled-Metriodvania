var tempX = argument[0];
var tempY = argument[1];


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