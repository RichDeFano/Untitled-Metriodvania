/// @description Insert description here
// You can write your code in this editor
draw_self()
draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,image_angle,c_white,1)




if (thisDraw == true)
{
	if (myType = "Talk")
		{temp = draw_sprite(spr_interact,0,x,y-40);}
	if (myType = "Read")
		{temp = draw_sprite(spr_interactRead,0,x,y-40);}
	var temp;
	temp.image_speed = 0.3;
	temp.visible = true;

}
