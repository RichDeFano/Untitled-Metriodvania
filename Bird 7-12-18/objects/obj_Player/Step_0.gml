///scr_AllKeysDefault();
scr_gainJump();
///scr_Death();
///scr_damage();
scr_buttonMovement();
scr_Moving();
scr_chooseSword();
scr_dashing();
scr_random();
scr_playerPalette();
scr_newRoomTransition();
scr_teleport();

if (x = 99999)
	{x = room_width - 20;}
if (y = 99999)
	{y = room_height - 20;}

/*
if (global.inZone != global.zone)
{
	global.inZone = global.zone;
	instance_create_layer(x,y,"Text",hud_zoneText);
}

*/

if (keyboard_check(ord("W")))
{
	game_restart();
}

if (keyboard_check(ord("Q")))
{
	game_end();
}