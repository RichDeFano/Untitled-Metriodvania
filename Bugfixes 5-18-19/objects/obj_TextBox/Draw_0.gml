scr_drawPortrait();



/// @description Insert description here
// You can write your code in this editor
var xcreate, ycreate, xcreate2, ycreate2,sizeOfText;
xcreate = camera_get_view_x(view_camera[0]);
ycreate = camera_get_view_y(view_camera[0]);
xcreate2 = camera_get_view_width(view_camera[0]);
ycreate2 = camera_get_view_height(view_camera[0]);

//draw_text(xcreate,ycreate,"Xcreate,YCreate");
//draw_text(xcreate+50,ycreate+50,xcreate2);
//draw_text(xcreate+100,ycreate+50,ycreate2);
////draw textbox

///draw text
draw_set_font(global.Font);
scr_drawPortrait();
//text = "aasdfasdf qweprsdfgbsd fbgsdfgas dfgaserqwa er";
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
		instance_create_layer(xcreate+xcreate2-boxWidth,ycreate+boxHeight,"Text",obj_moonShrineTextChoice);
		alarm[1] = 55;
	}
}

if (page == sizeOfText)
{
	if (text[sizeOfText] == "//ChooseAbilitySun")
	{
		charCount = string_length(text[page]);
		text[sizeOfText] = "Choose an ability to augment: Armor, Sword, or Movement.";
		instance_create_layer(xcreate+xcreate2-boxWidth,ycreate+boxHeight,"Text",obj_sunShrineTextChoice);
		alarm[1] = 55;
	}
}

if (page == sizeOfText)
{
	if (text[sizeOfText] == "//ChooseAbilityBoth")
	{
		charCount = string_length(text[page]);
		text[sizeOfText] = "Memories and experience flow into you.. will you accept them?";
		instance_create_layer(xcreate+xcreate2-boxWidth,ycreate+boxHeight,"Text",obj_bothShrineTextChoice);
		alarm[1] = 55;
	}
}





textPart = string_copy(text[page],1,charCount);
//draw_text(xcreate+(boxWidth/8),ycreate+yBuffer,name);
//draw_text_ext(xcreate+xBuffer,ycreate+stringHeight+yBuffer,textPart,stringHeight,boxWidth- (2*xBuffer));
////////////////////////draw_set_halign(fa_center/fa_left/fa_right)
draw_text_ext(38+xcreate+(xcreate2-boxWidth)+xBuffer,23+ycreate+stringHeight+yBuffer,"   " + textPart,stringHeight,boxWidth- (2*xBuffer));

