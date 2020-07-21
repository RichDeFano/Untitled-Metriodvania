/// @description Insert description here
// You can write your code in this editor

if (instance_exists(tempFog))
{instance_destroy(tempFog);}

if (height < maxHeight)
{
	firing = true;
		for(q = 0; q<width;q++)
		{
			ds_grid_set(magnitudeGrid,q,height,vecMag);
			ds_grid_set(angleGrid,q,height,vecAngle);
			//width broken
			//var newWater = instance_create_layer(x+((5*width)*q),y-16*(height),"ObjUnderPlayer",obj_waterStream);
			//var newWater = instance_create_layer(x+((4*width)*((height))+(16*q)),y-(16*(height)-(16*q)),"ObjUnderPlayer",obj_waterStream);
			//newWater.image_angle = image_angle;
			//newWater.passable = pass;
			//newWater.sprite_ = sprite_width;
			
		}
	height += 1;
	alarm[1] = 1;
}
else
{
//alarm[1] = 150;
//tempFog = instance_create_layer(x,y-16*(height-1),"ObjOverPlayer",obj_fogTop);
alarm[2] = 125;
}




