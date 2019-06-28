//ropeMaxLength = point_distance(x,y,destX,destY);
//ropeAngle = -point_direction(obj_Player.x,obj_Player.y,destX,destY);
	var r = scr_collision_line_point(x, y, destX, destY, obj_wall, true, true);
	draw_circle(destX,destY,5,true);
	draw_circle(r[1],r[2],5,true);

var drawback = false;

if (drawback == false)
{
	if ((ropeLength < ropeMaxLength))
		{ropeLength = ropeLength+20;}
	else
		{
			if place_meeting(destX,destY,obj_wall)
			{
				connected = true;
				contract = false;
				}
			else
			{
				connected = false;
				contract = true;
				drawback = true
			}
		}
	
}
	
if (drawback == true)
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
	