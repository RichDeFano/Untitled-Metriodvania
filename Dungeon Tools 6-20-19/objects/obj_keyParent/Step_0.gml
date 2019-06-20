/// @description Insert description here
// You can write your code in this editor
if (global.inText == false)
{
	var inDung = scr_inDungeon();
	
	if (inDung == 1) //Gemstone Cavern
	{
		if (keyNumb == 1) && (global.moonDungeon1Keys[keyNumb-1] > 0)
			{instance_destroy();}
		if (keyNumb == 2) && (global.moonDungeon1Keys[keyNumb-1] > 0)
			{instance_destroy();}
	}

}