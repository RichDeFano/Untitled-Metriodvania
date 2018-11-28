/// @description Insert description here
// You can write your code in this editor

var xcreate, ycreate, xcreate2, ycreate2,sizeOfText,boxW,boxH;
xcreate = camera_get_view_x(view_camera[0]);
ycreate = camera_get_view_y(view_camera[0]);
xcreate2 = camera_get_view_width(view_camera[0]);
ycreate2 = camera_get_view_height(view_camera[0]);
boxW = (sprite_get_width(spr_cursorText));
boxH = (sprite_get_height(spr_cursorText));

//draw_text(xcreate,ycreate,"Xcreate,YCreate");
//draw_text(xcreate+50,ycreate+50,xcreate2);
//draw_text(xcreate+100,ycreate+50,ycreate2);
////draw textbox
//////////////////////////////////////////////////////////////////
scr_drawPortrait();
////////////////////////////////////////////////////////////////////
///draw text
draw_set_font(global.Font);
//text = "aasdfasdf qweprsdfgbsd fbgsdfgas dfgaserqwa er";

//var portnumb;
//portnumb = scr_drawPortrait();
//draw_sprite(spr_portrait,portnumb,spr_box.x,spr.box.y)

if (charCount < string_length(text[page]))
{charCount += 1;}

sizeOfText = (array_length_1d(text) - 1)
///////////////////////////////////////////////////////////////////////////////////////////////////////////
if (page == sizeOfText)
{
	if (text[sizeOfText] == "//ChooseAbilityMoon")
	{
		charCount = string_length(text[page]);
		text[sizeOfText] = "Choose an ability to augment: Armor, Sword, or Movement.";
		instance_create_layer(xcreate+xcreate2-boxW,ycreate+boxHeight,"Text",obj_moonShrineTextChoice);
		alarm[1] = 55;
	}
}

if (page == sizeOfText)
{
	if (text[sizeOfText] == "//ChooseAbilitySun")
	{
		charCount = string_length(text[page]);
		text[sizeOfText] = "Choose an ability to augment: Armor, Sword, or Movement.";
		instance_create_layer(xcreate+xcreate2-boxW,ycreate+boxHeight,"Text",obj_sunShrineTextChoice);
		alarm[1] = 55;
	}
}



//////////////////////////////////////////////////////////////////////////////////////////////////////////////////
textPart = string_copy(text[page],1,charCount);
//draw_text(xcreate+(boxWidth/8),ycreate+yBuffer,name);
//draw_text_ext(xcreate+xBuffer,ycreate+stringHeight+yBuffer,textPart,stringHeight,boxWidth- (2*xBuffer));
////////////////////////draw_set_halign(fa_center/fa_left/fa_right)
//draw_text_colour(xcreate+(xcreate2-boxWidth)+(boxWidth/8)+3,ycreate+yBuffer-4,name,c_blue,c_blue,c_blue,c_blue,1);
draw_text_colour(xcreate+(xcreate2-boxWidth)+xBuffer,ycreate+yBuffer-4,name,c_yellow,c_yellow,c_yellow,c_yellow,1);
draw_text_ext(xcreate+(xcreate2-boxWidth)+xBuffer,ycreate+stringHeight+yBuffer,textPart,stringHeight,boxWidth- (2*xBuffer));


/*
if (name == "Upgrade")
	{draw_sprite(spr_textHeads,0,xcreate+(xcreate2-boxWidth)+6,ycreate+6);}
if (name == "TestNPC")
	{draw_sprite(spr_textHeads,1,xcreate+(xcreate2-boxWidth)+6,ycreate+6);}
	
	
draw_sprite(spr_portrait,portnumb,spr_box.x,spr.box.y)
