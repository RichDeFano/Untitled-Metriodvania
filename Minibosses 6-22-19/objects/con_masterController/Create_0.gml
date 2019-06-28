/// @description Insert description here
// You can write your code in this editor
//instance_create_layer(x,y,"Instances",con_displayManager);


if !(instance_exists(con_textManager))
{instance_create_layer(x,y,"Text",con_textManager);}
if !(instance_exists(obj_miniMap))
{instance_create_layer(x,y,"Text",obj_miniMap);}
if !(instance_exists(con_weatherManager))
{instance_create_layer(x,y,"ObjOverPlayer",con_weatherManager);}
if !(instance_exists(con_lightManager))
{instance_create_layer(x,y,"Text",con_lightManager);}
	



/*
for (var i = 0; i <= 4; i++) ////I = Y = 5 Rows
{
	for (var j = 0; j<=6;j++) ////J = X = 7 Columns
	{
		global.mapHeight[i,j] = 0;
		global.mapWidth[i,j] = 0;
	}
}