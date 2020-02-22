if (sprite_index == spr_player_jump)
{
image_index = 2;
image_speed = 0;
}

if (sprite_index == spr_player_doublejump)
{
image_index = 4;
image_speed = 0;
}

if (sprite_index == spr_player_hit)
{
	if (place_meeting(x,y-1,obj_wall))
	{
	sprite_index = spr_player_dead;
	image_index = 0;
	image_speed = 0.6;
	alarm[1] = -1
	alarm[2] = -1
	hspeed = 0
	vspeed = 0
	x += 0
	x -= 0
	
	}
	else
	{
	sprite_index = spr_player_hit;
	image_index = 6;
	image_speed = 0.1;
	}
}

if ((sprite_index == spr_player_dead) && (image_index >= 7))
{
	image_speed = 0;
	image_index = 9;
	image_index -= 1;
}



if ((sprite_index == spr_player_sword1))
{
	alarm[5] = 30;
	sprite_index = spr_player_stand;
	image_speed = 0;
	attacking = false;
	canattack = true;
	cancombo = true;
}


if ((sprite_index == spr_player_sword2))
{
	alarm[5] = 30;
	sprite_index = spr_player_stand;
	image_speed = 0;
	canattack = true;
	attacking = false;
	cancombo = true;
}


if ((sprite_index == spr_player_sword3))
{
	alarm[5] = 30;
	sprite_index = spr_player_stand;
	image_speed = 0;
	canattack = true;
	attacking = false;
	cancombo = false;
}

if ((sprite_index == spr_player_sword_wallslide))
{
	alarm[5] = 30;
	sprite_index = spr_player_wallslide;
	image_speed = 0;
	attacking = false;
}

if ((sprite_index == spr_player_sword_jumpU))
{
	alarm[5] = 15;
	sprite_index = spr_player_jump;
	image_speed = 0;
	attacking = false;
}

if ((sprite_index == spr_player_sword_jump))
{
	alarm[5] = 15;
	sprite_index = spr_player_jump;
	image_speed = 0;
	attacking = false;
}

if ((sprite_index == spr_player_sword_jumpD))
{
	alarm[5] = 15;
	sprite_index = spr_player_fall;
	image_speed = 0;
	attacking = false;
}

if ((sprite_index == spr_player_sword_run))
{
	alarm[5] = 25;
	sprite_index = spr_player_stand;
	image_speed = 0;
	attacking = false;
}

if (sprite_index == spr_player_warp)
{
	alarm[5] = 15;
	move_lock = false;
	sprite_index = spr_player_stand;
	image_speed = 0;
	attacking = false;
}