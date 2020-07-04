/// @description Insert description here
// You can write your code in this editor
	var r = scr_collision_line_point(x, y, destX, destY, obj_wall, true, true);
	draw_circle(destX,destY,5,true);
	draw_circle(r[1],r[2],5,true);

//draw_text(100,100,string(furthestX));

w = sprite_get_width(spr_hookChain);
xx = -lengthdir_x(w, ropeAngle);
yy = -lengthdir_y(w, ropeAngle);
if (contract == false)
{count = ropeLength/w;}



if ((contract == false) && (connected == false))
{
	for(var i=1; i<count; i++)
	{
	    draw_sprite_ext(spr_hookChain, 0, obj_Player.x + xx * i, obj_Player.y + yy * i, 1, 1, ropeAngle+90, c_yellow, 1);
		draw_sprite_ext(spr_hookEnd, 0, obj_Player.x + xx * count, obj_Player.y + yy * count, 1, 1, ropeAngle+90, c_yellow, 1);
	}
}
if ((contract == true) && (connected == false))
{
	for(var i=1; i<count; i++)
	{
	    draw_sprite_ext(spr_hookChain, 0, obj_Player.x + xx * i, obj_Player.y + yy * i, 1, 1, ropeAngle+90, c_red, 1);
		draw_sprite_ext(spr_hookEnd, 0, obj_Player.x + xx * count, obj_Player.y + yy * count, 1, 1, ropeAngle+90, c_red, 1);
	}
}

if ((contract == false) && (connected == true))
{

	count = ropeMaxLength/w;
	for(var i=1; i<count; i++)
	{
	    draw_sprite_ext(spr_hookChain, 0, obj_Player.x+ xx * i, obj_Player.y + yy * i, 1, 1, ropeAngle+90, c_green, 1);
		draw_sprite_ext(spr_hookEnd, 0, obj_Player.x + xx * count, obj_Player.y + yy * count, 1, 1, ropeAngle+90, c_green, 1);
	}
}

//draw_self();