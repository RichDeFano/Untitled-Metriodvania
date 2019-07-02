if ((global.zone == "GemstoneCavern") || (global.zone == "TestZone2"))
{
	global.darknessLevel = 2;
	
}

else if ((global.zone == "TestZone"))
{
	global.darknessLevel = 1;
	
}

else
{
	global.darknessLevel = 0;
}



if (global.darknessLevel > (instance_number(con_lightManager)))
{
	instance_create_layer(x,y,"Text",con_lightManager);
}
