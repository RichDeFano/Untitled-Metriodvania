/// @description Insert description here
// You can write your code in this editor
/// @description Insert description here
// You can write your code in this editor
scr_hpbarPalette();

xcreate = camera_get_view_x(view_camera[0]);
ycreate = camera_get_view_y(view_camera[0]);
if (instance_exists(obj_Player))
{
healthAt = obj_Player.hp;
dashAt = obj_Player.dashhp;
}


image_index = healthAt;
//x = xcreate+15;
//y = ycreate+15;

/*//Dodge Bar
if (global.dodgeUnlocked == true)
{
draw_sprite(spr_dashBar,dashAt,xcreate+15,ycreate+15);
}




