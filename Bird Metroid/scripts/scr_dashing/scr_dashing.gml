if (global.dodgeUnlocked == true) && (global.inText == false)
{
if (attacking == false)
{

if move_lock = false
{
	if (sprite_index != spr_player_wallslide)
	{
    move = key_left + key_right
	}
	else
	{
		if (key_dash)
		{move = (-move)}	
	}
			
}

if  ((key_dash) && (dashing == false) && (candash = true))
{
	if (candash = true)
	{
    candash = false;
	dashing = true;
	alarm[3] = 15;
	move_lock = true;
	grav = 0;
	vsp = 0;
	sprite_index = spr_player_dash;
	image_speed = 0.4;
	
	}
}
	
	
if ((dashing == true) && ((place_meeting(x+1,y,obj_wall)) || (place_meeting(x-1,y,obj_wall))))
{
dashing = false;
move_lock = false;
grav = 0.2;
vsp += grav;
}

if (move != 0)
{
hsp = move*movespeed;
}
if (move = 0)
{
	hsp = movespeed*(image_xscale)
}
var hsp_final = hsp;

if (dashing == true)
{
	
if (place_meeting(x+hsp_final,y,obj_wall))
{
    while(!place_meeting(x+sign(hsp_final),y,obj_wall))
    {
    x += sign(hsp_final*2);
	}
hsp_final = 0;
hsp = 0;
}
x += hsp_final*2;
}

}
}