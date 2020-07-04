/// @description Insert description here
// You can write your code in this editor
var inDung = scr_inDungeon();
if (inDung == 1) //Gemstone Cavern
	{
		if (keyNumb == 1) && (global.moonDungeon1Keys[keyNumb-1] == 0)
		{
			global.moonDungeon1Keys[keyNumb-1] = true;
			scr_collectUpgrade();
		}
		
		if (keyNumb == 2) && (global.moonDungeon1Keys[keyNumb-1] == 0)
		{
			global.moonDungeon1Keys[keyNumb-1] = true;
			scr_collectUpgrade();
		}
	}
	
