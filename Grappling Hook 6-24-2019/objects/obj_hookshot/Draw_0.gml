/// @description Insert description here
// You can write your code in this editor

countMax = ropeMaxLength/w;
destX = x + xx*countMax;
destY = y + yy*countMax;
var r = scr_collision_line_point(x, y, destX, destY, obj_wall, true, true);
draw_line(x,y,destX,destY);
if ((r[1] == destX) && (r[2] == destY))
{
	draw_circle(r[1],r[2],5,true);
}
else
{
	draw_circle_color(r[1],r[2],5,c_green,c_green,true);

}
draw_self();

w = sprite_get_width(spr_hookChain);
xx = -lengthdir_x(w, ropeAngle);
yy = -lengthdir_y(w, ropeAngle);
if (contract == false)
{count = ropeLength/w;}


if (count == countMax)
{contract = true;}

if ((contract == false) && (connected == false))
{
	for(var i=1; i<count; i++)
	{
	    draw_sprite_ext(spr_hookChain, 0, obj_Player.x + xx * i, obj_Player.y + yy * i, 1, 1, ropeAngle+90, c_blue, 1);
		draw_sprite_ext(spr_hookEnd, 0, obj_Player.x + xx * count, obj_Player.y + yy * count, 1, 1, ropeAngle+90, c_blue, 1);
	}
}
else if ((contract == true) && (connected == false))
{
	for(var i=1; i<count; i++)
	{
	    draw_sprite_ext(spr_hookChain, 0, obj_Player.x + xx * i, obj_Player.y + yy * i, 1, 1, ropeAngle+90, c_red, 1);
		draw_sprite_ext(spr_hookEnd, 0, obj_Player.x + xx * count, obj_Player.y + yy * count, 1, 1, ropeAngle+90, c_red, 1);
	}
}

else if ((contract == false) && (connected == true))
{
count = ropeLength/w;
	for(var i=1; i<count; i++)
	{
	    draw_sprite_ext(spr_hookChain, 0, obj_Player.x+ xx * i, obj_Player.y + yy * i, 1, 1, ropeAngle+90, c_green, 1);
		draw_sprite_ext(spr_hookEnd, 0, obj_Player.x + xx * count, obj_Player.y + yy * count, 1, 1, ropeAngle+90, c_green, 1);
	}
}

else
{
	for(var i=1; i<count; i++)
	{
	    draw_sprite_ext(spr_hookChain, 0, obj_Player.x+ xx * i, obj_Player.y + yy * i, 1, 1, ropeAngle+90, c_purple, 1);
		draw_sprite_ext(spr_hookEnd, 0, obj_Player.x + xx * count, obj_Player.y + yy * count, 1, 1, ropeAngle+90, c_purple, 1);
	}
}
	

//draw_self();