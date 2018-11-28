/*
if (obj_Player.sprite_index == spr_player_sword1)
{
sprite_index = spr_player_sword1S;
}

if (obj_Player.sprite_index == spr_player_sword2)
{
sprite_index = spr_player_sword2S;
}
if (obj_Player.sprite_index == spr_player_sword3)
{
sprite_index = spr_player_sword3S;
}

if (obj_Player.sprite_index == spr_player_sword_wallslide)
{
sprite_index = spr_player_sword_wallslideS;
}

if (obj_Player.sprite_index == spr_player_sword_jumpU)
{
sprite_index = spr_player_sword_jumpUS;
}

if (obj_Player.sprite_index == spr_player_sword_jump)
{
sprite_index = spr_player_sword_jumpS;
}

if (obj_Player.sprite_index == spr_player_sword_jumpD)
{
sprite_index = spr_player_sword_jumpDS;
}
*/




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
			temp = instance_create_layer(x,y,"ObjOverPlayer",obj_swordHit);
			temp.sprite_index = spr_player_sword_wallslideS;
			temp.image_index = 0;
			temp.image_speed = 1.2;
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
			temp = instance_create_layer(x,y,"ObjOverPlayer",obj_swordHit);
			temp.sprite_index = spr_player_sword_jumpUS;
			temp.image_index = 0;
			temp.image_speed = 1.2;
		image_index = 0;
		image_speed = 1.2
	}
	
if (key_down)
	{
		canattack = false;
		attacking = true;
		sprite_index = spr_player_sword_jumpD;
			temp = instance_create_layer(x,y,"ObjOverPlayer",obj_swordHit);
			temp.sprite_index = spr_player_sword_jumpDS;
			temp.image_index = 0;
			temp.image_speed = 1.2;
		image_index = 0;
		image_speed = 1.2
	}
if ((!key_down) && (!key_jump_held))
	{
		canattack = false;
		attacking = true;
		sprite_index = spr_player_sword_jump;
			temp = instance_create_layer(x,y,"ObjOverPlayer",obj_swordHit);
			temp.sprite_index = spr_player_sword_jumpS;
			temp.image_index = 0;
			temp.image_speed = 1.2;
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
		temp = instance_create_layer(x,y,"ObjOverPlayer",obj_swordHit);
		temp.sprite_index = spr_player_sword1S;
		temp.image_index = 0;
		temp.image_speed = 1.2;
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
		temp = instance_create_layer(x,y,"ObjOverPlayer",obj_swordHit);
		temp.sprite_index = spr_player_sword2S;
		temp.image_index = 0;
		temp.image_speed = 1.2;
	
	image_index = 0;
	image_speed = 1.2
	combocount = 2;
	
}

if ((combocount == 2) && (key_attack) && (cancombo == true))
{
	alarm[5] = -1;
	attacking = true;
	sprite_index = spr_player_sword3;
		temp = instance_create_layer(x,y,"ObjOverPlayer",obj_swordHit);
		temp.sprite_index = spr_player_sword3S;
		temp.image_index = 0;
		temp.image_speed = 1.2;
	image_index = 0;
	image_speed = 1.2
	combocount = 3;
}
	
	


}
}