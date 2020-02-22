var xcreate, ycreate, healthAt,dashAt,stamAt;
xcreate = camera_get_view_x(view_camera[0]);
ycreate = camera_get_view_y(view_camera[0]);
healthAt = obj_Player.hp;
dashAt = obj_Player.dashhp;
image_speed = 0.5;
vsp = 0;
grav = 0.1;
 

if (healthAt <= 20)
	{image_blend = c_orange;}
if (healthAt > 20)
	{image_blend = c_red;}
	
if (healthAt > 0)
{
	if (healthAt % 2 == 0)
		{
		x = xcreate+105;
		y = (ycreate + ( choose(65,70,75,80,85,90)));
		}
	else
		{
		x = xcreate+15;
		y = (ycreate + ( choose(65,70,75,80,85,90)));
		}
}