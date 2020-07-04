
////case pState.swing
if (move_lock == false)
{
    move = key_left + key_right
}

//////////////////////////////////////////////////
//Using the Hookshot as a grappling hook
//////////////////////////////////////////////////
haveSet = false;
hooking = false;
setupComplete = false;
canHook = false;
notHookshotting = true;

if (instance_exists(obj_movingHeadMask))
{
grappleX = obj_movingHeadMask.x;
grappleY = obj_movingHeadMask.y;
instance_destroy(obj_movingHeadMask);
}

if (instance_exists(obj_movingPlatform))
{
	if (hookOnMoving == true)
	{
		grappleX = obj_movingPlatform.x;
		grappleY = obj_movingPlatform.y;
	}
}
/*
var normX,normY;
len = sqrt(sqr(normX) + sqr(normY));
normX = normX/len;
normY = normY/len;
*/
var normX,normY;
normX = lengthdir_x(ropeLength, ropeAngle);
normY = lengthdir_y(ropeLength, ropeAngle);

ropeX = grappleX + normX;
ropeY = grappleY + normY;

/*
var vx = ropeX - x;
var vy = ropeY - y;

len = sqrt(sqr(vx) + sqr(vy));

vx = vx / len;
vy = vy / len;
*/

hsp = ropeX - x;
vsp = ropeY - y;

//x += hsp;
//y += vsp;
///Climbing up and Down the rope
if (ropeLength > 0)
{
	if ((key_up) || (key_ltrheld))
	{
	if ((!place_meeting(x,y-vsp,obj_wall)))
	{
		//hsp = 0;
		//ropeAngle = 270;
		ropeMoving = true;
		ropeLength -= 1.0;}
	}
}

if (ropeLength < setRopeLength)
{
	if (key_down)
	{
		if ((!place_meeting(x,y+vsp,obj_wall)))
		{
			//hsp = 0;
			ropeMoving = true;
			//ropeAngle = 270;
			ropeLength += 1.0;
			}
	}
}
////Controlling the rope w
var _ropeAngleAcceleration = -0.2 * dcos(ropeAngle);
_ropeAngleAcceleration += (move)*(0.04);

if (!(key_up) && !(key_down))
{
	ropeMoving = false;
}

ropeAngleVelocity += _ropeAngleAcceleration;
ropeAngle += ropeAngleVelocity;
ropeAngleVelocity *=0.99;

if (ropeMoving == true)
{
//ropeAngleVelocity += _ropeAngleAcceleration;
ropeAngle += ropeAngleVelocity;
ropeAngleVelocity *=0.98;
}



if (key_jump)
{
	state = pState.normal;
	jumps -= 1;
    vsp = -jumpspeed;
	obj_PlayerStatusAlarms.alarm[11] = 1;
    state = pState.normal;
}

if (key_dash)
{
	state = pState.normal;
    hsp = (movespeed)*(move);
	vsp = 0.2;
	obj_PlayerStatusAlarms.alarm[11] = 1;
    state = pState.normal;
}


////////////////////////////////////
//Collision Checking
////////////////////////////////////
var hsp_final = (hsp + hsp_carry);
hsp_carry = 0;
	yplus = 0;

//Horizontal Collision
if (place_meeting(x+hsp_final,y,obj_wall))
{

		ropeAngle = point_direction(grappleX,grappleY,x,y);
		ropeAngleVelocity = 0; //bouncing?

	//yplus = 0;
	while (place_meeting(x+hsp_final,y-yplus,obj_wall) && (yplus <= 5))
		{
			yplus+=1;
			global.testVar = yplus;
		}
		
	if (place_meeting(x+hsp_final,y-yplus,obj_wall))
	{
		if (!place_meeting(x+sign(hsp_final),y,obj_wall))
	    {
	    x += sign(hsp_final);
	    }
				hsp_final = 0;
		hsp = 0;
	}
	else
	{y-= yplus}
	
//hsp_final = 0;
//hsp = 0;

}
x += hsp_final;



if ((!place_meeting(x,y,obj_wall)) && (vsp >= 0) && (place_meeting(x,y+2+abs(hsp_final),obj_wall)))
{

		ropeAngle = point_direction(grappleX,grappleY,x,y);
		ropeAngleVelocity = 0; //bouncing?
	
	while !(place_meeting(x,y+1,obj_wall))
	{y += 1;}
}


//Vertical Collision
if (place_meeting(x,y+vsp,obj_wall))
{
	scr_hookEnd();
		ropeAngle = point_direction(grappleX,grappleY,x,y);
		ropeAngleVelocity = 0; //bouncing?
	
   while (!place_meeting(x,y+sign(vsp),obj_wall))
    {
        y += sign(vsp);
    }
    vsp = 0;
}
y += vsp;




