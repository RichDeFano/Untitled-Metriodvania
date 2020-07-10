if (global.inText == true)
	{image_speed = 0;}
if ((image_speed == 0) && (global.inText == false))
{
	if (attacking == true)
	{image_speed = 1.2;}
}

if ((dying == true) && (collision_circle(x,y,5,obj_wall,0,1)))
{
	alarm[1] = -1
	alarm[2] = -1
	hspeed = 0;
	vspeed = 0;
}

if (sprite_index == spr_player_dash)
	{mask_index = spr_mask_parent_crawl;}
else
	{mask_index = spr_mask_parent_stand;}
	
if (distance_to_object(obj_save) < 10)
{ 
	if (key_dash)
	{
	obj_Player.hp = obj_Player.maxhp;
	scr_SaveGame();
	}
}

if (instance_exists(obj_npcParent))
{
	var closestNPC = instance_nearest(x,y,obj_npcParent)
	if ((jumps == jumpsmax) && (attacking == false) && (dashing == false) )
	{
		if (closestNPC.thisDraw == true)
			{global.canInteract = true;}
	}
		else
			{global.canInteract = false;}
}


if (global.lightDarkUnlocked == false) && (global.atShrine == false)
{
	if (((global.armorDarkUnlocked == true) && (global.armorLightUnlocked == true)) 
		|| ((global.swordDarkUnlocked == true) && (global.swordLightUnlocked == true)) 
		|| ((global.dodgeDarkUnlocked == true) && (global.dodgeLightUnlocked == true)))
	{
		global.statusCursed = true;
		global.statusDazed = true;
		global.statusSlowed = true;
	}
}


if ((global.swordLightUnlocked == true)
&& (global.swordDarkUnlocked == true)
&& (global.armorLightUnlocked == true)
&& (global.armorDarkUnlocked == true)
&& (global.dodgeLightUnlocked == true)
&& (global.dodgeDarkUnlocked == true)
&& (global.tomesGotten == 10)
&& (global.atShrine == false))
{
	global.lightDarkUnlocked = true
	global.statusCursed = false;
	global.statusDazed = false;
	global.statusSlowed = false;
}

/*
if (place_meeting(x,y,obj_hotSpringWater))
{global.inHotSpring = true;}
else
{global.inHotSpring = false;}




if ((global.inHotSpring == true) && (obj_PlayerAlarms.alarm[5] <= 0))
{obj_PlayerAlarms.alarm[5] = 80;}
*/


if (x = 99999)
	{x = room_width - 20;}
if (y = 99999)
	{y = room_height - 20;} 

if (place_meeting(x,y,obj_shrineSign))
{
	scr_countUpgrades();
	global.canInteractShrine = true;
	if ((key_attack) && (global.atShrine == false) && (jumps == jumpsmax) && (attacking == false) && (dashing == false) )
	{
		obj_PlayerStatusAlarms.alarm[9] = 2;
	}

	if (global.atShrine == true) 
	{
		if (key_dash)
		{
			obj_PlayerStatusAlarms.alarm[8] = 2;
		}
	}
}
else
{
	global.canInteractShrine = false;
}


if (instance_exists(obj_save))
{
	if ((canSave == false) && (distance_to_object(obj_save) > 75))
	{canSave = true;}
}
else
{
	canSave = true;
}

if (place_meeting(x,y,obj_zoneTeleporter))
{
	global.canInteractTeleport = true;
	if ((key_attack) && (jumps == jumpsmax) && (attacking == false) && (dashing == false) )
		{
		scr_newRoomTransition();
		}
}

else
{
	global.canInteractTeleport = false;
}

/////Terrain Conditions
if ((place_meeting(x+1,y,obj_wall)) || (place_meeting(x-1,y,obj_wall)))
{
	if !((place_meeting(x+1,y,obj_noSlideWall)) || (place_meeting(x-1,y,obj_noSlideWall)))
	{playerCanWJ = true;}
	else
	{playerCanWJ = false;}
	
}


if (((place_meeting(x+1,y,obj_icyWall)) || (place_meeting(x-1,y,obj_icyWall))) || ((place_meeting(x,y+1,obj_icyWall))))
{
	if (playerOnIce == false)
	{
	playerOnIce = true;
		if (move < 0)
		{
		 frict = -(movespeed-0.5);
		}
		else if (move > 0)
		{
			frict = movespeed-0.5;
		}
		else
		{frict = 0;}
	}
		
	//glowYellow = true;	
}
else
{
	playerOnIce = false;
	//glowYellow = false;	
}


if (place_meeting(x,y,obj_water))
{
	playerInWater = true;
}
else
{
	playerInWater = false;
}

if (place_meeting(x,y,obj_waterStream))
{
	playerWaterStream = true;
	//could pass direction/speed here
}
else
{
	playerWaterStream = false;
}