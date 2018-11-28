
if ((global.dodgeUnlocked == true) && (global.inText == false))
{
	
	
	
if (dashhp < maxdashhp)
{
	if (global.dashCDUnlocked == true)
	{dashhp += 0.6;}
	else
	{dashhp += 0.3;}
}

if ((dashhp >= maxdashhp) && (haventtriggered == true))
{
	alarm[4] = 1;
	haventtriggered = false;
}
	
	
	
	
if (attacking == false)
{

if (move_lock == false)
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
	dmgblinking = true;
	alarm[7] = 40;
	alarm[8] = 2;
	grav = 0;
	vsp = 0;
	image_speed = 0.4;
	dashhp = 0;
	haventtriggered = true;
	if (move != 0)
		{
		hsp = move*movespeed;
		sprite_index = spr_player_dash;
		}
	else if (move == 0)
		{
		sprite_index = spr_player_sword_counter;
		}
	}
}
	
	
if ((dashing == true) && ((place_meeting(x+1,y,obj_wall)) || (place_meeting(x-1,y,obj_wall))))
{
dashing = false;
move_lock = false;
grav = 0.2;
vsp += grav;
}
/*
if (move != 0)
{
hsp = move*movespeed;
}
if (move = 0)
{
    candash = false;
	dashing = true;
	countering = true;
	alarm[3] = 15;
	move_lock = true;
	dmgblinking = true;
	alarm[7] = 40;
	alarm[8] = 2;
	grav = 0;
	vsp = 0;
	sprite_index = spr_player_sword_counter;
	image_speed = 0.4;
	
}
*/
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