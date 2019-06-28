/// @description Insert description here
// You can write your code in this editor
var inDung = scr_inDungeon();
var keyAmt = scr_getKeyAmount();
///////Checking If Already Opened
if (inDung == 1) //Gemstone Cavern
	{
	if (global.moonDungeon1BossDoor > 0)
			{
				instance_destroy();
			}
	}
	
////Checking if player touches with key
if (distance_to_object(obj_Player) < 5)
{
	if (inDung == 1) //Gemstone Cavern
		{
			//Door 1
			if (global.moonDungeon1BossDoor == 0)
			{
				if (global.moonDungeon1BossKey == 1)
				{
				global.moonDungeon1BossDoor = 2;
				global.moonDungeon1BossKey = 2;
				instance_destroy();
				}
			}
		}
}