/// @description Insert description here
// You can write your code in this editor
var holoIndex = 0;
if (shadowSetup = false)
{
	draw_sprite_ext(spr_hologramMaker,0,x,y-tempY,1,1,1,image_blend,image_alpha);
}
else
{
	alarm[2] = -1;
	if (!instance_exists(obj_createzeroOnes))
	{
	temp = instance_create_layer(x,y,"ObjOverPlayer",obj_createzeroOnes);
	temp.owner = self;
	}
	draw_sprite_ext(spr_hologramMaker,holoIndex,x-2,y+14,1,1,1,image_blend,image_alpha);
	draw_sprite_ext(spr_hologramMaker,4,x-2,y+14,1,1,1,image_blend,image_alpha);
	draw_sprite_ext(obj_Player.sprite_index,obj_Player.image_index,x,y-2,obj_Player.image_xscale,1,0,c_gray,image_alpha);
}