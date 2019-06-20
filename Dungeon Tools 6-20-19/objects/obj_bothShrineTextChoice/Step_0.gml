/// @description Insert description here
// You can write your code in this editor
event_inherited();
var temp;


if ((obj_Player.key_attack) && (obj_TextBox.canChoose == true))
{

if (option[i] = "Yes")
{
		temp = instance_create_layer(obj_Player.x-45,obj_Player.y-45,"ObjUnderPlayer",obj_Upgrade);
		temp.upgradenumber = 107;
		instance_destroy();
}

else if (option[i] = "No")
{
instance_destroy();
}




}