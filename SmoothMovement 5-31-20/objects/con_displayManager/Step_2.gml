/// @description Insert description here
// You can write your code in this editor
camera_set_view_size(view_camera[0],global.view_w,global.view_h);
var _round = global.view_w/surface_get_width(application_surface);
camera_set_view_pos(view_camera[0],scr_round_n(global.view_x,_round),scr_round_n(global.view_y,_round));


if (instance_exists(obj_Player))
{
//Follow Player
global.view_x = obj_Player.x - global.view_w/2;
global.view_y = obj_Player.y - global.view_h/2;
}

global.view_x = clamp(global.view_x,0,room_width-global.view_w);
global.view_y = clamp(global.view_y,0,room_height-global.view_h);
