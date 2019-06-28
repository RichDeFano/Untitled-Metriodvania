/// @description Insert description here
// You can write your code in this editor

var xcreate, ycreate, xcreate2, ycreate2;
xcreate = camera_get_view_x(view_camera[0]);
ycreate = camera_get_view_y(view_camera[0]);
xcreate2 = camera_get_view_width(view_camera[0]);
ycreate2 = camera_get_view_height(view_camera[0]);


fadeAlpha = clamp(fadeAlpha+(fadeState*fadeSpeed),0,1);
if (fadeAlpha == 1)
{
	fadeState = -1;
}

if (fadeAlpha == 0) && (fadeState == -1)
{
	obj_Player.move_lock = false;
	instance_destroy();
}

if (fadeAlpha > 0)
{
	obj_Player.move_lock = true;
}

draw_sprite_tiled_ext(spr_roomTransWarp,0,xcreate,ycreate,1,1,-1,fadeAlpha);
//obj_Player.move = 0;

/*draw_set_color(c_purple);
if (canFade == true)
	{
	draw_set_alpha(fadeAlpha);
	}

draw_rectangle(xcreate,ycreate,xcreate+xcreate2,ycreate+ycreate2,0);
draw_set_alpha(1);
