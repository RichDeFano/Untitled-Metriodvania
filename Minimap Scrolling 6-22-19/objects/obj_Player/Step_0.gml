if !(instance_exists(obj_PlayerStatusAlarms))
{instance_create_layer(x,y,"ObjOverPlayer",obj_PlayerStatusAlarms);}
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

