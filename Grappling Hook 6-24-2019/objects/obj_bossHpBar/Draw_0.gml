/// @description Insert description here
// You can write your code in this editor
xcreate = camera_get_view_x(view_camera[0]);
ycreate = camera_get_view_y(view_camera[0]);
var nearestBoss = instance_nearest(x,y,obj_bossParent);

if (instance_exists(nearestBoss))
{
healthPercent = obj_bossParent.maxHP - obj_bossParent.hp;
//draw_self();
draw_sprite_ext(sprite_index,0,xcreate+600,ycreate+20,image_xscale,image_yscale,image_angle,image_blend,image_alpha);
draw_sprite_ext(spr_bossHPTicks,0 + healthPercent,xcreate+600,ycreate+20,image_xscale,image_yscale,image_angle,image_blend,image_alpha);
}
else
{
	instance_destroy();
}