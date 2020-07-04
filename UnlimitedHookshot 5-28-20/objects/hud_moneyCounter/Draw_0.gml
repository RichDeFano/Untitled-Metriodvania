var xcreate, ycreate;
xcreate = camera_get_view_x(view_camera[0]);
ycreate = camera_get_view_y(view_camera[0]);

if ((alph > 0))
{
draw_sprite_ext(spr_seedCounter,0,xcreate+52,ycreate+42,1,1,0,-1,alph);
draw_set_font(global.FontSmall)
draw_text_color(xcreate+64,ycreate+48,global.money,c_white,c_white,c_white,c_white,alph);
draw_set_font(global.Font);
}


//xcreate+62,ycreate+60