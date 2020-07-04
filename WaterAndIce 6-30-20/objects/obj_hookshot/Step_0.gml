/// @description Insert description here
// You can write your code in this editor
//headAtX = startingX + (ropeLength)*sin(ropeAngle);
//headAtY = startingY + (ropeLength)*cos(ropeAngle);


x = obj_Player.x;
y = obj_Player.y;


if (connected == false) 
{
			if (ropeLength < ropeMaxLength)
			{ropeLength = ropeLength+20;}

			
			if (ropeLength >= ropeMaxLength-20) && !(place_meeting(hookConnectionX,hookConnectionY,obj_wall))
			{
				contract = true;
			}
			
if (contract = true)
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
		

				
}



