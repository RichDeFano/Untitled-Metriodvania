/// @description Insert description here
// You can write your code in this editor
var offset = 8;
if (global.roomdark == true)
{
size = randSize;
gpu_set_blendmode(bm_subtract);
surface_set_target(global.light);
draw_ellipse_color((x-size/2 - global.view_x)+offset,(y-size/2-global.view_y)+offset,(x+size/2 - global.view_x)+offset,(y+size/2-global.view_y)+offset,thisColor,c_black,false)
surface_reset_target();
gpu_set_blendmode(bm_normal);
}

