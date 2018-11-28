/// @description Insert description here
// You can write your code in this editor
xcreate = camera_get_view_x(view_camera[0]);
ycreate = camera_get_view_y(view_camera[0]);

pal_swap_set(my_pal_sprite,current_pal,false);
    draw_sprite_ext(sprite_index,image_index,xcreate+15,ycreate+15,image_xscale,image_yscale,image_angle,image_blend,image_alpha);
pal_swap_reset();

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

