/// @description Insert description here
// You can write your code in this editor
if ((alph > 0))
{
var q = -1;
for (var i = y+128; i > 0; i=i-64)
{
	q++;
draw_sprite_ext(spr_warp2,0,x,y+(q)*(-64),1,1,0,-1,alph);
}
}