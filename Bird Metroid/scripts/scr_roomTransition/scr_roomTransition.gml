
//instance_deactivate_object(con_displayManager);
var instnear,tempX,tempY,tempZone,tempRoomGoto;
instnear = instance_nearest(obj_Player.x,obj_Player.y,obj_roomTransition);
tempZone = instnear.myZone;
tempRoomGoto = instnear.myroomGoto;
tempX = instnear.gotoX;
tempY = instnear.gotoY;
//
	room_goto(tempRoomGoto);
	obj_Player.x = tempX;
	obj_Player.y = tempY;

/*
if (obj_Player.x < 0) //Going Left
	{
	room_goto(tempRoomGoto);
	obj_Player.x = tempX;
	obj_Player.y = tempY;
	instance_activate_object(con_displayManager);
	}
else if (obj_Player.x > room_width) //Going Right
	{
	room_goto(tempRoomGoto);
	obj_Player.x = tempX;
	obj_Player.y = tempY;
	instance_activate_object(con_displayManager);
	}
else if (obj_Player.y < 0) //Going Up
	{
	room_goto(tempRoomGoto);
	obj_Player.x = tempX;
	obj_Player.y = tempY;
	instance_activate_object(con_displayManager);
	}
else if (obj_Player.y > room_height) //Going Down
	{
	room_goto(tempRoomGoto);
	obj_Player.x = tempX;
	obj_Player.y = tempY;
	instance_activate_object(con_displayManager);
