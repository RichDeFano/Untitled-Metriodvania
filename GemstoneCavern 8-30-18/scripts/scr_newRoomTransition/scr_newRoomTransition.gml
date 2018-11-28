
/***
* scr_newRoomTransition was implimented into a 2D, open world game to control moving from one room to another.
* the goal was to have seamless transition that does not stop gameplay. If one were to be falling through the
* air and meet the leftmost room border, the player would be warped to the new room marked with a grid number,
* and "start" at the rightmost border with the same fall speed, velocity, etc. It creates a seamless map, while
* separating the map into small portions to not overload the CPU.
***/
var splitBy = "_";
var slot = 0;
var splits;
var str2 = ""; 
var msg2 = room_get_name(room);
var splitBy2 = "_"; 
var slot2 = 0;
var splits2; 
var str22 = "";
var i, i2,newRoomX,newRoomY,oldRoomX,oldRoomY,roomMultiX,roomMultiY,xStart,yStart;


if ((x < 0) || (y < 0) || (x > room_width) || (y > room_height))
{
if ((global.teleporting == false) && ((x != 99999) && (y != 99999)))
{

var instnear,tempX,tempY,tempRoomGoto;
instnear = instance_nearest(obj_Player.x,obj_Player.y,obj_roomTransition);

tempRoomGoto = instnear.myroomGoto;
var msg = room_get_name(tempRoomGoto);
//
for (i = 1; i < (string_length(msg)+1); i++) {
    var currStr = string_copy(msg, i, 1);
    if (currStr == splitBy) {
        splits[slot] = str2;
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
        splits2[slot2] = str22; 
        slot2++;
        str22 = "";
    } else {
        str22 = str22 + currStr2;
        splits2[slot2] = str22;
    }
}

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


//
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

}

}

