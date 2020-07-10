/// @description Init
event_inherited();

//-----------------------------------------------------------------------------
#region SPRITE & SHADER (mandatory):
//-----------------------------------------------------------------------------
sprite_distort		= spr_waterDistortion;

shader				= shd_water;
u_distort_tex		= shader_get_sampler_index(shader, "distort_tex");
u_water_shift_RGB	= shader_get_uniform(shader, "water_shift_RGB");
u_distort_strength	= shader_get_uniform(shader, "distort_strength");	// could be turned into a constant
u_pattern_size		= shader_get_uniform(shader, "pattern_size");		// could be turned into a constant
u_water_col			= shader_get_uniform(shader, "water_col");			// could be turned into a constant
u_col_mix			= shader_get_uniform(shader, "col_mix");			// could be turned into a constant
u_brt_sat_con		= shader_get_uniform(shader, "brt_sat_con");		// could be turned into a constant

//u_blend_mode		= shader_get_uniform(shader, "blend_mode");			// for testing only
u_show_result		= shader_get_uniform(shader, "show_result");		// for debugging only

u_pixelH = shader_get_uniform(shader, "pixelH");
u_pixelW = shader_get_uniform(shader, "pixelW");
u_springs = shader_get_uniform(shader, "springs");
u_time = shader_get_uniform(shader, "time");
u_springCount = shader_get_uniform(shader, "springCount");

distort_tex			= sprite_get_texture(sprite_distort, 0);
water_shift_R		= 0;
water_shift_G		= 0;
water_shift_B		= 0;
srf_water			= -1;
#endregion
//-----------------------------------------------------------------------------

//Water Wave
springCount = ceil(sprite_width/8);
springs[springCount] = 0;
springsVelocity[springCount] = 0;
springDeltaL[springCount] = 0;
springDeltaR[springCount] = 0;
k = 0.035;
d = 0.025;
spread = 0.45;