var slowValue;
if (global.statusSlowed == true)
	{slowValue = 2;}
	else if (playerInWater == true)
	{slowValue = 1.5;}
	else
	{slowValue = 1;}

if ((global.inText == false) && (global.statusFrozen == false) && (global.atShrine == false))
{

//Hookshot
	if (global.hookshotUnlocked == true)
	{
		scr_hookshotMain();
	}

///Sword Stuff
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
//Dashing and Jumping
scr_dashJump();

/////Terrain Physics
if ((attacking == false) && (dashing == false) && (dmgfrozen == false))
	{
//////////////////////////////////////////////////////
    
	if move_lock = false
	{
	    move = key_left + key_right
	}
	
	if (extrahsp > 0)
		{extrahsp -= 0.05;}
	if (extravsp > 0)
		{extravsp -= 0.05;}
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
////////////////////////Water
if (playerInWater == true)
{
	hsp = (move * (movespeed+extrahsp))/1.1;
	
	//Falling twice as slowly because of the reduced gravity
	if (!(place_meeting(x+1,y,obj_wall)) && !(place_meeting(x-1,y,obj_wall)))
	{
	if (vsp < 10) {vsp += grav/2;}
	}
	
	//Sliding down walls twice as slowly because of the reduced gravity
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
	
	//Falling Normally, no walls around
	if (!(place_meeting(x+1,y,obj_wall)) && !(place_meeting(x-1,y,obj_wall)))
	{
	if (vsp < 10) vsp += grav;
	}

	//Wall Sliding
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

/////Water Jets
if (playerWaterStream == true)
{
	//The water has some variables we need to grab
	var dirX, dirY, mag, ang;
	//Direction
	//Magnitude
		//if magnitude is above a certain threshold, it should kick the player out but also carry them with
		//if the magnitude is below it will add to the players hsp and vsp
		//should ride to top and kind of bounce on the water
		//if jet is out of water gravity will slowly pull you out of a horizontal one, but in water it will cancel the gravity
	if (instance_exists(obj_waterStream))
		{
		var inst = instance_nearest(x,y,obj_waterStream)
			dirX = inst.directX;
			dirY = inst.directY;
			ang = inst.angle;
			mag = sqrt(power(dirX,2) + power(dirY,2));
			if (mag > 10) //Water is impassable
			{
				//move player out of the box and closer to where it came from
				//maybe bounce player out, reset move on key release
				extrahsp = dirX;
				extravsp = dirY;
			}
			else if (mag < 10)
			{
				//add the waters x magnitude to xsp and y magnitude to vsp
				extrahsp = dirX;
				extravsp = dirY;
				
			}
			

	/*
	jumps = 0;
	if (instance_exists(obj_waterStream))
		{
		var inst = instance_nearest(x,y,obj_waterStream)
			if (inst.passable == false)
			{
				hsp = -(move * (movespeed+extrahsp));
			}
			else
			{
				if (vsp > -6) {vsp -= grav*2;}
				if (vsp < -6) {vsp = -6;}
			}
		}
		*/
}
else
{

}

	
/////Collision Code
	var hsp_final = (hsp + hsp_carry)/(slowValue);
	hsp_carry = 0;
		yplus = 0;
	//Horizontal Collision
	if (place_meeting(x+hsp_final,y,obj_wall))
	{
		//Walking up a platform as long as the slope increase is smooth enough
		while (place_meeting(x+hsp_final,y-yplus,obj_wall) && (yplus <= 5))
			{
				yplus+=1;
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

		//Left vs right
		if (move!=0) {
			image_xscale = round(move);
			}


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

