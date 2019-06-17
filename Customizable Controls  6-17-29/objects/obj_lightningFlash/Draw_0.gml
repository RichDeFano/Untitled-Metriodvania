/// @description Insert description here
// You can write your code in this editor
var xcreate, ycreate, xcreate2, ycreate2;
xcreate = camera_get_view_x(view_camera[0]);
ycreate = camera_get_view_y(view_camera[0]);
xcreate2 = camera_get_view_width(view_camera[0]);
ycreate2 = camera_get_view_height(view_camera[0]);


draw_sprite_ext(spr_lightningFlash,0,xcreate,ycreate,10,10,0,c_white,alph);