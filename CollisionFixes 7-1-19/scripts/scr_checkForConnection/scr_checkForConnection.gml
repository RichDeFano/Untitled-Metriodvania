
var furthestX,furthestY;
	furthestX = obj_Player.x + (ropeLengthComplete)*cos(ropeAngle);
	furthestY = obj_Player.y + (ropeLengthComplete)*sin(ropeAngle);
	var r = scr_collision_line_point(x, y, furthestX, furthestY, obj_wall, true, true);
	draw_line(x, y, r[1], r[2]);
	
	
	hook = instance_create_layer(x,y,"ObjOverPlayer",obj_hookshot);
	if (r[0] != noone) {
		var hitBlock = r[0];
		hitBlock.image_blend = c_purple;
		hook.failedconnection = false;}
	else {hook.failedconnection = true;}
		hook.ropeMaxLength = ropeLengthComplete;
		hook.ropeAngle = ropeAngle;
		hook.failedconnection = false;
		hook.destX = r[1];
		hook.destY = r[2];