
///////////////////////////////////////////
//Using it as a hookshot
/////////////////////////////////////////


notHookshotting = false;
if (instance_exists(obj_movingHeadMask))
{
grappleX = obj_movingHeadMask.x;
grappleY = obj_movingHeadMask.y;
instance_destroy(obj_movingHeadMask);
}


ropeX = grappleX + lengthdir_x(ropeLength, ropeAngle);
ropeY = grappleY + lengthdir_y(ropeLength, ropeAngle);
hsp = 0;
vsp = 0;
haveSet = true;
hooking = false;
canHook = true;


if (canHook == true)
{
	hooking = true;
	if (ropeLength > 12)
	{
		move_towards_point(grappleX,grappleY,12);
		ropeLength = ropeLength-12;
		ropeX = grappleX + lengthdir_x(ropeLength, ropeAngle);
		ropeY = grappleY + lengthdir_y(ropeLength, ropeAngle);
	}
	else
	{
		canHook = false;
		speed = 0;
		setupComplete = false;
		obj_PlayerStatusAlarms.alarm[11] = 1;
		state = pState.normal;
	}
}
	