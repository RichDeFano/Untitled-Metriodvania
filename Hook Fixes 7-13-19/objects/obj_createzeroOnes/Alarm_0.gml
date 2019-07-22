/// @description Insert description here
// You can write your code in this editor
temp1 = instance_create_layer(x,y+16,"ObjUnderPlayer",obj_zeroOne);
temp1.index = 0;
temp1.setting = 0; //0 is under, 1 is mid, 2 is upper.

temp2 = instance_create_layer(x,y+16,"Player",obj_zeroOne);
temp2.index = 0;
temp2.setting = 1; //0 is under, 1 is mid, 2 is upper.

temp3 = instance_create_layer(x,y+16,"ObjOverPlayer",obj_zeroOne);
temp3.index = 0;
temp3.setting = 2; //0 is under, 1 is mid, 2 is upper.
alarm[0] = random_range(7,20);
alarm[1] = random_range(7,20);