/// @description Insert description here
// You can write your code in this editor
xcreate = camera_get_view_x(view_camera[0]);
ycreate = camera_get_view_y(view_camera[0]);

pal_swap_set(my_pal_sprite,current_pal,false);
    draw_sprite_ext(sprite_index,image_index,xcreate+15,ycreate+15,image_xscale,image_yscale,image_angle,image_blend,image_alpha);
pal_swap_reset();
