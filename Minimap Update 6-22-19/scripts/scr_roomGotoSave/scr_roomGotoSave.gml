

var newRoomX = global.lastRoomInX;
var newRoomY = global.lastRoomInY;
var newZone = global.zone;

var newRoomString = string(global.zone) + "_" + string(global.lastRoomInX) + "_" + string(global.lastRoomInY);




room_goto(asset_get_index(newRoomString));
instance_create_layer(10000,10000,"Player",obj_Player);

/*
		var tempRoomFade;
		tempRoomFade = instance_create_layer(x,y,"Text",con_roomTransition);
		tempRoomFade.tempTarget = asset_get_index(newRoomString);	
		tempRoomFade.tempX = 200;
		tempRoomFade.tempY = 200;
		tempRoomFade.tempRoomY = newRoomY;
		tempRoomFade.tempRoomX = newRoomX;
	}
	*/