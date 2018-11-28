/// @description Insert description here
// You can write your code in this editor
/*
var msg2 = room_get_name(room);
var splitBy2 = "_"; //string to split the first string by
var slot2 = 0;
var splits2; //array to hold all splits
var str22 = ""; //var to hold the current split we're working on building
var i2,roomX,roomY;

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

RoomX = splits2[1];
RoomY = splits2[2];


global.mapHeight[RoomY,RoomX] = room_height;
global.mapWidth[RoomY,RoomX] = room_width;