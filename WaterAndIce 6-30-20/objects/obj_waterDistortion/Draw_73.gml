
//-----------------------------------------------------------------------------
// GET ALWAYS NEEDED VARS:
//-----------------------------------------------------------------------------
var view_y			= camera_get_view_y(view_camera[0]);
var view_x			= camera_get_view_x(view_camera[0]);
var app_h			= surface_get_height(application_surface);

//-----------------------------------------------------------------------------
// DRAW WATER IF IN VIEW:
//-----------------------------------------------------------------------------
if (y < (view_y + app_h)) {
	// get distortion variables:
	//-------------------------------------------------------------------------
	water_shift_R		+= 0.65 * 2 - 1; //slider_get_value(1) * 2 - 1; 
	water_shift_G		+= 0.30 * 2 - 1;//slider_get_value(2) * 2 - 1;
	water_shift_B		+= 0.55 * 2 - 1;	//slider_get_value(3) * 0.5 - 0.25;
	var strength_x		= 0.08 * 2;		// > 0.3, faster for moving water
	var strength_y		= 0.55 * 2;		// > 0.3, faster for moving water
	var pattern_w		= 0.50 * sprite_get_width(sprite_distort)  * 2;	 //max(0.001, slider_get_value(6)) * sprite_get_width(sprite_distort)  * 2;		// mustn't be <= 0
	var pattern_h		= 0.80 * sprite_get_height(sprite_distort) * 0.25;//max(0.001, slider_get_value(7)) * sprite_get_height(sprite_distort) * 0.25;	// mustn't be <= 0

	// get colour variables:
	//-------------------------------------------------------------------------
	var blend_col		= make_color_hsv(0.56  * 255,0.62  * 255, 0.95 * 255);
	var water_col		= make_color_hsv(0.57 * 255, 0.50 * 255, 0.20 * 255);
	//water darkness?
	var col_mix_0		= 0.00//0.24;//slider_get_value(14) - 0.5; //-0.5 to 0.5 lower than second, dont overlap. upper end should be around 0.2
	//water lightness?
	var col_mix_1		= 0.90;//0.71;//slider_get_value(15) + 0.5;	// 0.5 to 1.5  lower end shouild be around 0.8
	
	var brightness		= 0.50;//slider_get_value(16) * 2 - 1;
	var saturation		= 0.25;//slider_get_value(17) * 4;
	var contrast		= 0.25; //slider_get_value(18) * 4;
	
	// get dimension variables:
	//-------------------------------------------------------------------------
	
	var water_y_scale	= 0.75;	//0.10 -> 0.50?
	var water_level		= y - view_y;
	var srf_water_w		= surface_get_width(application_surface);
	var srf_water_h		= max(1, app_h - water_level); // mustn't be <= 0
	var reflection_h	= min(srf_water_h / water_y_scale, water_level) - 2; // -2 so we always got 2 pixels rows of water colour at the bottom
	
	var srf_scale = 0.66;
	/*
	switch (toggle_get_group_active(2)) {
		case 1:		srf_scale = 0.75; break;
		case 2:		srf_scale = 0.66; break;
		case 3:		srf_scale = 0.50; break;
		case 4:		srf_scale = 0.33; break;
		default:	srf_scale = 1; break;
	}

			*/
	// get test/debug variables:
	//-------------------------------------------------------------------------
	var	show_result		= 0.0;
	var blend_mode		= 0.0;
	var alph = 0.25;
	// prepare GPU & surface:
	//-------------------------------------------------------------------------
	gpu_set_tex_filter(true);

	if (!surface_exists(srf_water)) srf_water = surface_create(ceil(srf_water_w * srf_scale), ceil(srf_water_h * srf_scale));
	else surface_resize(srf_water, ceil(srf_water_w * srf_scale), ceil(srf_water_h * srf_scale));
	
	
	// draw reflections, water line & flotsam reflections to surface:
	// optimization: flotsam reflectioons should actually only draw when in view
	//-------------------------------------------------------------------------
	surface_set_target(srf_water);
		draw_clear_alpha(water_col, 1);
		draw_surface_part_ext(	application_surface, 0, water_level,
								srf_water_w, -reflection_h, 0, 0,
								srf_scale, -water_y_scale * srf_scale,
								c_white, 1);
		
		//gpu_set_colorwriteenable(true, true, true, false); // not that important but use this if you notice the water surface looses alpha
		draw_sprite_stretched(spr_waterLine, 0, 0, 0, srf_water_w, 0.80);
		//gpu_set_colorwriteenable(true, true, true, true);
		
		/*
		if (show_ducks)
			with (obj_water_side_duck)
				draw_sprite_ext(sprite_index, 0,
								srf_scale * (x - view_x),
								srf_scale * (y - view_y - water_level),
								srf_scale, -srf_scale, 0, c_white, 1);
								*/
	surface_reset_target();
	
	
	// draw surface back to aplication:
	//-------------------------------------------------------------------------
	shader_set(shader);
		shader_set_uniform_f(u_water_shift_RGB,		water_shift_R, water_shift_G, water_shift_B);
		shader_set_uniform_f(u_distort_strength,	strength_x, strength_y);			// could be turned into a constant
		shader_set_uniform_f(u_pattern_size,		pattern_w, pattern_h);				// could be turned into a constant
		shader_set_uniform_f(u_water_col,			color_get_red(water_col)/255, color_get_green(water_col)/255, color_get_blue(water_col)/255); // could be turned into a constant
		shader_set_uniform_f(u_col_mix,				col_mix_0, col_mix_1);				// could be turned into a constant
		shader_set_uniform_f(u_brt_sat_con,			brightness, saturation, contrast);	// could be turned into a constant
		shader_set_uniform_f(u_blend_mode,			blend_mode);						// for testing only
		shader_set_uniform_f(u_show_result,			show_result);						// for debugging only
		texture_set_stage(u_distort_tex,			distort_tex);
		
		draw_surface_ext(srf_water, view_x, y, 1 / srf_scale, 1 / srf_scale, 0, blend_col, 1);
	shader_reset();
	
	
	// reset GPU:
	//-------------------------------------------------------------------------
	gpu_set_tex_filter(false);
	
	
	// draw flotsam:
	// optimization: should actually only draw when in view
	//-------------------------------------------------------------------------
	/*
	if (show_ducks) with (obj_water_side_duck) draw_self();
	
	
	// debug:
	//-------------------------------------------------------------------------
	draw_circle_colour(view_x + 10, view_y + 10, 8, water_col, water_col, false);
	draw_circle_colour(view_x + 28, view_y + 10, 8, blend_col, blend_col, false);
	draw_circle(	   view_x + 10, view_y + 10, 8, true);
	draw_circle(	   view_x + 28, view_y + 10, 8, true);
} else {
	// debug:
	//-------------------------------------------------------------------------
	draw_circle(view_x + 10, view_y + 10, 8, false);
	draw_circle(view_x + 28, view_y + 10, 8, false);
	draw_circle(view_x + 10, view_y + 10, 8, true);
	draw_circle(view_x + 28, view_y + 10, 8, true);
	*/
}

