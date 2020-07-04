/// @description Insert description here
// You can write your code in this editor
destX = 0;
destY = 0;
willconnect = false;
connected = false;
contracting = false;
ropeLength = 0;
ropeMaxLength = 0;
ropeAngle = 0;
checkConnect = false;
outsideRoom = false;
scr_InitializeCharacter();

w = sprite_get_width(spr_hookChain);
xx = -lengthdir_x(w, ropeAngle);
yy = -lengthdir_y(w, ropeAngle);
count = ropeLength/w;
r = scr_collision_line_point(x, y, destX, destY, obj_wall, true, true);
q = scr_collision_line_point(x, y, destX, destY, obj_noHookshotWall, true, true);
s = scr_collision_line_point(x, y, destX, destY, obj_icyWall, true, true);

