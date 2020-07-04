/// @description Insert description here
// You can write your code in this editor
if (global.pause == false)
{
xcreate = camera_get_view_x(view_camera[0]);
ycreate = camera_get_view_y(view_camera[0]);

pal_swap_set(my_pal_sprite,current_pal,false);
    draw_sprite_ext(sprite_index,image_index,xcreate+15,ycreate+15,image_xscale,image_yscale,image_angle,image_blend,image_alpha);
pal_swap_reset();

if (global.statusBurning == true)
{
	draw_sprite(spr_burningHUD,0,xcreate+15+44,ycreate+15+28-5);
}

if (global.statusPoison == true)
{
	draw_sprite(spr_poisonHUD,0,xcreate+15+52,ycreate+15+28-5);
}

if (global.statusDazed == true)
{
	draw_sprite(spr_dazedHUD,0,xcreate+15+60,ycreate+15+28-5);
}

if (global.statusCursed == true)
{
	draw_sprite(spr_cursedHUD,0,xcreate+15+68,ycreate+15+28-5);
}

if (global.statusFrozen == true)
{
	draw_sprite(spr_frozenHUD,0,xcreate+19+44,ycreate+8+28-5);
}

if (global.statusSlowed == true)
{
	draw_sprite(spr_slowedHUD,0,xcreate+19+52,ycreate+8+28-5);
}

if (global.showZone == true)
{
	var tempWidth = string_width(global.zone);
	var i;
	draw_sprite(spr_zoneTextPortraitL,0,xcreate+15,ycreate+100);
	for (i=10;i<tempWidth;i+=10)
	{
		draw_sprite(spr_zoneTextPortraitM,0,xcreate+15+i,ycreate+100)
	}
	draw_sprite(spr_zoneTextPortraitR,0,xcreate+15+i,ycreate+100);
	draw_text(xcreate+21,ycreate+103,global.zone);
	if (!alarm[0])
	{alarm[0] = 100;}
}
}

/*
var xcreate, ycreate, healthAt,dashAt,stamAt;
xcreate = camera_get_view_x(view_camera[0]);
ycreate = camera_get_view_y(view_camera[0]);
//healthat = ((obj_Player.hp/obj_Player.maxhp)*(sprite_get_number(spr_HPBar)))
healthAt = obj_Player.hp;
dashAt = obj_Player.dashhp;
//stamAt = ((obj_Player.stamina/obj_Player.maxstamina)*(sprite_get_number(spr_stamMeter)))

//Hp Bar
//draw_sprite(spr_HPBar,healthAt,xcreate+15,ycreate+15);

//Dodge Bar
if (global.dodgeUnlocked == true)
{
draw_sprite(spr_dashBar,dashAt,xcreate+15,ycreate+15);
}

