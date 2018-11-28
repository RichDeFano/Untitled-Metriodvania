/// @description Insert description here
// You can write your code in this editor
if (global.roomdark == true)
{
gpu_set_blendmode(bm_subtract);
draw_surface_tiled(global.light,global.view_x,global.view_y);
gpu_set_blendmode(bm_normal);
}

