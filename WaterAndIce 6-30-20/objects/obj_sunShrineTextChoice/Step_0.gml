/// @description Insert description here
// You can write your code in this editor
event_inherited();
var temp;


if ((obj_Player.key_attack) && (obj_TextBox.canChoose == true))
{

if (option[i] = "Movement")
{
	if ((global.dodgeDarkUnlocked == false) && (global.dodgeLightUnlocked == false))
	{
		
		temp = instance_create_layer(obj_Player.x-45,obj_Player.y-45,"ObjUnderPlayer",obj_Upgrade);
		temp.upgradenumber = 101;
		global.moonOrbsGained -= 1;
		//instance_destroy(obj_TextBox,true);
		instance_destroy();

	}
}

else if (option[i] = "Armor")
{
	if ((global.armorDarkUnlocked == false) && (global.armorLightUnlocked == false))
	{
		temp = instance_create_layer(obj_Player.x-45,obj_Player.y-45,"ObjUnderPlayer",obj_Upgrade);
		temp.upgradenumber = 102;
		global.moonOrbsGained -= 1;
		//instance_destroy(obj_TextBox,true);
		instance_destroy();
	}
}


else if (option[i] = "Weapon")
{
	if ((global.swordDarkUnlocked == false) && (global.swordLightUnlocked == false))
	{
		temp = instance_create_layer(obj_Player.x-45,obj_Player.y-45,"ObjUnderPlayer",obj_Upgrade);
		temp.upgradenumber = 103;
		global.moonOrbsGained -= 1;
		//instance_destroy(obj_TextBox,true);
		instance_destroy();
	}
}



}