/// @description Insert description here
// You can write your code in this editor
draw_self();

if (haveDrawn == false)
{
	haveDrawn = true;
	//instance_create_layer(x,y,"ObjOverPlayer",obj_fogSmoke);
	alarm[1] = random_range(3,10);
}