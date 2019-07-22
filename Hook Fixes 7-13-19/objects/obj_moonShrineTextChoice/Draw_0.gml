/// @description Insert description here
// You can write your code in this editor
event_inherited();

draw_self();
//draw_set_font(global.Font);

if (option[i] = "Movement")
{
	if ((global.dodgeDarkUnlocked == false) && (global.dodgeLightUnlocked == false))
		{draw_text_ext(x+31,y+9,option[i],1,boxWidth);}
	else
		{draw_text_color(x+31,y+9,option[i],c_gray,c_gray,c_gray,c_gray,1);}
}

else if (option[i] = "Weapon")
{
	if ((global.swordDarkUnlocked == false) && (global.swordLightUnlocked == false))
		{draw_text_ext(x+31,y+9,option[i],1,boxWidth);}
	else
		{draw_text_color(x+31,y+9,option[i],c_gray,c_gray,c_gray,c_gray,1);}
}

else if (option[i] = "Armor")
{
	if ((global.armorDarkUnlocked == false) && (global.armorLightUnlocked == false))
		{draw_text_ext(x+31,y+9,option[i],1,boxWidth);}
	else
		{draw_text_color(x+31,y+9,option[i],c_gray,c_gray,c_gray,c_gray,1);}
}
	
