/// @description Insert description here
// You can write your code in this editor
if (global.roomdark == true)
{
size = 128;
gpu_set_blendmode(bm_subtract);
surface_set_target(global.light);
draw_ellipse_color((x-size/2 - global.view_x),(y-size/2-global.view_y),(x+size/2 - global.view_x),(y+size/2-global.view_y),c_orange,c_black,false)
surface_reset_target();
gpu_set_blendmode(bm_normal);
}

