/// @description Insert description here
// You can write your code in this editor
///Draw With Unlimited Palette Swap     
//draw_self();

scr_draw_hookshot();

//draw_sprite(spr_mask_parent_stand,0,x,y);

if (state != pState.swing)
{ 
	image_angle = 0;
	if (glowYellow == true)
	{
	pal_swap_set(my_pal_sprite,current_pal,false);
		 draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,image_angle,c_yellow,image_alpha);
	pal_swap_reset();
	}
	else
	{
	pal_swap_set(my_pal_sprite,current_pal,false);
		 draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,image_angle,image_blend,image_alpha);
	pal_swap_reset();
	}
	//draw_sprite_ext(spr_mask_parent_stand,0,x,y,1,1,image_angle,image_blend,image_alpha);
}

else
{
	image_angle = ropeAngle-270;
	pal_swap_set(my_pal_sprite,current_pal,false);
	draw_sprite_ext(spr_mask_parent_stand,0,x,y,1,1,image_angle,image_blend,image_alpha);
	if (!instance_exists(obj_ropeMask))
	{instance_create_layer(x,y,"Text",obj_ropeMask);}
	draw_sprite_ext(spr_player_swing,image_index,x,y,image_xscale,image_yscale,image_angle,c_blue,image_alpha);
	pal_swap_reset();
}


if (state == pState.swing)
{	
	
	//if (instance_exists(obj_movingHeadMask))
	//{draw_line_width(obj_movingHeadMask.x,obj_movingHeadMask.y,ropeX,ropeY,2);}
	count = ropeLength/8;
	xx = -lengthdir_x(8, ropeAngle);
	yy = -lengthdir_y(8, ropeAngle);
	if (startDrawingHook == true)
	{
	for(var i=1; i<count; i++)
	{
	    draw_sprite_ext(spr_hookChain, 0, x + xx * i, y + yy * i, 1, 1, ropeAngle+90, c_yellow, 1);
		draw_sprite_ext(spr_hookEnd, 0, x + xx * count, y + yy * count, 1, 1, ropeAngle+90, c_yellow, 1);
	}
	}
}



/*
if ((image_angle > 65) && (image_angle < 90))
{
	if (place_meeting(x,y+5,obj_wall))
	{
		hsStuckInWall = true;
	}
}
else
{
	if (alarm[11] <= 0)
	{alarm[11] = 15;}
	//glowYellow = false;
}

draw_text(x,y,string(image_angle));