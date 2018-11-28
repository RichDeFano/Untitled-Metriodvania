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

