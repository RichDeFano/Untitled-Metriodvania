/// @description Insert description here
// You can write your code in this editor
if (instance_exists(obj_Player))
{
	if (((obj_Player.bbox_bottom) > y) || (obj_Player.key_down))
	{mask_index = -1;}
	else
	{mask_index = spr_wallJT}
}