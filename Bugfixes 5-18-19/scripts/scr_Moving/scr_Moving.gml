var slowValue;
if (global.statusSlowed == true)
{slowValue = 2;}
else
{slowValue = 1;}

if ((global.inText == false) && (global.statusFrozen == false))
{



if ((attacking == true))
{
    
if (!(place_meeting(x+1,y,obj_wall)) && !(place_meeting(x-1,y,obj_wall)))
    {
    if (vsp < 10)
    {vsp += grav;}
    }

if ((place_meeting(x+1,y,obj_wall)) || (place_meeting(x-1,y,obj_wall)))
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


if ((attacking == false) && (dashing == false) && (dmgfrozen == false))
{
//////////////////////////////////////////////////////
    
if move_lock = false
{
    move = key_left + key_right
}

hsp = move * movespeed;

if (!(place_meeting(x+1,y,obj_wall)) && !(place_meeting(x-1,y,obj_wall)))
{
if (vsp < 10) vsp += grav;
}

if ((global.wallJumpUnlocked == true) && (playerCanWJ == true))
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
	if (vsp < 10) {vsp += grav;}
	if (vsp > 10) {vsp = 10;}
	}
}


if (dying == false)
{
//Jumps
if (place_meeting(x,y+1,obj_wall))
{
    jumps = jumpsmax;
    grounded = true;
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

if (vsp < 0) && (!key_jump_held)
{vsp = max(vsp,-jumpspeed/2)}

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


		
//Animate
if (move!=0) image_xscale = move;


if (place_meeting(x,y+1,obj_wall))
{
    if (move!=0)
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

