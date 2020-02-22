/// @description Insert description here
// You can write your code in this editor
if (global.pause == false)
{
v_w = global.view_w
v_h = global.view_h



if (global.roomdark == true)
{
if(!surface_exists(global.light))
{ 
	global.light = surface_create(v_w,v_h);}

surface_set_target(global.light);
draw_set_color(c_ltgray);
draw_rectangle(-10,-10,global.view_w+10,global.view_h+10,false)
surface_reset_target();
}

}