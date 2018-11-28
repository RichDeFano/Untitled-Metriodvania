/// @Initializing Character Values
// You can write your code in this editor
scr_checkGamepad();
scr_variablesHuman();
scr_InitializeCharacter();
scr_AllKeysDefault();

//player = 0;

current_pal=0;
my_pal_sprite=spr_player_pal;

///Override stuff.
override_surface=noone;
override_pal_index=1;


if (x = 99999)
	{x = room_width - 20;}
if (y = 99999)
	{y = room_height - 20;}