var slowValue;
if (global.statusSlowed == true) || (playerInWater == true)
{slowValue = 2;}
else
{slowValue = 1;}
//glowYellow = false;

if ((global.inText == false) && (global.statusFrozen == false) && (global.atShrine == false))
{
	if (global.hookshotUnlocked == true)
	{
		scr_hookshotMain();
	}


	if ((attacking == true))
	{
		
		
    
	if ((!(place_meeting(x+1,y,obj_wall)) && !(place_meeting(x-1,y,obj_wall))) || (playerOnIce == true))
	    {
		    if (vsp < 10)
		    {vsp += grav;}
	    }

	if (((place_meeting(x+1,y,obj_wall)) || (place_meeting(x-1,y,obj_wall))) && (playerOnIce == false))
	    {
		    if (vsp < 3.0)
		    {vsp += grav;}
	    }


	if ( (sprite_index == spr_player_sword_jumpD) || (sprite_index == spr_player_sword_jumpU) || (sprite_index == spr_player_sword_jump) )
	{
		if (place_meeting(x,y+vsp,obj_wall))
		{
		    while(!place_meeting(x,y+sign(vsp),obj_wall))
		    {
		        y += sign(vsp);
		    }
		    vsp = 0;
		}
		y += vsp;
	}

	if ((!place_meeting(x+5,y+1,obj_wall)) && (!place_meeting(x-5,y+1,obj_wall)))
	{
		x += hsp;
	}

	if ((grounded == true) && (move != 0))
	{
	    if(!place_meeting(x+hsp*1.5,y,obj_wall))
	    {
			x +=(hsp*0.2);
	    }

	}

}



scr_dashJump();
if ((attacking == false) && (dashing == false) && (dmgfrozen == false))
	{
//////////////////////////////////////////////////////
    
	if move_lock = false
	{
	    move = key_left + key_right
	}
	
	if (extrahsp > 0)
		{extrahsp -= 0.05;}
/////////////////////////////////////
//Ice and startup physics
if (playerOnIce == true)
{
	if (move != 0){
		
		if ((move < 0) && (frict > -movespeed))	//left
		{
			frict -= 0.05;
		}
		else if ((move > 0) && (frict < movespeed))	//right
		{
			frict += 0.05;
		}
		hsp =  (frict+extrahsp);

	}
		if ((move == 0) && (frict != 0))
		{
			hsp = frict;
			if (frict > 0)
				{frict -= 0.05;}
				else{frict += 0.05;}
			if ((frict > -0.10) && (frict < 0.10))
			{frict = 0;}
	
		}
}
else
{
	frict = 0;
	hsp = (move * (movespeed+extrahsp));
}
////////////////////////W
if (playerInWater == true)
{
	hsp = (move * (movespeed+extrahsp))/1.1;
	
	if (!(place_meeting(x+1,y,obj_wall)) && !(place_meeting(x-1,y,obj_wall)))
	{
	if (vsp < 10) vsp += grav/2;
	}
	
	if ((global.wallJumpUnlocked == true) && (playerCanWJ == true) && (playerOnIce == false))
	{
				
			if ((place_meeting(x+1,y,obj_wall)) || (place_meeting(x-1,y,obj_wall)))
				{	
				if (vsp < 1.5) {vsp += grav/2;}
				if (vsp > 1.5) {vsp = 1.5;}
				}
				
	
	}

	else
	{
		if ((place_meeting(x+1,y,obj_wall)) || (place_meeting(x-1,y,obj_wall)))
		{
		frict = 0;
		if (vsp < 10) {vsp += grav/2;}
		if (vsp > 10) {vsp = 10;}
		}
	}
}
else
{
	

	if (!(place_meeting(x+1,y,obj_wall)) && !(place_meeting(x-1,y,obj_wall)))
	{
	if (vsp < 10) vsp += grav;
	}

	if ((global.wallJumpUnlocked == true) && (playerCanWJ == true) && (playerOnIce == false))
	{
				
			if ((place_meeting(x+1,y,obj_wall)) || (place_meeting(x-1,y,obj_wall)))
				{	
				if (vsp < 3.0) {vsp += grav;}
				if (vsp > 3.0) {vsp = 3.0;}
				}
				
	
	}

	else
	{
		if ((place_meeting(x+1,y,obj_wall)) || (place_meeting(x-1,y,obj_wall)))
		{
		frict = 0;
		if (vsp < 10) {vsp += grav;}
		if (vsp > 10) {vsp = 10;}
		}
	}

}

	var hsp_final = (hsp + hsp_carry)/(slowValue);
	hsp_carry = 0;
		yplus = 0;
	//Horizontal Collision
	if (place_meeting(x+hsp_final,y,obj_wall))
	{

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

		while !(place_meeting(x,y+1,obj_wall))
		{y += 1;}
	}


	//Vertical Collision
	if (place_meeting(x,y+vsp,obj_wall))
	{

	   while (!place_meeting(x,y+sign(vsp),obj_wall))
	    {
	        y += sign(vsp);
	    }
	    vsp = 0;
	}
	y += vsp;


///////////////////////////////////////////////////		
//////////////Animations
////////////////////////////////////////////////////////
		if (move!=0) image_xscale = move;


		if (place_meeting(x,y+1,obj_wall))				//If you are grounded
		{
		    if (move!=0)								//and currently moving
		    {

		        {
		        sprite_index = spr_player_run;
		        image_speed = 0.6 / (slowValue);
		        }
		    }
		    else
		    {

		        {
		         sprite_index = spr_player_stand;
				 image_speed = 0;
		        }
        
    
		    }
		}
	else
	{
	    if (vsp < 0)
	    {
	        if (jumps == (jumpsmax - 1))
	        {
			sprite_index = spr_player_jump;
			image_speed = 0.5 / (slowValue);
	        }
	        else
	        {
			sprite_index = spr_player_doublejump;
			image_speed = 0.6 / (slowValue);
	        }
	    }
	    else if ((place_meeting(x+1,y,obj_wall)) || (place_meeting(x-1,y,obj_wall)))
	    {    
	        if ((global.wallJumpUnlocked == true) && (playerCanWJ == true))
	        {
	        sprite_index = spr_player_wallslide;
	        }
	        else
	        {
				sprite_index = spr_player_fall;
				//candash = true;
			}
        
	        }
	     else
	     {
		sprite_index = spr_player_fall;

		}
	}


}


}

