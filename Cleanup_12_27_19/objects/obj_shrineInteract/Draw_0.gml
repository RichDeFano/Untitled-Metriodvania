/// @description Insert description here
// You can write your code in this editor
var temp;

if ((global.canInteractShrine == true) && (global.atShrine == false))
{
	if (myType = "Talk")
		{temp = draw_sprite(spr_interact,0,x,y-40);}
	if (myType = "Read")
		{temp = draw_sprite(spr_interactRead,0,x,y-40);}
	if (myType = "Interact")
		{temp = draw_sprite(spr_interactRead,0,x,y-40);}
	//temp.image_speed = 0.3;
	//temp.visible = true;

}
