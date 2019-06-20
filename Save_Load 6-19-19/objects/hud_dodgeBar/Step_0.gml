/// @description Insert description here
// You can write your code in this editor
/// @description Insert description here
// You can write your code in this editor
scr_hpbarPalette();


if (instance_exists(obj_Player))
{
healthAt = obj_Player.hp;
dashAt = obj_Player.dashhp;
}


image_index = dashAt;
//x = xcreate+15;
//y = ycreate+15;

/*//Dodge Bar
if (global.dodgeUnlocked == true)
{
draw_sprite(spr_dashBar,dashAt,xcreate+15,ycreate+15);
}






