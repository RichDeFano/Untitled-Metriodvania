if (!instance_exists(obj_newHS))//if ((global.dodgeDarkUnlocked == false) && (global.dodgeLightUnlocked == false))
{
	if (key_ltrheld)
	{
		if (setupComplete == false)
		{
		grappleX = mouse_x;
		grappleY = mouse_y;
		ropeX = x;
		ropeY = y;
		ropeAngleVelocity = 0;
		ropeAngle = point_direction(grappleX,grappleY,x,y);
		var _ropeAngleAcceleration = -0.2 * dcos(ropeAngle);
			_ropeAngleAcceleration += (move)*(0.04);
		ropeAngleVelocity += _ropeAngleAcceleration;
		ropeLength = 0;///number of chains * chainwidth
		ropeLengthComplete = (30)*(8);///number of chains * chainwidth
		//drawThisLine = true;
		//state = pState.swing;
		//hook = instance_create_layer(x,y,"ObjOverPlayer",obj_hookshot);
		//hook.ropeMaxLength = ropeLengthComplete;
		//hook.ropeAngle = ropeAngle;
		}	
	}
	if (key_ltr)
	{	

		setupComplete = true;
		//state = pState.swing;.
		/////
			countMax = (30*8)/w;
			destX = x + xx*countMax;
			destY = y + yy*countMax;
			var r = scr_collision_line_point(x, y, destX, destY, obj_wall, true, true);
			//draw_line(x,y,destX,destY);

			if (((r[1] == destX) && (r[2] == destY)) || (failedShot == true))
			{
				draw_circle(r[1],r[2],5,true);
				hook = instance_create_layer(x,y,"ObjOverPlayer",obj_newHS);
				hook.ropeMaxLength = ropeLengthComplete;
				hook.ropeLength = 0;
				hook.ropeAngle = ropeAngle;
				hook.willconnect = false;
				hook.destX = r[1];
				hook.destY = r[2];
			}

			else
			{
				//draw_circle_color(r[1],r[2],5,c_green,c_green,true);
				hook = instance_create_layer(x,y,"ObjOverPlayer",obj_newHS);
				hook.ropeMaxLength = point_distance(x,y,r[1],r[2]) + 8;
				hook.ropeAngle = ropeAngle;
				hook.ropeLength = 0;
				hook.willconnect = true;
				hook.destX = r[1];
				hook.destY = r[2];
			}
		/////
		//hook = instance_create_layer(x,y,"ObjOverPlayer",obj_newHS);
		//hook.ropeMaxLength = ropeLengthComplete;
		//hook.ropeAngle = ropeAngle;
	}
}
/*
else if (global.dodgeDarkUnlocked == true)
{
	
	if (key_ltrheld)
	{
		if (setupComplete == false)
		{
		grappleX = mouse_x;
		grappleY = mouse_y;
		ropeX = x;
		ropeY = y;
		ropeAngleVelocity = 0;
		ropeAngle = point_direction(grappleX,grappleY,x,y);
		ropeLength = 0;///number of chains * chainwidth
		ropeLengthComplete = (30)*(8);///number of chains * chainwidth
		//drawThisLine = true;
		//state = pState.swing;
		//hook = instance_create_layer(x,y,"ObjOverPlayer",obj_hookshot);
		//hook.ropeMaxLength = ropeLengthComplete;
		//hook.ropeAngle = ropeAngle;
		}	
	}
	if (key_ltr)
	{	

		setupComplete = true;
		//state = pState.swing;.
		/////
			countMax = (30*8)/w;
			destX = x + xx*countMax;
			destY = y + yy*countMax;
			var r = scr_collision_line_point(x, y, destX, destY, obj_wall, true, true);
			//draw_line(x,y,destX,destY);

			if (((r[1] == destX) && (r[2] == destY)) || (failedShot == true))
			{
				draw_circle(r[1],r[2],5,true);
				hook = instance_create_layer(x,y,"ObjOverPlayer",obj_shadowHS);
				hook.ropeMaxLength = ropeLengthComplete;
				hook.ropeLength = 0;
				hook.ropeAngle = ropeAngle;
				hook.willconnect = false;
				hook.destX = r[1];
				hook.destY = r[2];
			}

			else
			{
				//draw_circle_color(r[1],r[2],5,c_green,c_green,true);
				hook = instance_create_layer(x,y,"ObjOverPlayer",obj_shadowHS);
				hook.ropeMaxLength = point_distance(x,y,r[1],r[2]) + 8;
				hook.ropeAngle = ropeAngle;
				hook.ropeLength = 0;
				hook.willconnect = true;
				hook.destX = r[1];
				hook.destY = r[2];
			}
		/////
		//hook = instance_create_layer(x,y,"ObjOverPlayer",obj_newHS);
		//hook.ropeMaxLength = ropeLengthComplete;
		//hook.ropeAngle = ropeAngle;
	}
	
}
*/