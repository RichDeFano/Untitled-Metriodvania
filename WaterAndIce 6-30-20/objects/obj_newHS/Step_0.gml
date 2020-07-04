/// @description Insert description here
// You can write your code in this editor




//if ((currentX > room_width) || (currentX < 0) || (currentY > room_height) || (currentY < 0)) 
//{outsideRoom = true;}

if ((contracting == false) && (connected == false))
	{
		
		if (contracting == false) && (willconnect == false)
			{
				if (ropeLength >= ropeMaxLength) || (ropeLength >= point_direction(x,y,destX,destY))
				{contracting = true;}
			}
			
		if (connected == false) && (willconnect == true) 
			{
				if (ropeLength >= point_direction(x,y,destX,destY))
				{
					connected = true;
				}
			}
			
		
			ropeLength = ropeLength+20;
	}
	


if (contracting == true)
{
	if (count > 0)
	{
		count = (count-1);
	}
	else
	{
	obj_Player.state = pState.normal;
	scr_hookEnd();
	instance_destroy();
	}
}


if (connected == true)
{
	var len = point_distance(destX,destY,obj_Player.x,obj_Player.y);
	var ang = point_direction(destX,destY,obj_Player.x,obj_Player.y);
	obj_Player.state = pState.swing;
	obj_Player.ropeLength = len;
	obj_Player.ropeAngle = ang;
	if (obj_Player.sprite_index = spr_player_wallslide)
	{
		if (destX > obj_Player.x)
		{obj_Player.x += 25;}
		else
		{obj_Player.x -= 25;}

	}
	obj_Player.startDrawingHook = true;
	if (!instance_exists(obj_movingHeadMask))
	{
	instance_create_layer(destX,destY,"Text",obj_movingHeadMask);
	}
	instance_destroy();
}