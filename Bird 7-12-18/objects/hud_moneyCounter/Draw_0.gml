var xcreate, ycreate, healthAt,dashAt,stamAt;
xcreate = camera_get_view_x(view_camera[0]);
ycreate = camera_get_view_y(view_camera[0]);

                                                                                                                                                                                                                                                                                                                                                                                                                                                                     draw_sprite(spr_seedCounter,0,xcreate+55,ycreate+60);
draw_set_font(global.FontSmall)
draw_set_alpha(1);
draw_text(xcreate+75,ycreate+55,global.money);
draw_set_font(global.Font);