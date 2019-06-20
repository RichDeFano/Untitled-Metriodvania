/// @description Insert description here
// You can write your code in this editor
draw_self();

if (hit > 0)
{
	hit -= .01;
	image_blend = c_red;
}

if (hit == 0)
{image_blend = c_white;}