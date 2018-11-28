var xcreate, ycreate, xcreate2, ycreate2,sizeOfText,boxW,boxH;
xcreate = camera_get_view_x(view_camera[0]);
ycreate = camera_get_view_y(view_camera[0]);
xcreate2 = camera_get_view_width(view_camera[0]);
ycreate2 = camera_get_view_height(view_camera[0]);
boxW = (sprite_get_width(spr_cursorText));
boxH = (sprite_get_height(spr_cursorText));

//////////////////////////////////////
if (name == "Upgrade") 
	{
		draw_sprite(spr_box,1,xcreate+(xcreate2-boxWidth),ycreate);
		}
else if (name == "????")
	{
		draw_sprite(spr_box,2,xcreate+(xcreate2-boxWidth),ycreate);
		}
else if (name == "???? ")
	{
		draw_sprite(spr_box,3,xcreate+(xcreate2-boxWidth),ycreate);
		}
else 
	{
		draw_sprite(spr_box,0,xcreate+(xcreate2-boxWidth),ycreate);
		}