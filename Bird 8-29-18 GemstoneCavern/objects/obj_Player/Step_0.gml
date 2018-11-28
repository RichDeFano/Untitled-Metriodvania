if !(instance_exists(obj_PlayerAlarms))
{instance_create_layer(x,y,"ObjOverPlayer",obj_PlayerAlarms);}

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
scr_statusEffects();
scr_darknessZones();

if (keyboard_check(ord("W")))
{
	game_restart();
}

if (keyboard_check(ord("Q")))
{
	game_end();
}
//////////////////////////

