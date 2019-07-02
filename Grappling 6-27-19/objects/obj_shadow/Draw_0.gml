/// @description Insert description here
// You can write your code in this editor
if (shadowSetup = false)
{
	draw_sprite_ext(spr_mask_parent_stand,0,x,y,1,1,1,c_red,image_alpha);
}
else
{
	draw_sprite_ext(obj_Player.sprite_index,obj_Player.image_index,x,y,obj_Player.image_xscale,1,1,c_gray,image_alpha);
}