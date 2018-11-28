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

if (instance_exists(obj_npcParent))
{
	var closestNPC = instance_nearest(x,y,obj_npcParent)
	if ((jumps == jumpsmax) && (attacking == false))
	{
		if (closestNPC.thisDraw == true)
			{global.canInteract = true;}
	}
		else
			{global.canInteract = false;}
}

if ((place_meeting(x+1,y,obj_wall)) || (place_meeting(x-1,y,obj_wall)))
{
	if !((place_meeting(x+1,y,obj_noSlideWall)) || (place_meeting(x-1,y,obj_noSlideWall)))
	{playerCanWJ = true;}
	else
	{playerCanWJ = false;}
}

if (place_meeting(x,y,obj_hotSpringWater))
{global.inHotSpring = true;}
else
{global.inHotSpring = false;}


if ((global.inHotSpring == true) && (obj_PlayerAlarms.alarm[5] <= 0))
{obj_PlayerAlarms.alarm[5] = 80;}

if (x = 99999)
	{x = room_width - 20;}
if (y = 99999)
	{y = room_height - 20;} 
