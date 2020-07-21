var slowValue;
if (global.statusSlowed == true)
	{slowValue = 2;}
	else if (playerInWater == true)
	{slowValue = 1.5;}
	else
	{slowValue = 1;}

if ((global.inText == false) && (global.statusFrozen == false) && (global.atShrine == false))
{


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
	
	if (extrahsp > 0){extrahsp -= 0.05;}
	if (extravsp > 0){extravsp -= grav;}
		
	if (extrahsp < 0){extrahsp += 0.05;}
	if (extravsp < 0){extravsp += grav;}
		
	if ((extrahsp < 0.10) && (extrahsp > -0.10)){extrahsp = 0;}
	if ((extravsp < 0.10) && (extravsp > -0.10)){extravsp = 0;}
		
/////////////////////////////////////
//Ice and startup physics
/////Water Jets
if (playerWaterStream == true)
{
	
	if (instance_exists(obj_waterJet))
	{
		var endinghsp = 0; var endingvsp = 0;
		var totalMagX = 0;
		var totalMagY = 0;
		var totalAngle = 0;
			//var closestJet = instance_find(obj_waterJet,i);
			//var closestJet = instance_nearest(x,y,obj_waterJet);
			var i;
			for (i = 0; i < instance_number(obj_waterJet); i += 1)
			   {
			   var currentJet = instance_find(obj_waterJet,i);
					if (currentJet.firing == true)
					{
							//draw_rectangle(x,y,x+newX,y-newY,true);
							for(var h = 0; h < currentJet.maxHeight; h++){
								for(var w=0; w<=currentJet.width;w++){
									var newY = (h*16)*dcos(currentJet.image_angle) - (w*16)*dsin(currentJet.image_angle);
									var newX = (h*16)*dsin(currentJet.image_angle) + (w*16)*dcos(currentJet.image_angle);
									if ((abs(obj_Player.x-(currentJet.x-newX)) <= 16) && (abs(obj_Player.y-(currentJet.y-newY)) <= 16))
									{
									//draw_point_color(x-newX,y-newY,c_green);
									//closestJet.drawMag = true;
									var mag, ang;
									mag = ds_grid_get(currentJet.magnitudeGrid,w,h);
									ang = ds_grid_get(currentJet.angleGrid,w,h);
									///calculate x and y components
				
										if ((mag > 0) && (ang >= 0))//&& (image_xscale == 1))
										{
											var dirX, dirY;
											dirX = mag*dcos(ang);
											dirY = -mag*dsin(ang);
											totalMagX += dirX;
												totalMagX = totalMagX/2;
											totalMagY += dirY;
												totalMagY = totalMagY/2;
											totalAngle += ang;
										}
									}
								}
							}
				
				}
				
				
			   }
		endinghsp = totalMagX;
								
		if (key_up)
			{endingvsp = totalMagY;}
		else
			{endingvsp = totalMagY/2;}
		//if (endinghsp < -6){endinghsp = -6;}
		//if (endinghsp > 6){endinghsp = 6;}
		extrahsp = endinghsp;
		extravsp = endingvsp;
	}
}
else
{
	//removing hsp/vsp if you arent in a jet? would make it feel different than ice
	//needs custom variables
	//might not play well with hookshot
}

/////////////////Ice
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
	hsp = ((move * (movespeed)) + extrahsp);
}
////////////////////////Water
if (playerInWater == true)
{
	jumps = jumpsmax;
	candash = true;
	
	hsp = ((move * (movespeed)) + extrahsp)/1.1;
	
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

//Hookshot
	if (global.hookshotUnlocked == true)
	{
		scr_hookshotMain();
	}



	
/////Collision Code
	var hsp_final = (hsp + hsp_carry)/(slowValue);
	vsp = vsp + extravsp;
	if (vsp < -5){vsp = -5;}
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

