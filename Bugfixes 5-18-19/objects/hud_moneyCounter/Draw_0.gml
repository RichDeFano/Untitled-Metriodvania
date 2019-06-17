var xcreate, ycreate;
xcreate = camera_get_view_x(view_camera[0]);
ycreate = camera_get_view_y(view_camera[0]);


draw_sprite_ext(spr_seedCounter,0,xcreate+49,ycreate+55,1,1,0,-1,image_alpha);
//draw_set_font(global.FontSmall)
draw_text(xcreate+62,ycreate+60,global.money);
//draw_set_font(global.Font);


//xcreate+62,ycreate+60