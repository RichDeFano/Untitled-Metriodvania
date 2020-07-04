/// @description Insert description here
// You can write your code in this editor
if (obj_Player.state != pState.swing)
{
	instance_destroy();
}
x = obj_Player.x;
y = obj_Player.y;



if (place_meeting(x,y+8,obj_wall))
	{
		in = true;
		//instance_create_layer(x,y,"Text", obj_test);
	}
