/// @description Insert description here
// You can write your code in this editor
var inDung = scr_inDungeon();
if (inDung == 1) //Gemstone Cavern
	{
		if (global.moonDungeon1BossKey == 0)
		{
			global.moonDungeon1BossKey = 1;
			scr_collectUpgrade();
		}
		
	}
	
