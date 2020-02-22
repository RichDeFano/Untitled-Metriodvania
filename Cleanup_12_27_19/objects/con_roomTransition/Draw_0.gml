/// @description Insert description here
// You can write your code in this editor
if (global.teleporting == false)
{
var xcreate, ycreate, xcreate2, ycreate2;
xcreate = camera_get_view_x(view_camera[0]);
ycreate = camera_get_view_y(view_camera[0]);
xcreate2 = camera_get_view_width(view_camera[0]);
ycreate2 = camera_get_view_height(view_camera[0]);


	room_goto(tempTarget);
	///
	obj_Player.x = tempX;
	obj_Player.y = tempY;
	obj_Player.grav = global.tempGrav;
	global.tempGrav = 0.2;
	fadeState = -1;
	instance_destroy();
	
}
	/*
fadeAlpha = clamp(fadeAlpha+(fadeState*fadeSpeed),0,1);
if (fadeAlpha == 1)
{
	
}

if (fadeAlpha == 0) && (fadeState == -1)
{
	instance_destroy();
	//global.mapMoving = false
}

//draw_set_color(c_black);
//image_alpha = fadeAlpha
draw_sprite_tiled_ext(spr_roomTrans,0,xcreate,ycreate,1,1,-1,fadeAlpha);
//draw_set_alpha(1);
}

