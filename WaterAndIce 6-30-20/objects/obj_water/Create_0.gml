/// @description Insert description here
// You can write your code in this editor

shader				= shd_wave;
u_pixelH = shader_get_uniform(shader, "pixelH");
u_pixelW = shader_get_uniform(shader, "pixelW");
u_springs = shader_get_uniform(shader, "springs");
u_time = shader_get_uniform(shader, "time");
u_springCount = shader_get_uniform(shader, "springCount");

tBuffHeight = 32;
//-----------------------------------------------------------------------------

//Water Wave
springCount = ceil(sprite_width/8);
springs[springCount] = 0;
springsVelocity[springCount] = 0;
springDeltaL[springCount] = 0;
springDeltaR[springCount] = 0;
k = 0.035;
d = 0.025;
spread = 0.25;