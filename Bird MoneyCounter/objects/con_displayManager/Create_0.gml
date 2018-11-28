/// @description Insert description here
// You can write your code in this editor
///Display Properties
pal_swap_init_system(shd_pal_swapper);



ideal_width=0;
ideal_height=432/1.1;
zoom=1;
max_zooom=1;



aspect_ratio=display_get_width()/display_get_height();

ideal_width=round(ideal_height*aspect_ratio);
//ideal_height=round(ideal_width / aspect_ratio);

//Perfect Pixel Scaling
if(display_get_width() mod ideal_width != 0)
{
  var d = round(display_get_width()/ideal_width);
  ideal_width=display_get_width()/d;
}
if(display_get_height() mod ideal_height != 0)
{
  var d = round(display_get_height()/ideal_height);
  ideal_height=display_get_height()/d;
}

//Check for odd numbers
if(ideal_width & 1)
  ideal_width++;
if(ideal_height & 1)
  ideal_height++;
    
//Calculate Max Zoom
max_zoom=floor(display_get_width()/ideal_width);  
  

surface_resize(application_surface,ideal_width,ideal_height);
//display_set_gui_size(ideal_width,ideal_height);
window_set_size(ideal_width,ideal_height);
alarm[0]=1; //Sorry.  This li
global.view_x = 0;
global.view_y = 0;
global.view_w = ideal_width;
global.view_h = ideal_height;

camera = camera_create();

room_goto_next();
