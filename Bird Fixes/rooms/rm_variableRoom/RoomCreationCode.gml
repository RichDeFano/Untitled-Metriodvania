///application_surface_draw_enable(false);
window_set_fullscreen(true);
scr_globalVariables();

scr_checkGamepad();
scr_AllKeysDefault();
global.view_x = 0;
global.view_y = 0;
global.view_w = 640;
global.view_h = 480;
window_set_fullscreen(false);

room_goto_next();
