if (canDashJump == true)
{
		
		//hsp = (move * (movespeed+1.5));
		if (vsp < 0) && (!key_jump_held)
			{vsp = max(vsp,-jumpspeed/2)}
//Jumps
		if (place_meeting(x,y+1,obj_wall))
			{
			    jumps = jumpsmax;
			    grounded = true;
				dashJumping = false;
			}
		else
			{
			    if (jumps == jumpsmax)
			    {jumps -=1;}
			    grounded = false;
			}

		if (key_jump) && (jumps > 0)
			{
			    jumps -= 1;
			    vsp = -(jumpspeed+0.5);
				dashing = false;
				dashJumping = true;
				glowYellow = true;
				extrahsp = 4;
			}

		if ((global.wallJumpUnlocked == true) && (playerCanWJ == true))
		{

			if (key_jump && (place_meeting(x+1,y,obj_wall)) && grounded = false)
			{
			    jumps = jumpsmax;
			    vsp = -(jumpspeed);
			    move = -0.75;
			    move_lock = true;
			    alarm[0] = 10; // Experiment with this for your player to push off farther	
			}

			if (key_jump && (place_meeting(x-1,y,obj_wall)) && grounded = false)
			{
			    jumps = jumpsmax;
			    vsp = -(jumpspeed);
			    move = 0.75;
			    move_lock = true;
			    alarm[0] = 10; // Experiment with this for your player to push off farther	
			}

		}

	

	
}


else
{
	glowYellow = false;
	if (vsp < 0) && (!key_jump_held)
	{vsp = max(vsp,-jumpspeed/2)}
//Jumps
	if (place_meeting(x,y+1,obj_wall))
		{
		    jumps = jumpsmax;
		    grounded = true;
			dashJumping = false;
		}
	else
		{
		    if (jumps == jumpsmax)
		    {jumps -=1;}
		    grounded = false;
		}

	if (key_jump) && (jumps > 0)
		{
		    jumps -= 1;
		    vsp = -jumpspeed;
		}

	if ((global.wallJumpUnlocked == true) && (playerCanWJ == true))
	{

		if (key_jump && (place_meeting(x+1,y,obj_wall)) && grounded = false)
		{
		    jumps = jumpsmax;
		    vsp = -jumpspeed;
		    move = -0.75
		    move_lock = true
		    alarm[0] = 10 // Experiment with this for your player to push off farther	
		}

		if (key_jump && (place_meeting(x-1,y,obj_wall)) && grounded = false)
		{
		    jumps = jumpsmax;
		    vsp = -jumpspeed;
		    move = 0.75
		    move_lock = true
		    alarm[0] = 10 // Experiment with this for your player to push off farther	
		}

	}
}