/// @description Insert description here
// You can write your code in this editor
xBuffer = 15;
yBuffer = 15;
text = "No Text Found.";
page = 0;
//text = "aasdfasdf qweprsdfgbsd fbgsdfgas dfgaserqwa er";
boxWidth = (sprite_get_width(spr_box));
boxHeight = (sprite_get_height(spr_box));
stringHeight = string_height(text);
global.inText = true;
charCount = 0;
name = noone;
canChoose = false;
global.inText = true;
scr_buttonMovement();
draw_set_font(global.Font);