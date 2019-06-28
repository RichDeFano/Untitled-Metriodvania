/// @description Insert description here
// You can write your code in this editor
if (global.weatherRaining == true)
{draw_sprite_tiled(spr_rain,imgspd,0,0);}

if (global.weatherSnowing == true)
{
	draw_sprite_tiled(spr_snow,imgspd,0,0);
}

if (global.weatherSnowingHard == true)
{
	draw_sprite_tiled(spr_snowFog,imgspd,0,0);
	draw_sprite_tiled(spr_snow,imgspd,0,0);
	draw_sprite_tiled(spr_snow,imgspd,15,15);
}

if (global.weatherRainingHard == true)
{
	draw_sprite_tiled(spr_rain,imgspd,0,0);
	draw_sprite_tiled(spr_rainFog,imgspd,0,0);
}
