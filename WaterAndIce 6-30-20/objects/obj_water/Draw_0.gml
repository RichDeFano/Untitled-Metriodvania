/// @description Insert description here
// You can write your code in this editor
/*
var _left = bbox_top;
var _top = bbox_top;

draw_self();

var _appScale = surface_get_height(application_surface) / 360;
var _camX = camera_get_view_x(view_camera[0]);
var _camY = camera_get_view_y(view_camera[0]);

	
var waterSurface = surface_create(sprite_width,sprite_height);
surface_set_target(waterSurface);
	
	draw_clear_alpha(c_blue,0);
	draw_surface_part(application_surface,_left,_top,sprite_width,sprite_height,x,y);
	gpu_set_colorwriteenable(true,true,true,false);
	draw_set_alpha(0.5);
	draw_set_color($f4bb41);
	draw_rectangle(0,tBuffHeight,sprite_width,sprite_height+tBuffHeight,false);
	draw_set_color(c_white);
	draw_line(0,tBuffHeight,sprite_width,tBuffHeight);
	draw_set_alpha(1);
	gpu_set_colorwriteenable(true,true,true,true);
surface_reset_target();	
	
	pW = texture_get_texel_width(surface_get_texture(waterSurface));
	pH = texture_get_texel_height(surface_get_texture(waterSurface));

var resizeSurface = surface_create(sprite_width,sprite_height+tBuffHeight);
surface_set_target(resizeSurface);
	draw_clear_alpha(c_white,0);
	shader_set(shd_wave);
		shader_set_uniform_f(u_pixelW,pW);
		shader_set_uniform_f(u_pixelH,pH);
		shader_set_uniform_f(u_springCount, springCount);
		shader_set_uniform_f_array(u_springs,springs);
		shader_set_uniform_f(u_time,get_timer()*0.0000025);
	draw_surface(waterSurface,0,0);
	shader_reset();
	surface_reset_target();
draw_surface(resizeSurface,_left,_top-tBuffHeight);
	
	surface_free(waterSurface);
		surface_free(resizeSurface);
		*/