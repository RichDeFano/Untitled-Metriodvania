var splitBy = "_"; //string to split the first string by
var slot = 0;
var splits; //array to hold all splits
var str2 = ""; //var to hold the current split we're working on building
var msg2 = room_get_name(room);
var splitBy2 = "_"; //string to split the first string by
var slot2 = 0;
var splits2; //array to hold all splits
var str22 = ""; //var to hold the current split we're working on building
var i, i2,newRoomX,newRoomY,oldRoomX,oldRoomY,roomMultiX,roomMultiY,xStart,yStart,oldRoomZone,newRoomZone;
//instance_deactivate_object(con_displayManager);
var instnear,tempX,tempY,tempRoomGoto;
var noZoneChange;


if (instance_exists(obj_zoneTransition))
{
	if ((distance_to_object(obj_roomTransition)) > (distance_to_object(obj_zoneTransition)))
		{
			noZoneChange = true;
		}
	else
		{
			noZoneChange = false;
		}
}
else
{
	noZoneChange = false;
}


if ((global.teleporting == false) && ((x != 99999) && (y != 99999)))
{



if (noZoneChange == false)
{

instnear = instance_nearest(obj_Player.x,obj_Player.y,obj_roomTransition);
//tempZone = instnear.myZone;
tempRoomGoto = instnear.myroomGoto;
var msg = room_get_name(tempRoomGoto);
//
for (i = 1; i < (string_length(msg)+1); i++) {
    var currStr = string_copy(msg, i, 1);
    if (currStr == splitBy) {
        splits[slot] = str2; //add this split to the array of all splits
        slot++;
        str2 = "";
    } else {
        str2 = str2 + currStr;
        splits[slot] = str2;
    }
}
//
for (i2 = 1; i2 < (string_length(msg2)+1); i2++) {
    var currStr2 = string_copy(msg2, i2, 1);
    if (currStr2 == splitBy2) {
        splits2[slot2] = str22; //add this split to the array of all splits
        slot2++;
        str22 = "";
    } else {
        str22 = str22 + currStr2;
        splits2[slot2] = str22;
    }
}

oldRoomZone = splits[0];
newRoomZone = splits2[0];
newRoomX = splits[1];
newRoomY = splits[2];
oldRoomX = splits2[1];
oldRoomY = splits2[2];


roomMultiX = (real(oldRoomX) - real(newRoomX));
roomMultiY = (real(oldRoomY) - real(newRoomY));

xStart = (640*(roomMultiX));
yStart = (480*(roomMultiY));
if (obj_Player.x < 0) //Going Left
	{
		tempX = 99999
		tempY = (obj_Player.y + yStart);
	}
else if (obj_Player.x > room_width) //Going Right
	{
		tempX = (25);
		tempY = (obj_Player.y + yStart);
	}
else if (obj_Player.y < 0) //Going Up
	{
		tempX = (obj_Player.x + xStart);
		tempY = 99999
	}
else if (obj_Player.y > room_height) //Going Down
	{
		
		tempX = (obj_Player.x + xStart);
		tempY = (25);
	}
	if (!instance_exists(con_roomTransition))
	{
		var tempRoomFade;
		tempRoomFade = instance_create_layer(x,y,"Text",con_roomTransition);
		tempRoomFade.tempTarget = tempRoomGoto;	
		tempRoomFade.tempX = tempX;
		tempRoomFade.tempY = tempY;
		tempRoomFade.tempRoomY = newRoomY;
		tempRoomFade.tempRoomX = newRoomX;
	}
//	
}
else/////////////////////////////////////////////////////////////////////////////////////////////////////////
{

instnear = instance_nearest(obj_Player.x,obj_Player.y,obj_zoneTransition);
//tempZone = instnear.myZone;
tempRoomGoto = instnear.myroomGoto;
roomMultiX = instnear.myroomMultiX;
roomMultiY = instnear.myroomMultiY;
//var msg = room_get_name(tempRoomGoto);
//

///////////////////////////////////////
xStart = (640*(roomMultiX));
yStart = (480*(roomMultiY));
if (obj_Player.x < 0) //Going Left
	{
		tempX = 99999
		tempY = (obj_Player.y + yStart);
	}
else if (obj_Player.x > room_width) //Going Right
	{
		tempX = (25);
		tempY = (obj_Player.y + yStart);
	}
else if (obj_Player.y < 0) //Going Up
	{
		tempX = (obj_Player.x + xStart);
		tempY = 99999
	}
else if (obj_Player.y > room_height) //Going Down
	{	
		tempX = (obj_Player.x + xStart);
		tempY = (25);
	}

if (!instance_exists(con_roomTransition))
	{
		var tempRoomFade;
		tempRoomFade = instance_create_layer(x,y,"Text",con_zoneTransition);
		tempRoomFade.tempTargetG = tempRoomGoto;	
		tempRoomFade.tempXG = tempX;
		tempRoomFade.tempYG = tempY;
	}

}
}





