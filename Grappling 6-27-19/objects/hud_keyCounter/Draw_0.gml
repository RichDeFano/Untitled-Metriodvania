var xcreate, ycreate;
xcreate = camera_get_view_x(view_camera[0]);
ycreate = camera_get_view_y(view_camera[0]);

var keyAmt = scr_getKeyAmount();
if (keyAmt > 0)
{
draw_sprite_ext(spr_keyCounter,0,xcreate+52,ycreate+57,1,1,0,-1,image_alpha);
draw_set_font(global.FontSmall)

draw_text(xcreate+64,ycreate+67,string(keyAmt));
draw_set_font(global.Font);
}


//xcreate+62,ycreate+60