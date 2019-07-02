var xcreate = camera_get_view_x(view_camera[0]);
var ycreate = camera_get_view_y(view_camera[0]);

draw_sprite(spr_zoneTextPortrait,0,xcreate+15+122,ycreate+15+100);
draw_text(xcreate+15+122,ycreate+15+100,global.zone);