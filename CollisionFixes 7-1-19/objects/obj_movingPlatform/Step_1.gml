pastX = x;
pastY = y;

if (solid == true)
{
if (place_meeting(x,y-3,obj_Player))
{

		playerRiding = true;
		oldX = round(x);
		oldY = round(y);

}
else
{
	playerRiding = false;
}
}
else
{
	playerRiding = false;
}
/////////////////////////////////////////////////////////////////////Horizontal Right
if ((initDir == 0) && (pauseFinished == true))
{
	if (haveFlipped == false)
	{
		if (distance_to_point(initX,initY) < ((initDist)*(16)))
			{
			x += initSpeed;
			y += 0;
			}
		else
			{	
				if (!alarm[0])
				{alarm[0] = 1 + initPause;}
			}
	}
	else
	{
		if (distance_to_point(initX,initY) > 0)
			{
			x -= initSpeed;
			y += 0;
			}
		else
			{	
				if (!alarm[0])
				{alarm[0] = 1 + initPause;}
			}
			
	}
		
}
/////////////////////////////////////////////////////////////////////Horizontal Left
if ((initDir == 1) && (pauseFinished == true))
{
	if (haveFlipped == false)
	{
		if (distance_to_point(initX,initY) < ((initDist)*(16)))
			{
			x -= initSpeed;
			y += 0;
			}
		else
			{	
				if (!alarm[0])
				{alarm[0] = 1 + initPause;}
			}
	}
	else
	{
		if (distance_to_point(initX,initY) > 0)
			{
			x += initSpeed;
			y += 0;
			}
		else
			{	
				if (!alarm[0])
				{alarm[0] = 1 + initPause;}
			}
			
	}
		
}
/////////////////////////////////////////////////////////////////////Vertical Up
if ((initDir == 2) && (pauseFinished == true))
{
	if (haveFlipped == false)
	{
		if (distance_to_point(initX,initY) < ((initDist)*(16)))
			{
			x -= 0;
			y -= initSpeed;
			}
		else
			{	
				if (!alarm[0])
				{alarm[0] = 1 + initPause;}
			}
	}
	else
	{
		if (distance_to_point(initX,initY) > 0)
			{
			x += 0
			y += initSpeed;
			}
		else
			{	
				if (!alarm[0])
				{alarm[0] = 1 + initPause;}
			}
			
	}
		
}
/////////////////////////////////////////////////////////////////////Vertical Down
if ((initDir == 3) && (pauseFinished == true))
{
	if (haveFlipped == false)
	{
		if (distance_to_point(initX,initY) < ((initDist)*(16)))
			{
			x -= 0;
			y += initSpeed;
			}
		else
			{	
				if (!alarm[0])
				{alarm[0] = 1 + initPause;}
			}
	}
	else
	{
		if (distance_to_point(initX,initY) > 0)
			{
			x += 0
			y -= initSpeed;

			}
		else
			{	
				if (!alarm[0])
				{alarm[0] = 1 + initPause;}
			}
			
	}
		
}
/////////////////////////////////////////////////////////////////////Circular Clockwise
if (initDir == 4)
{
	
theta += initSpeed/2;
if (theta >= 360) 
	{theta -= 360;}


x = round(lengthdir_x(initRad*16, theta) + initX);
y = round(lengthdir_y(initRad*16, theta) + initY);


}
/////////////////////////////////////////////////////////////////////Circular cClockwise
if (initDir == 5)
{
	
theta -= initSpeed/2;
if (theta >= 360) 
	{theta -= 360;}


x = round(lengthdir_x(initRad*16, theta) + initX);
y = round(lengthdir_y(initRad*16, theta) + initY);

}
////////////////////////////////////////////////////////////////////

if (playerRiding == true)
{
if ((x != oldX) || (y != oldY))
{
	obj_Player.x += round(x-oldX);
	obj_Player.y += round(y-oldY);
}
}


