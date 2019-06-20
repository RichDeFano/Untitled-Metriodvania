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
		draw_text_colour(74+xcreate+(xcreate2-boxWidth)+xBuffer,13+ycreate+yBuffer-4,name,c_purple,c_purple,c_purple,c_purple,1);	
		draw_sprite(spr_portrait,1,xcreate+(xcreate2-boxWidth),ycreate);
	}
	
else if (name == "HP Upgrade") 
	{
		draw_sprite(spr_box,4,xcreate+(xcreate2-boxWidth),ycreate);
		draw_text_colour(74+xcreate+(xcreate2-boxWidth)+xBuffer,13+ycreate+yBuffer-4,name,c_red,c_red,c_red,c_red,1);	
		draw_sprite(spr_portrait,9,xcreate+(xcreate2-boxWidth),ycreate);

	}
else if ((name == "Lunar Orb") || (name == "Lunar Upgrade") || (name == "-Lunar Shrine-")) 
	{
		draw_sprite(spr_box,3,xcreate+(xcreate2-boxWidth),ycreate);
		draw_text_colour(74+xcreate+(xcreate2-boxWidth)+xBuffer,13+ycreate+yBuffer-4,name,c_gray,c_gray,c_gray,c_gray,1);	
		if (name == "Lunar Orb")
			{draw_sprite(spr_portrait,2,xcreate+(xcreate2-boxWidth),ycreate);}
		if (name == "Lunar Upgrade") 
			{draw_sprite(spr_portrait,4,xcreate+(xcreate2-boxWidth),ycreate);}
		if (name == "-Lunar Shrine-")
			{draw_sprite(spr_portrait,6,xcreate+(xcreate2-boxWidth),ycreate);}
	}

else if ((name == "Solar Orb") || (name == "Solar Upgrade") || (name == "-Solar Shrine-"))
	{
		draw_sprite(spr_box,2,xcreate+(xcreate2-boxWidth),ycreate);
		draw_text_colour(74+xcreate+(xcreate2-boxWidth)+xBuffer,13+ycreate+yBuffer-4,name,c_yellow,c_yellow,c_yellow,c_yellow,1);	
		if (name == "Solar Orb") 
			{draw_sprite(spr_portrait,3,xcreate+(xcreate2-boxWidth),ycreate);}
		if (name == "Solar Upgrade")
			{draw_sprite(spr_portrait,5,xcreate+(xcreate2-boxWidth),ycreate);}
		if (name == "-Solar Shrine-")
			{draw_sprite(spr_portrait,7,xcreate+(xcreate2-boxWidth),ycreate);}
	}
else if (name == "TestNPC")
	{
		draw_sprite(spr_box,0,xcreate+(xcreate2-boxWidth),ycreate);
		draw_text_colour(74+xcreate+(xcreate2-boxWidth)+xBuffer,13+ycreate+yBuffer-4,name,c_white,c_white,c_white,c_white,1);
		draw_sprite(spr_portrait,8,xcreate+(xcreate2-boxWidth),ycreate);
	}
else if (name == "Tome")
	{
		draw_sprite(spr_box,5,xcreate+(xcreate2-boxWidth),ycreate);
		draw_text_colour(74+xcreate+(xcreate2-boxWidth)+xBuffer,13+ycreate+yBuffer-4,name,c_white,c_white,c_white,c_white,1);
		draw_sprite(spr_portrait,10,xcreate+(xcreate2-boxWidth),ycreate);
	}
else if (name == "Dungeon Key")
	{
		draw_sprite(spr_box,0,xcreate+(xcreate2-boxWidth),ycreate);
		draw_text_colour(74+xcreate+(xcreate2-boxWidth)+xBuffer,13+ycreate+yBuffer-4,name,c_white,c_white,c_white,c_white,1);
		draw_sprite(spr_portrait,11,xcreate+(xcreate2-boxWidth),ycreate);
	}
else if (name == "Big Key")
	{
		draw_sprite(spr_box,0,xcreate+(xcreate2-boxWidth),ycreate);
		draw_text_colour(74+xcreate+(xcreate2-boxWidth)+xBuffer,13+ycreate+yBuffer-4,name,c_white,c_white,c_white,c_white,1);
		draw_sprite(spr_portrait,12,xcreate+(xcreate2-boxWidth),ycreate);
	}
	
///////////////////////
	
else 
	{
		draw_sprite(spr_box,0,xcreate+(xcreate2-boxWidth),ycreate);
		draw_text_colour(74+xcreate+(xcreate2-boxWidth)+xBuffer,13+ycreate+yBuffer-4,name,c_white,c_white,c_white,c_white,1);
		draw_sprite(spr_portrait,0,xcreate+(xcreate2-boxWidth),ycreate);
	}