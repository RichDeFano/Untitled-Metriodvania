/// @description Insert description here
// You can write your code in this editor
var inDung = scr_inDungeon();
var keyAmt = scr_getKeyAmount();
///////Checking If Already Opened
if (inDung == 1) //Gemstone Cavern
	{
	if (doorNumb == 1) && (global.moonDungeon1Doors[doorNumb-1] == true)
			{
				instance_destroy();
			}
	if (doorNumb == 2) && (global.moonDungeon1Doors[doorNumb-1] == true)
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
			if (doorNumb == 1) && (global.moonDungeon1Doors[doorNumb-1] == false)
			{
				if (keyAmt > 0)
				{
					for (var q = 0; q < global.moonD1KTotal; q++)
					{
						if (global.moonDungeon1Keys[q] == 1)
						{
							global.moonDungeon1Keys[q] = 2;
							q = 5;
						}
					}
				global.moonDungeon1Doors[doorNumb-1] = true;
				instance_destroy();
				}
			}
			//Door 2
			if (doorNumb == 2) && (global.moonDungeon1Doors[doorNumb-1] == false)
			{
				if (keyAmt > 0)
				{
					for (var q = 0; q < global.moonD1KTotal; q++)
					{
						if (global.moonDungeon1Keys[q] == 1)
						{
							global.moonDungeon1Keys[q] = 2;
							q = 5;
						}
					}
				global.moonDungeon1Doors[doorNumb-1] = true;
				instance_destroy();
				}
			}
		}
}