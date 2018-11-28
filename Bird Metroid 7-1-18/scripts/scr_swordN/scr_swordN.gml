if ((dashing == false) && (global.inText == false) && (global.canInteract == false))
{
	
if (grounded == false)
{
	

if ((attacking == false) && (key_attack) && (canattack == true))
{
////////////////////////////////////////////////////////////////////////Wall Slashing////////////////////////////////////////////////////////////////////////
if (sprite_index == spr_player_wallslide)
	{
		canattack = false;
		attacking = true;
		sprite_index = spr_player_sword_wallslide;
		image_index = 0;
		image_speed = 1.2
	}
////////////////////////////////////////////////////////////////////////Jump/Double Jump////////////////////////////////////////////////////////////////////////
if ((sprite_index == spr_player_jump) || (sprite_index = spr_player_doublejump) || (sprite_index == spr_player_fall))
{
	
if (key_jump_held)
	{
		canattack = false;
		attacking = true;
		sprite_index = spr_player_sword_jumpU;
		image_index = 0;
		image_speed = 1.2
	}
	
if (key_down)
	{
		canattack = false;
		attacking = true;
		sprite_index = spr_player_sword_jumpD;
		image_index = 0;
		image_speed = 1.2
	}
if ((!key_down) && (!key_jump_held))
	{
		canattack = false;
		attacking = true;
		sprite_index = spr_player_sword_jump;
		image_index = 0;
		image_speed = 1.2
	}
	
}
	
	
}
}
////////////////////////////////////////////////////////////////////////3 Hit Combo////////////////////////////////////////////////////////////////////////
if (grounded == true)
{
	
	
if ((sprite_index = spr_player_sword1) && (image_index >= 8))
{
cancombo = true;
}

if ((sprite_index = spr_player_sword2) && (image_index >= 6))
{
cancombo = true;
}

		
	
	
if ((combocount == 0) && (key_attack) && (canattack == true))
{
	canattack = false;
	attacking = true;
	sprite_index = spr_player_sword1;
	image_index = 0;
	image_speed = 1.2
	combocount = 1;
	
}

if ((combocount == 1) && (key_attack) && (cancombo == true))
{
	alarm[5] = -1;
	cancombo = false;
	attacking = true;
	sprite_index = spr_player_sword2;
	
	image_index = 0;
	image_speed = 1.2
	combocount = 2;
	
}

if ((combocount == 2) && (key_attack) && (cancombo == true))
{
	alarm[5] = -1;
	attacking = true;
	sprite_index = spr_player_sword3;
	image_index = 0;
	image_speed = 1.2
	combocount = 3;
}
	
	


}
}