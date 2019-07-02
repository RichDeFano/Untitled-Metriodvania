/// @Initializing Character Values
// You can write your code in this editor
scr_checkGamepad();
scr_variablesHuman();
scr_InitializeCharacter();
scr_AllKeysDefault();

colorPurp = false;
colorRed = false;
//player = 0;\
notHookshotting = true;
haveSetHook = false;
ropeLength = 0;
ropeAngle = 0;
move = 0;
current_pal=0;
my_pal_sprite=spr_player_pal;

///Override stuff.
override_surface=noone;
override_pal_index=1;


if (x = 99999)
	{x = room_width - 20;}
if (y = 99999)
	{y = room_height - 20;}

/*
if ((x == 10000) || (y == 10000))
{

	x = obj_save.x;
	y = obj_save.y;
	
}
*/