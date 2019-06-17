/// @description Insert description here
// You can write your code in this editor
if (grounddashed == true)
{
candash = true;
}

else
{
	if (grounded == false)
	{
	if (sprite_index != spr_player_wallslide)
	{alarm[4] = 1;}
	else
	{candash = true;}
	}
	if ((grounded == true))
	{
		candash = true;
	}
}