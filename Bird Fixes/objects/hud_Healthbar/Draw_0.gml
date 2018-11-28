/// @description Insert description here
// You can write your code in this editor

var xcreate, ycreate, healthAt,dashAt,stamAt;
xcreate = camera_get_view_x(view_camera[0]);
ycreate = camera_get_view_y(view_camera[0]);
//healthat = ((obj_Player.hp/obj_Player.maxhp)*(sprite_get_number(spr_HPBar)))
healthAt = obj_Player.hp;
dashAt = obj_Player.dashhp;
//stamAt = ((obj_Player.stamina/obj_Player.maxstamina)*(sprite_get_number(spr_stamMeter)))

//Hp Bar
draw_sprite(spr_HPBar,healthAt,xcreate+15,ycreate+15);

//Dodge Bar
if (global.dodgeUnlocked == true)
{
draw_sprite(spr_dashBar,dashAt,xcreate+15,ycreate+15);
}

