/// @description Insert description here
// You can write your code in this editor
var holoIndex = 0;
/*
var degrees = collision_normal(x,y+30,obj_slope);
if (degrees == -1)
	{degrees = 0;}
else
{
degrees = degrees - 90;
draw_text(250,250,degrees);
}
*/
	
if (shadowSetup = false)
{
	draw_sprite_ext(spr_hologramMaker,0,x-6,y+28,1,1,image_angle,image_blend,image_alpha);
}
else
{
	alarm[2] = -1;
	if (!instance_exists(obj_createzeroOnes))
	{
	temp = instance_create_layer(x,y,"ObjOverPlayer",obj_createzeroOnes);
	temp.owner = self;
	}
	//draw_sprite_ext(spr_hologramMaker,0,x,y-tempY,1,1,image_angle,image_blend,image_alpha);
	draw_sprite_ext(spr_hologramMaker,holoIndex,x-6,y+28,1,1,image_angle,image_blend,image_alpha);
	draw_sprite_ext(spr_hologramMaker,4,x-2,y+14,1,1,image_angle,image_blend,image_alpha);
	draw_sprite_ext(obj_Player.sprite_index,obj_Player.image_index,x,y,obj_Player.image_xscale,1,image_angle,c_gray,image_alpha);
}