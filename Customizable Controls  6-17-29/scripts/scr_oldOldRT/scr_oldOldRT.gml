
if ((x < 0) || (y < 0) || (x > room_width) || (y > room_height))
{
if ((x != 99999) && (y != 99999))
{

if (global.teleporting == false)
{
//instance_deactivate_object(con_displayManager);
var instnear,tempX,tempY,tempRoomGoto;
instnear = instance_nearest(obj_Player.x,obj_Player.y,obj_roomTransition);
//tempZone = instnear.myZone;
tempRoomGoto = instnear.myroomGoto;
tempX = instnear.gotoX;
tempY = instnear.gotoY;
//
	if (!instance_exists(con_roomTransition))
	{
		var tempRoomFade;
		tempRoomFade = instance_create_layer(x,y,"Text",con_roomTransition);
		tempRoomFade.tempTarget = tempRoomGoto;	
		tempRoomFade.tempX = tempX;
		tempRoomFade.tempY = tempY;
	}

}

}
}
/*

if (global.haschangedMaps == false)
{
if (obj_Player.x < 0) //Going Left
	{
	global.gridX -= 1;
		global.haschangedMaps = true;
	}
else if (obj_Player.x > room_width) //Going Right
	{
	global.gridX += 1;
		global.haschangedMaps = true;
	}
else if (obj_Player.y < 0) //Going Up
	{
	global.gridY -= 1;
		global.haschangedMaps = true;
	}
else if (obj_Player.y > room_height) //Going Down
	{
	global.gridY +=1;
	global.haschangedMaps = true;
	}

	
}
}
}