

if !(instance_exists(obj_PlayerStatusAlarms))
{instance_create_layer(x,y,"ObjOverPlayer",obj_PlayerStatusAlarms);}
///scr_AllKeysDefault();
if ((global.pause == false) && (sprite_index != spr_player_warp))
{
scr_gainJump();
scr_dying();
///scr_damage();
scr_collisions();
scr_buttonMovement();
scr_moveAndHook();
scr_chooseSword();
scr_whichDash();
scr_random();
scr_playerPalette();
}
if ((x < 0) || (y < 0) || (x > room_width) || (y > room_height))
{
scr_newRoomTransition();
}
scr_teleport();
scr_statusEffects();
scr_darknessZones();


//////////////////////////

if (keyboard_check_pressed(ord("Q")))
{
	game_end();
}

if (hsStuckInWall == true)
{
	y -= 1;
}

if (!place_meeting(x,y,obj_wall))
{
	hsStuckInWall = false;
}

if (instance_exists(obj_ropeMask))
{
	if (((image_angle > 65) && (image_angle < 90)) || (obj_ropeMask.in == true))
	{
		if ((place_meeting(x,y+8,obj_wall)) || (obj_ropeMask.in == true))
		{
			hsStuckInWall = true;
			//instance_create_layer(x,y,"Text", obj_test);
		}
	}

}
if (hsStuckInWall == true)
{
	glowYellow = true;
	while (place_meeting(x,y+8,obj_wall))
	{y -= 1;}
}
else
{
	glowYellow = false;
}

