var thisShadow;


if ((global.inText == false) && (global.statusDazed == false) && (global.atShrine == false))
{
if (key_dash)
{
	if (!instance_exists(obj_shadow))
		{
			thisShadow = instance_create_layer(x,y,"ObjOverPlayer",obj_shadow);
			thisShadow.move = move;
			thisShadow.movespeed = movespeed;
		}
}

if (key_dash_released)
{
	thisShadow = instance_nearest(x,y,obj_shadow);
	if (thisShadow.shadowSetup == false)
	{
		if (!(key_dash))
		{
			instance_destroy(obj_shadow);
		}
	}
	else
	{
		if (obj_shadow.x > obj_Player.x)
		{
		obj_Player.x = obj_shadow.x;
		obj_Player.y = obj_shadow.y;
		}
		else
		{
		obj_Player.x = obj_shadow.x+10;
		obj_Player.y = obj_shadow.y;
		}	
		instance_destroy(obj_shadow);
	}
}
		
}