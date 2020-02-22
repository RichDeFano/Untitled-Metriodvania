/// @description Insert description here
// You can write your code in this editor
ropeLength = 0;
col = false;
ropeAngle = 0;
ropeMaxLength = 0;
headAtX = 0;
headAtY = 0
contract = false;
count = 0;
connected = false;
destX = 0;
destY = 0;
startingX = obj_Player.x;
startingY = obj_Player.y;
hookConnectionX = 0;
hookConnectionY = 0;
hookConnLength = 0;
w = sprite_get_width(spr_hookChain);
instance_create_layer(x,y,"Text",obj_movingHeadMask);
xx = -lengthdir_x(w, ropeAngle);
yy = -lengthdir_y(w, ropeAngle);
count = ropeLength/w;


