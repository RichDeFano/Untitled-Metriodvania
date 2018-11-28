/// @description Insert description here
// You can write your code in this editor

var xcreate, ycreate, healthat;
xcreate = camera_get_view_x(view_camera[0]);
ycreate = camera_get_view_y(view_camera[0]);
//healthat = ((obj_Player.hp/obj_Player.maxhp)*(sprite_get_number(spr_HPBar)))
healthat = obj_Player.hp;
draw_sprite(spr_HPBar,healthat,xcreate+15,ycreate+15);